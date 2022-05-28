<#include "layouts/partials/head.ftl">
<@head title="${post.title!} · ${blog_title!}" canonical="${post.fullPath!}" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <#include "./layouts/partials/katex/libs-import.ftl">
    <div class="content">
        <div class="post_page">
            <div class="post animated fadeInDown">
                <div class="post_title post_detail_title">
                    <h2><a href='${post.fullPath!}'>${post.title!}</a></h2>
                    <span class="date">${post.createTime?string('yyyy.MM.dd')}</span>
                </div>
                <div class="post_content markdown">${post.formatContent!}</div>
                <div class="post_footer">
                    <#if tags?? && tags?size gt 0>
                        <div class="meta">
                            <div class="info">
                          <span class="field tags">
                            <i class="ri-stack-line"></i>
                            <#list tags as tag>
                                <a href="${tag.fullPath!}">${tag.name!}</a>
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
<#include "./layouts/partials/highlightjs/libs-import.ftl" />
<#include "./layouts/partials/highlightjs/scripts.ftl" />
</body>
</html>
