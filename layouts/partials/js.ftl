<script src="${theme_base!}/static/js/jquery-3.3.1.min.js"></script>
<script src="${theme_base!}/static/js/zozo.js"></script>
<script src="${theme_base!}/static/js/highlight.pack.js"></script>
<link href="${theme_base!}/static/css/fancybox.min.css" rel="stylesheet">
<script src="${theme_base!}/static/js/fancybox.min.js"></script>

<script>hljs.initHighlightingOnLoad()</script>

<#if settings.enable_mathJax!true>
<#include "mathjax.ftl">
</#if>

<@global.statistics />
