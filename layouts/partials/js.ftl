<script src="${static!}/static/js/jquery-3.3.1.min.js"></script>
<script src="${static!}/static/js/zozo.js"></script>
<script src="${static!}/static/js/highlight.pack.js"></script>
<link href="${static!}/static/css/fancybox.min.css" rel="stylesheet">
<script src="${static!}/static/js/fancybox.min.js"></script>

<script>hljs.initHighlightingOnLoad()</script>

<#if settings.enable_mathJax!true>
<#include "mathjax.ftl">
</#if>

<@global.statistics />
