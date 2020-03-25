<#include "layouts/partials/head.ftl">
<@head title="${blog_title!}" canonical="${blog_url!}" />
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