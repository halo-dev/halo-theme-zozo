<#include "layouts/partials/head.ftl">
<@head title="分类 · ${options.blog_title}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${options.blog_url!}/categories" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <div class="content">
        <div class="page_tags">
            <ul>
                <@categoryTag method="list">
                    <#if categories?? && categories?size gt 0>
                        <#list categories as category>
                        <li>
                            <a href="${options.blog_url!}/categories/${category.slugName!}">
                                ${category.name!} <span class="terms_count">${category.postCount!0}</span>
                            </a>
                        </li>
                        </#list>
                    </#if>
                </@categoryTag>
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
