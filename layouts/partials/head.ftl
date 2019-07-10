<#macro head title,keywords,description,canonical>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
  <meta charset="utf-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>

  <!-- author & description & keywords  -->
  <meta name="author" content=${user.nickname!}/>
  <meta name="description" content="${description}"/>
  <meta name="keywords" content="${keywords}" />

  <!-- Permalink & RSSlink -->
  <link rel="canonical" href="${canonical}"/>

  <title>${title!}</title>

  <@global.head />

  <link rel="stylesheet" href="${static!}/static/css/animate.min.css"/>
  <link rel="stylesheet" href="${static!}/static/css/remixicon.css"/>
  <link rel="stylesheet" href="${static!}/static/css/zozo.css"/>
  <link rel="stylesheet" href="${static!}/static/css/highlight.css"/>

  <#if settings.custom_css??>
  <style>
    ${settings.custom_css!}
  </style>
  </#if>
</head>
</#macro>
