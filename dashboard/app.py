import html
from datetime import date

import streamlit as st
import pandas as pd
import plotly.express as px
import plotly.graph_objects as go
from collections import Counter
import re
from data_loader import load_jobs_data, get_data_summary

# Set page configuration
st.set_page_config(
    page_title="Canada IT Labour Market Bulletin",
    page_icon="🍁",
    layout="wide", # use full width of the browser
    initial_sidebar_state="expanded" # keep sidebar open
)

# ── Shared color palette ── institutional bulletin set, not SaaS gradient ──
COLOR_PALETTE = ["#16233F", "#C22A26", "#35707A", "#9C7A3C", "#6B7280",
                 "#4A5C8A", "#8A3B34", "#5C8C82", "#B08D57", "#3E4C6D"]
GRADIENT_START = "#16233F"
GRADIENT_END   = "#35707A"

# Custom CSS for styling
st.markdown("""
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Fraunces:opsz,wght@9..144,500;9..144,600;9..144,700&family=IBM+Plex+Sans:wght@400;500;600&family=IBM+Plex+Mono:wght@400;500;600&display=swap');

    :root {
        --ink: #16233F;
        --paper: #EAE7DC;
        --paper-raised: #F6F4EC;
        --red: #C22A26;
        --steel: #35707A;
        --rule: rgba(22, 35, 63, 0.18);
        --grey: #6B7280;
    }

    html, body, [class*="css"] { font-family: 'IBM Plex Sans', sans-serif; }
    .stApp { background: var(--paper); }

    section[data-testid="stSidebar"] {
        background: var(--paper-raised);
        border-right: 1px solid var(--rule);
    }
    section[data-testid="stSidebar"] h2 {
        font-family: 'IBM Plex Mono', monospace;
        font-size: 0.85rem;
        letter-spacing: 0.1em;
        text-transform: uppercase;
        color: var(--ink);
    }

    /* Masthead */
    .masthead-row { display: flex; align-items: flex-end; gap: 1.25rem; }
    .masthead-mark {
        flex: 0 0 auto;
        background: var(--red);
        color: var(--paper-raised);
        font-family: 'IBM Plex Mono', monospace;
        font-weight: 600;
        font-size: 0.95rem;
        letter-spacing: 0.06em;
        padding: 0.55rem 0.7rem;
        transform: rotate(-2deg);
        box-shadow: 2px 2px 0 var(--ink);
    }
    .masthead-title { flex: 1 1 auto; }
    .masthead-title .eyebrow {
        font-family: 'IBM Plex Mono', monospace;
        font-size: 0.72rem;
        letter-spacing: 0.14em;
        color: var(--red);
        text-transform: uppercase;
        margin-bottom: 0.15rem;
    }
    .masthead-title h1 {
        font-family: 'Fraunces', serif;
        font-weight: 600;
        font-size: 2.6rem;
        color: var(--ink);
        margin: 0;
        line-height: 1.05;
    }
    .masthead-meta {
        flex: 0 0 auto;
        text-align: right;
        font-family: 'IBM Plex Mono', monospace;
        color: var(--grey);
    }
    .masthead-meta .meta-line { font-size: 0.68rem; letter-spacing: 0.12em; text-transform: uppercase; }
    .masthead-meta .meta-value { font-size: 1rem; color: var(--ink); font-weight: 600; }
    .masthead-rule { margin-top: 0.9rem; border-top: 3px solid var(--ink); border-bottom: 1px solid var(--ink); height: 3px; }

    /* KPI figure strip */
    .figure-strip { display: flex; margin-top: 1.4rem; }
    .figure-cell { flex: 1; padding: 0 1.25rem; border-left: 1px solid var(--rule); }
    .figure-cell:first-child { border-left: none; padding-left: 0; }
    .figure-cell .figure-label {
        font-family: 'IBM Plex Mono', monospace;
        font-size: 0.68rem;
        letter-spacing: 0.1em;
        text-transform: uppercase;
        color: var(--grey);
    }
    .figure-cell .figure-value {
        font-family: 'Fraunces', serif;
        font-weight: 600;
        font-size: 2.1rem;
        color: var(--ink);
        border-bottom: 2px solid var(--red);
        display: inline-block;
        padding-bottom: 0.1rem;
        margin-top: 0.1rem;
    }

    [data-testid="stMetricValue"] { font-family: 'Fraunces', serif; color: var(--ink); }
    [data-testid="stMetricLabel"] {
        font-family: 'IBM Plex Mono', monospace;
        text-transform: uppercase;
        letter-spacing: 0.08em;
        font-size: 0.68rem;
        color: var(--grey);
    }

    .section-eyebrow {
        font-family: 'IBM Plex Mono', monospace;
        font-size: 0.72rem;
        letter-spacing: 0.14em;
        text-transform: uppercase;
        color: var(--red);
        margin-bottom: -0.3rem;
    }
    .fig-caption {
        font-family: 'IBM Plex Mono', monospace;
        font-size: 0.72rem;
        letter-spacing: 0.08em;
        text-transform: uppercase;
        color: var(--grey);
        margin: 0.2rem 0 0.6rem 0;
    }

    button[data-baseweb="tab"] {
        font-family: 'IBM Plex Mono', monospace;
        font-size: 0.78rem;
        letter-spacing: 0.06em;
        text-transform: uppercase;
        color: var(--grey);
    }
    button[data-baseweb="tab"][aria-selected="true"] { color: var(--ink); }
    div[data-baseweb="tab-highlight"] { background-color: var(--red) !important; }
    div[data-baseweb="tab-border"] { background-color: var(--rule) !important; }

    [data-testid="stDataFrame"] { font-family: 'IBM Plex Mono', monospace; }

    .bulletin-footer {
        font-family: 'IBM Plex Mono', monospace;
        font-size: 0.75rem;
        color: var(--grey);
        text-align: center;
    }
    .bulletin-footer a { color: var(--ink); }
    </style>
""", unsafe_allow_html=True)

