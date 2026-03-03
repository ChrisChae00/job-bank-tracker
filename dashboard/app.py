import streamlit as st
import pandas as pd
import plotly.express as px
import plotly.graph_objects as go
from collections import Counter
import re
from data_loader import load_jobs_data, get_data_summary

# Set page configuration
st.set_page_config(
    page_title="Canada IT Job Market Dashboard",
    page_icon="🇨🇦",
    layout="wide", # use full width of the browser
    initial_sidebar_state="expanded" # keep sidebar open
)

# ── Shared color palette ──────────────────────────────────────────────
COLOR_PALETTE = ["#667eea", "#764ba2", "#f093fb", "#4facfe", "#43e97b",
                 "#fa709a", "#fee140", "#30cfd0", "#a18cd1", "#fbc2eb"]
GRADIENT_START = "#667eea"
GRADIENT_END   = "#764ba2"

# Custom CSS for styling
st.markdown("""
    <style>
    /* KPI Card styling */
    .metric-card {
        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
        padding: 20px;
        border-radius: 10px;
        color: white;
        text-align: center;
    }
    .metric-value {
        font-size: 2.5rem;
        font-weight: bold;
    }
    .metric-label {
        font-size: 1rem;
        opacity: 0.8;
    }
    
    /* Header styling */
    .main-header {
        font-size: 2.5rem;
        font-weight: bold;
        background: linear-gradient(90deg, #667eea, #764ba2);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        margin-bottom: 0;
    }

    /* Chart section styling */
    .chart-section-title {
        font-size: 1.1rem;
        font-weight: 600;
        margin-bottom: 0.25rem;
    }
    </style>
""", unsafe_allow_html=True)

# Header section
st.markdown('<h1 class="main-header">🇨🇦 Canada IT Job Market Dashboard</h1>', unsafe_allow_html=True)
st.markdown("Real-time insights from Job Bank Canada | Built by Chris")
st.divider()

# Load data
with st.spinner("Loading job data..."):
    df = load_jobs_data()

if df.empty:
    st.error("No data available. Please check your database connection.")
    st.stop()

# Sidebar filters
st.sidebar.header("Filters")

# Province filter
provinces = ["All"] + sorted(df['province'].dropna().unique().tolist())
selected_province = st.sidebar.selectbox("Select Province", provinces)

# City filter (dynamic based on province)
if selected_province == "All":
    cities = ["All"] + sorted(df['city'].dropna().unique().tolist())
else:
    cities = ["All"] + sorted(df[df['province'] == selected_province]['city'].dropna().unique().tolist())
selected_city = st.sidebar.selectbox("Select City", cities)

# Salary range filter
salary_periods = ["All"] + df['salary_period'].dropna().unique().tolist()
selected_period = st.sidebar.selectbox("Salary Type", salary_periods)

# Apply filters
filtered_df = df.copy()
if selected_province != "All":
    filtered_df = filtered_df[filtered_df['province'] == selected_province]
if selected_city != "All":
    filtered_df = filtered_df[filtered_df['city'] == selected_city]
if selected_period != "All":
    filtered_df = filtered_df[filtered_df['salary_period'] == selected_period]


# Show filter results count
st.sidebar.divider()
st.sidebar.metric("Filtered Jobs", len(filtered_df))

# KPI cards (top row)
summary = get_data_summary(filtered_df)

col1, col2, col3, col4 = st.columns(4)

with col1:
    st.metric(
        label="Total Jobs Postings",
        value=summary['total_jobs']
    )

with col2:
    st.metric(
        label="Average Annual Salary",
        value=f"${summary['avg_salary']:,.0f}" if summary['avg_salary'] > 0 else "N/A"
    )

with col3:
    st.metric(
        label="Top City",
        value=summary['top_city']
    )

with col4:
    st.metric(
        label="Latest Posting Date",
        value=str(summary['latest_date'])[:10] if summary['latest_date'] else "N/A"
    )

st.divider()

# ══════════════════════════════════════════════════════════════════════
#  Interactive Charts Section
# ══════════════════════════════════════════════════════════════════════
st.subheader("Analytics")

tab_location, tab_salary, tab_trend, tab_keywords = st.tabs(
    ["📍 Jobs by Location", "💰 Salary Analysis", "📈 Posting Trend", "Title Keywords"]
)

# ── shared Plotly layout defaults ─────────────────────────────────────
_layout_defaults = dict(
    plot_bgcolor="rgba(0,0,0,0)",
    paper_bgcolor="rgba(0,0,0,0)",
    font=dict(family="Inter, sans-serif"),
    margin=dict(l=40, r=20, t=40, b=40),
    hoverlabel=dict(bgcolor="#667eea", font_size=13, font_color="white"),
)

