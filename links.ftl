<#include "layouts/partials/head.ftl">
<@head title="友情链接 · ${options.blog_title}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${context!}/links" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <div class="content">
        <div class="list_with_title">
            <@linkTag method="listTeams">
                <#list teams as team>
                    <div class="listing_title">${team.team!}</div>
                    <div class="listing">
                        <#list team.links as link>
                            <div class="listing_item">
                                <div class="listing_post">
                                    <a href="${link.url}">${link.name!}</a>
                                    <div class="post_time"><span class="date">${link.description!}</span></div>
                                </div>
                            </div>
                        </#list>
                    </div>
                </#list>
            </@linkTag>
        </div>
        <div class="pagination"></div>
    </div>
    <a id="back_to_top" href="#" class="back_to_top"><span>△</span></a>
</div>
<#include "layouts/partials/footer.ftl">
<#include "layouts/partials/js.ftl">
</body>
</html>
