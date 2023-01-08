<!--
Add here global page variables to use throughout your website.
-->
+++
author = "Mohammed Alshahrani"
mintoclevel = 2
prepath = "AlshahraniWebsite"
prepath     = get(ENV, "PREVIEW_FRANKLIN_PREPATH", "AlshahraniWebsite") 
website_url = get(ENV, "PREVIEW_FRANKLIN_WEBSITE_URL", "mmogib.github.io") 


# Add here files or directories that should be ignored by Franklin, otherwise
# these files might be copied and, if markdown, processed by Franklin which
# you might not want. Indicate directories by ending the name with a `/`.
# Base files such as LICENSE.md and README.md are ignored by default.
ignore = ["node_modules/"]

# RSS (the website_{title, descr, url} must be defined to get RSS)
generate_rss = false
<!-- website_title = "Dr. Mohammed Alshahrani - Teaching"
website_descr = "A hub for courses taught by Dr. Mohammed Alshahrani"
website_url   = "https://mmogib.github.io/AlshahraniTeaching.jl/" -->
+++

<!--
Add here global latex commands to use throughout your pages.
-->
\newcommand{\R}{\mathbb R}
\newcommand{\scal}[1]{\langle #1 \rangle}