# Masthead
st.markdown(f"""
    <div class="masthead-row">
        <div class="masthead-mark">CA&middot;IT</div>
        <div class="masthead-title">
            <div class="eyebrow">Labour Market Bulletin &middot; Job Bank Canada</div>
            <h1>Canada IT Job Market</h1>
        </div>
        <div class="masthead-meta">
            <div class="meta-line">Issue Date</div>
            <div class="meta-value">{date.today().strftime('%B %d, %Y')}</div>
        </div>
    </div>
    <div class="masthead-rule"></div>
""", unsafe_allow_html=True)

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

st.markdown(f"""
    <div class="figure-strip">
        <div class="figure-cell">
            <div class="figure-label">Total Job Postings</div>
            <div class="figure-value">{summary['total_jobs']:,}</div>
        </div>
        <div class="figure-cell">
            <div class="figure-label">Average Annual Salary</div>
            <div class="figure-value">{f"${summary['avg_salary']:,.0f}" if summary['avg_salary'] > 0 else "N/A"}</div>
        </div>
        <div class="figure-cell">
            <div class="figure-label">Top City</div>
            <div class="figure-value">{html.escape(str(summary['top_city']))}</div>
        </div>
        <div class="figure-cell">
            <div class="figure-label">Latest Posting Date</div>
            <div class="figure-value">{str(summary['latest_date'])[:10] if summary['latest_date'] else "N/A"}</div>
        </div>
    </div>
""", unsafe_allow_html=True)

st.divider()

# ══════════════════════════════════════════════════════════════════════
#  Interactive Charts Section
# ══════════════════════════════════════════════════════════════════════
st.markdown('<p class="section-eyebrow">Analytics</p>', unsafe_allow_html=True)

tab_location, tab_salary, tab_trend, tab_keywords = st.tabs(
    ["Jobs by Location", "Salary Analysis", "Posting Trend", "Title Keywords"]
)

# ── shared Plotly layout defaults ─────────────────────────────────────
_layout_defaults = dict(
    plot_bgcolor="rgba(0,0,0,0)",
    paper_bgcolor="rgba(0,0,0,0)",
    font=dict(family="IBM Plex Mono, monospace", color="#16233F"),
    margin=dict(l=40, r=20, t=40, b=40),
    hoverlabel=dict(bgcolor="#16233F", font_size=12, font_color="#EAE7DC", font_family="IBM Plex Mono, monospace"),
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
        st.markdown('<p class="fig-caption">Fig. 1 &mdash; Job Postings by Location</p>', unsafe_allow_html=True)
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
            st.markdown('<p class="fig-caption">Fig. 2 &mdash; Salary Distribution</p>', unsafe_allow_html=True)
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
            st.markdown('<p class="fig-caption">Fig. 3 &mdash; Posting Trend Over Time</p>', unsafe_allow_html=True)
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
            st.markdown('<p class="fig-caption">Fig. 4 &mdash; Frequent Title Keywords</p>', unsafe_allow_html=True)
            st.plotly_chart(fig_kw, width='stretch')

st.divider()

# Data preview
st.markdown('<p class="fig-caption">Table 1 &mdash; Recent Job Postings</p>', unsafe_allow_html=True)
st.dataframe(
    filtered_df[['title', 'city', 'province', 'min_salary', 'max_salary', 'salary_period', 'cleaned_at']],
    width='stretch',
    hide_index=True
)

# Footer
st.divider()
st.markdown(
    """
    <div class="bulletin-footer">
        Source data &mdash; <a href="https://www.jobbank.gc.ca" target="_blank" rel="noopener">Job Bank Canada</a>. Compiled and maintained by Chris.
    </div>
    """,
    unsafe_allow_html=True
)