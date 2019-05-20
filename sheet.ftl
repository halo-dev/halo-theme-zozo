<#include "layouts/partials/head.ftl">
<@head title="${sheet.title!} · ${options.blog_title}" keywords="${options.seo_keywords!}" description="${sheet.summary!}" canonical="${context!}/s/${sheet.url!}" />
<body>
<div class="main animated">
    <#include "layouts/partials/nav.ftl">
    <#include "layouts/partials/header.ftl">
    <div class="content">
        <div class="post_page">
            <div class="post animated fadeInDown">
                <div class="post_title post_detail_title">
                    <h2><a href='${context!}/archives/${sheet.url!}'>${sheet.title!}</a></h2>
                    <span class="date">${sheet.createTime?string('yyyy.MM.dd')}</span>
                </div>
                <div class="post_content markdown">${sheet.formatContent}</div>
                <div class="post_footer">
                </div>
            </div>
            <!-- Valine 评论系统 -->
            <#include "layouts/partials/comments.ftl">
            <@comment post=sheet type="sheet" />
        </div>
    </div>
    <a id="back_to_top" href="#" class="back_to_top"><span>△</span></a>
</div>
<#include "layouts/partials/footer.ftl">
<#include "layouts/partials/js.ftl">
</body>
</html>
