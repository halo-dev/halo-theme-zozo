<#include "layouts/partials/head.ftl">
<@head title="${post.title!} · ${options.blog_title}" keywords="${options.seo_keywords!},${tagWords!}" description="${post.summary!}" canonical="${ctx!}/archives/${post.url!}" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <div class="content">
        <div class="post_page">
            <div class="post animated fadeInDown">
                <div class="post_title post_detail_title">
                    <h2><a href='${ctx!}/archives/${post.url!}'>${post.title!}</a></h2>
                    <span class="date">${post.createTime?string('yyyy.MM.dd')}</span>
                </div>
                <div class="post_content markdown">${post.formatContent}</div>
                <div class="post_footer">
                    <#if tags?? && tags?size gt 0>
                    <div class="meta">
                        <div class="info">
                          <span class="field tags">
                            <i class="remixicon-stack-line"></i>
                            <#list tags as tag>
                                <a href="${ctx!}/tags/${tag.slugName!}">${tag.name!}</a>
                            </#list>
                          </span>
                        </div>
                    </div>
                    </#if>
                </div>
            </div>
            <!-- Valine 评论系统 -->
            <#include "layouts/partials/comments.ftl">
            <@comment post=post type="post" />
        </div>
    </div>
    <a id="back_to_top" href="#" class="back_to_top"><span>△</span></a>
</div>
<#include "layouts/partials/footer.ftl">
<#include "layouts/partials/js.ftl">
</body>
</html>
