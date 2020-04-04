<script src="https://cdn.jsdelivr.net/npm/jquery@3.3.1/dist/jquery.min.js"></script>
<script src="${theme_base!}/static/js/zozo.js"></script>
<script src="https://cdn.jsdelivr.net/npm/highlight.js@9.15.6/lib/highlight.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/@fancyapps/fancybox@3.5.7/dist/jquery.fancybox.min.js"></script>

<script>hljs.initHighlightingOnLoad()</script>

<#if settings.enable_mathJax!true>
<#include "mathjax.ftl">
</#if>

<@global.statistics />
