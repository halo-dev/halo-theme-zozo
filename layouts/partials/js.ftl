<#include "/common/macro/common_macro.ftl">
<script src="/${theme.folderName}/static/js/jquery-3.3.1.min.js"></script>
<script src="/${theme.folderName}/static/js/zozo.js"></script>
<script src="/${theme.folderName}/static/js/highlight.pack.js"></script>
<link href="/${theme.folderName}/static/css/fancybox.min.css" rel="stylesheet">
<script src="/${theme.folderName}/static/js/fancybox.min.js"></script>

<script>hljs.initHighlightingOnLoad()</script>

<#if settings.enable_mathJax!true>
<#include "mathjax.ftl">
</#if>

<@statistics />