<#include "layouts/partials/head.ftl">
<@head title="${options.blog_title}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <div class="content">
        <#include "layouts/partials/post.ftl">
    </div>
</div>
<#include "layouts/partials/footer.ftl">
<#include "layouts/partials/js.ftl">
</body>
</html>