# ── TAB 1 : Jobs by Location ─────────────────────────────────────────
with tab_location:
    loc_col1, loc_col2 = st.columns([1, 3])

    with loc_col1:
        group_by = st.radio(
            "Group by",
            ["Province", "City"],
            horizontal=True,
            key="loc_group",
        )
        _loc_unique = max(4, len(filtered_df[group_by.lower()].dropna().unique()))
        top_n_loc = st.slider(
            "Show top N",
            min_value=3,
            max_value=min(20, _loc_unique),
            value=min(10, _loc_unique),
            key="loc_topn",
        )
        sort_order = st.radio(
            "Sort",
            ["Descending", "Ascending"],
            horizontal=True,
            key="loc_sort",
        )

    with loc_col2:
        col_name = group_by.lower()
        loc_counts = (
            filtered_df[col_name]
            .dropna()
            .value_counts()
            .head(top_n_loc)
            .sort_values(ascending=(sort_order == "Ascending"))
        )

        fig_loc = px.bar(
            x=loc_counts.values,
            y=loc_counts.index,
            orientation="h",
            labels={"x": "Number of Jobs", "y": group_by},
            color=loc_counts.values,
            color_continuous_scale=[[0, GRADIENT_START], [1, GRADIENT_END]],
        )
        fig_loc.update_layout(
            **_layout_defaults,
            showlegend=False,
            coloraxis_showscale=False,
            yaxis=dict(autorange="reversed" if sort_order == "Descending" else True),
            height=max(350, top_n_loc * 32),
        )
        fig_loc.update_traces(
            hovertemplate="<b>%{y}</b><br>Jobs: %{x}<extra></extra>"
        )
        st.plotly_chart(fig_loc, width='stretch')

# ── TAB 2 : Salary Analysis ──────────────────────────────────────────
with tab_salary:
    sal_col1, sal_col2 = st.columns([1, 3])

    with sal_col1:
        chart_type = st.radio(
            "Chart type",
            ["Box Plot", "Bar Chart"],
            horizontal=True,
            key="sal_chart",
        )
        salary_group = st.radio(
            "Group by",
            ["Province", "City"],
            horizontal=True,
            key="sal_group",
        )
        salary_metric = st.radio(
            "Salary metric",
            ["Average (Min+Max)/2", "Min Salary", "Max Salary"],
            key="sal_metric",
        )
        _sal_unique = max(4, len(filtered_df[salary_group.lower()].dropna().unique()))
        top_n_sal = st.slider(
            "Show top N groups",
            min_value=3,
            max_value=min(15, _sal_unique),
            value=min(8, _sal_unique),
            key="sal_topn",
        )

    with sal_col2:
        sal_df = filtered_df.dropna(subset=["min_salary", "max_salary"]).copy()
        sal_df["avg_salary"] = (sal_df["min_salary"] + sal_df["max_salary"]) / 2
        sal_col_name = salary_group.lower()

        # pick only top N groups by job count so chart stays readable
        top_groups = sal_df[sal_col_name].value_counts().head(top_n_sal).index.tolist()
        sal_df = sal_df[sal_df[sal_col_name].isin(top_groups)]

        if sal_df.empty:
            st.info("No salary data available for the current filters.")
        else:
            if chart_type == "Box Plot":
                metric_col = {
                    "Average (Min+Max)/2": "avg_salary",
                    "Min Salary": "min_salary",
                    "Max Salary": "max_salary",
                }[salary_metric]

                fig_sal = px.box(
                    sal_df,
                    x=sal_col_name,
                    y=metric_col,
                    color=sal_col_name,
                    color_discrete_sequence=COLOR_PALETTE,
                    labels={metric_col: salary_metric, sal_col_name: salary_group},
                    category_orders={sal_col_name: top_groups},
                )
            else:  # Bar Chart – show mean salary per group
                metric_col = {
                    "Average (Min+Max)/2": "avg_salary",
                    "Min Salary": "min_salary",
                    "Max Salary": "max_salary",
                }[salary_metric]

                agg = (
                    sal_df.groupby(sal_col_name)[metric_col]
                    .mean()
                    .reindex(top_groups)
                    .sort_values(ascending=False)
                )
                fig_sal = px.bar(
                    x=agg.index,
                    y=agg.values,
                    labels={"x": salary_group, "y": f"Mean {salary_metric}"},
                    color=agg.values,
                    color_continuous_scale=[[0, GRADIENT_START], [1, GRADIENT_END]],
                )
                fig_sal.update_layout(coloraxis_showscale=False)
                fig_sal.update_traces(
                    hovertemplate="<b>%{x}</b><br>$%{y:,.0f}<extra></extra>"
                )

            fig_sal.update_layout(
                **_layout_defaults,
                showlegend=False,
                height=420,
            )
            st.plotly_chart(fig_sal, width='stretch')

