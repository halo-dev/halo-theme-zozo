<#include "layouts/partials/head.ftl">
<@head title="标签 · ${options.blog_title}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/tags" />
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
                            <a href="${context!}/tags/${tag.slugName!}">
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
