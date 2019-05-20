<#include "layouts/partials/head.ftl">
<@head title="404 Page not found · ${options.blog_title}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/404" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <div class="content">
        <div class="page_tags">
            <h1>(≥o≤)</h1>
            <h2>404 Page Not Found</h2>
            <h3><a href="${context!}">首页</a></h3>
        </div>
        <div class="pagination"></div>
    </div>
</div>
<#include "layouts/partials/footer.ftl">
<#include "layouts/partials/js.ftl">
</body>
</html>