# ── TAB 3 : Posting Trend ────────────────────────────────────────────
with tab_trend:
    trend_col1, trend_col2 = st.columns([1, 3])

    with trend_col1:
        granularity = st.radio(
            "Granularity",
            ["Daily", "Weekly", "Monthly"],
            horizontal=True,
            key="trend_gran",
        )
        show_cumulative = st.checkbox("Show cumulative line", key="trend_cum")

    with trend_col2:
        trend_df = filtered_df.dropna(subset=["date_posted"]).copy()
        trend_df["date_posted"] = pd.to_datetime(trend_df["date_posted"], errors="coerce")
        trend_df = trend_df.dropna(subset=["date_posted"])

        if trend_df.empty:
            st.info("No date information available for the current filters.")
        else:
            freq_map = {"Daily": "D", "Weekly": "W", "Monthly": "ME"}
            trend_agg = (
                trend_df.set_index("date_posted")
                .resample(freq_map[granularity])
                .size()
                .reset_index(name="count")
            )

            fig_trend = go.Figure()

            # bar for each period
            fig_trend.add_trace(
                go.Bar(
                    x=trend_agg["date_posted"],
                    y=trend_agg["count"],
                    marker_color=GRADIENT_START,
                    opacity=0.7,
                    name="Jobs",
                    hovertemplate="<b>%{x|%Y-%m-%d}</b><br>Jobs: %{y}<extra></extra>",
                )
            )

            if show_cumulative:
                trend_agg["cumulative"] = trend_agg["count"].cumsum()
                fig_trend.add_trace(
                    go.Scatter(
                        x=trend_agg["date_posted"],
                        y=trend_agg["cumulative"],
                        mode="lines+markers",
                        marker=dict(size=5, color=GRADIENT_END),
                        line=dict(width=2, color=GRADIENT_END),
                        name="Cumulative",
                        yaxis="y2",
                        hovertemplate="<b>%{x|%Y-%m-%d}</b><br>Cumulative: %{y}<extra></extra>",
                    )
                )
                fig_trend.update_layout(
                    yaxis2=dict(
                        overlaying="y",
                        side="right",
                        showgrid=False,
                        title="Cumulative",
                    )
                )

            fig_trend.update_layout(
                **_layout_defaults,
                height=400,
                xaxis_title="Date",
                yaxis_title="Job Count",
                legend=dict(orientation="h", yanchor="bottom", y=1.02, xanchor="right", x=1),
            )
            st.plotly_chart(fig_trend, width='stretch')

# ── TAB 4 : Title Keywords ───────────────────────────────────────────
with tab_keywords:
    kw_col1, kw_col2 = st.columns([1, 3])

    with kw_col1:
        top_n_kw = st.slider(
            "Show top N keywords",
            min_value=5,
            max_value=30,
            value=15,
            key="kw_topn",
        )
        min_word_len = st.slider(
            "Min word length",
            min_value=2,
            max_value=6,
            value=3,
            key="kw_minlen",
            help="Filter out very short words (e.g. 'of', 'in')",
        )

    with kw_col2:
        # Simple keyword extraction from job titles
        stop_words = {
            "and", "the", "for", "with", "job", "jobs", "work",
            "from", "that", "this", "are", "not", "but", "all",
            "our", "who", "will", "can", "has", "have", "been",
            "more", "other", "their", "your", "about", "into",
        }
        titles = filtered_df["title"].dropna().str.lower()
        words = []
        for title in titles:
            tokens = re.findall(r"[a-zA-Z]+", title)
            words.extend(
                w for w in tokens if len(w) >= min_word_len and w not in stop_words
            )

        if not words:
            st.info("No title data available for the current filters.")
        else:
            word_counts = Counter(words).most_common(top_n_kw)
            kw_df = pd.DataFrame(word_counts, columns=["keyword", "count"])

            fig_kw = px.bar(
                kw_df,
                x="count",
                y="keyword",
                orientation="h",
                color="count",
                color_continuous_scale=[[0, GRADIENT_START], [1, GRADIENT_END]],
            )
            fig_kw.update_layout(
                **_layout_defaults,
                showlegend=False,
                coloraxis_showscale=False,
                yaxis=dict(autorange="reversed"),
                height=max(350, top_n_kw * 28),
            )
            fig_kw.update_traces(
                hovertemplate="<b>%{y}</b><br>Count: %{x}<extra></extra>"
            )
            st.plotly_chart(fig_kw, width='stretch')

st.divider()

# Data preview
st.subheader("Recent Job Postings")
st.dataframe(
    filtered_df[['title', 'city', 'province', 'min_salary', 'max_salary', 'salary_period', 'cleaned_at']],
    width='stretch',
    hide_index=True
)

# Footer
st.divider()
st.markdown(
    """
    <div style='text-align: center; color: gray;'>
        Data source: <a href="https://www.jobbank.gc.ca" target="_blank">Job Bank Canada</a>
    </div>
    """,
    unsafe_allow_html=True
)