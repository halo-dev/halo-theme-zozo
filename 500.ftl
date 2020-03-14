<#include "layouts/partials/head.ftl">
<@head title="500 Internal Error · ${blog_title!}" canonical="${context!}/500" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <div class="content">
        <div class="page_tags">
            <h1>(≥o≤)</h1>
            <h2>500 Internal Error</h2>
            <h3><a href="${blog_url!}">首页</a></h3>
        </div>
        <div class="pagination"></div>
    </div>
</div>
<#include "layouts/partials/footer.ftl">
<#include "layouts/partials/js.ftl">
</body>
</html>