<#include "layouts/partials/head.ftl">
<@head title="标签：${tag.name} · ${blog_title!}" canonical="${tag.fullPath!}" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <div class="content">
        <div class="list_with_title">
            <div class="listing_title">标签：${tag.name}</div>
            <div class="listing">
                <#list posts.content as post>
                <div class="listing_item">
                    <div class="listing_post">
                        <a href="${post.fullPath!}">${post.title!}</a>
                        <div class="post_time"><span class="date">${post.createTime?string('yyyy-MM-dd')}</span></div>
                    </div>
                </div>
                </#list>
            </div>
        </div>
        <div class="pagination">
            <#if posts.totalPages gt 1>
                <@paginationTag method="tagPosts" page="${posts.number}" total="${posts.totalPages}" display="3" slug="${tag.slug!}">
                    <#if pagination.hasPrev>
                        <a href="${pagination.prevPageFullPath!}" class="pre">
                            返回上一页
                        </a>
                    </#if>
                    <#if pagination.hasNext>
                        <a href="${pagination.nextPageFullPath!}" class="next">
                            阅读更多文章
                        </a>
                    </#if>
                </@paginationTag>
            </#if>
        </div>
    </div>
    <a id="back_to_top" href="#" class="back_to_top"><span>△</span></a>
</div>
<#include "layouts/partials/footer.ftl">
<#include "layouts/partials/js.ftl">
</body>
</html>
