<#include "layouts/partials/head.ftl">
<@head title="归档 · ${options.blog_title}" keywords="${options.seo_keywords!}" description="${options.seo_description!}" canonical="${options.blog_url!}/archives" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <div class="content">
        <div class="list_with_title">
            <@postTag method="archiveYear">
                <#list archives as archive>
                    <div class="listing_title">${archive.year?c}</div>
                    <div class="listing">
                        <#list archive.posts?sort_by("createTime")?reverse as post>
                            <div class="listing_item">
                                <div class="listing_post">
                                    <a href="${options.blog_url}/archives/${post.url!}">${post.title!}</a>
                                    <div class="post_time"><span class="date">${post.createTime?string('MM-dd')}</span></div>
                                </div>
                            </div>
                        </#list>
                    </div>
                </#list>
            </@postTag>
        </div>
        <div class="pagination"></div>
    </div>
    <a id="back_to_top" href="#" class="back_to_top"><span>△</span></a>
</div>
<#include "layouts/partials/footer.ftl">
<#include "layouts/partials/js.ftl">
</body>
</html>
