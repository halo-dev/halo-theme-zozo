<#include "layouts/partials/head.ftl">
<@head title="标签 · ${blog_title!}" canonical="${tags_url!}" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <div class="content">
        <div class="page_tags">
            <ul>
                <@tagTag method="list">
                    <#if tags?? && tags?size gt 0>
                        <#list tags as tag>
                        <li>
                            <a href="${tag.fullPath!}">
                                ${tag.name!} <span class="terms_count">${tag.postCount!0}</span>
                            </a>
                        </li>
                        </#list>
                    </#if>
                </@tagTag>
            </ul>
        </div>
        <div class="pagination"></div>
    </div>
    <a id="back_to_top" href="#" class="back_to_top"><span>△</span></a>
</div>
<#include "layouts/partials/footer.ftl">
<#include "layouts/partials/js.ftl">
</body>
</html>
