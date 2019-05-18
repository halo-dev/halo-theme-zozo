<#list posts.content as post>
<div class="post animated fadeInDown">
  <div class="post_title">
    <h2><a href='${ctx!}/archives/${post.url!}'>${post.title!}</a></h2>
  </div>
  <#if settings.enable_summary!true>
  <div class="list">
    <div class="post_content markdown">
      <p>${post.summary!}......</p>
    </div>
  </div>
  </#if>
  <div class="post_footer">
    <div class="meta">
      <div class="info">
        <span class="field">
          <i class="remixicon-map-pin-time-line"></i>
          <span class="date">${post.createTime?string('yyyy.MM.dd')}</span>
        </span>
        <#if post.tags?? && post.tags?size gt 0>
        <span class="field tags">
          <i class="remixicon-stack-line"></i>
          <#list post.tags as tag>
          <a href="${ctx!}/tags/${tag.slugName!}">${tag.name!}</a>
          </#list>
        </span>
        </#if>
      </div>
    </div>
  </div>
</div>
</#list>

<div class="pagination">
  <#if posts.totalPages gt 1>
    <#if posts.hasPrevious()>
      <#if posts.number == 1>
        <a href="${ctx!}" class="pre">
          返回上一页
        </a>
      <#else>
        <a href="${ctx!}/page/${posts.number}" class="pre">
          返回上一页
        </a>
      </#if>
    </#if>
    <#if posts.hasNext()>
      <a href="${ctx!}/page/${posts.number+2}" class="next">
        阅读更多文章
      </a>
    </#if>
  </#if>
</div>
