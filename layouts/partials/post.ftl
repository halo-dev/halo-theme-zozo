<#list posts.content as post>
<div class="post animated fadeInDown">
  <div class="post_title">
    <h2><a href='${post.fullPath!}'>${post.title!}</a></h2>
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
          <a href="${tag.fullPath!}">${tag.name!}</a>
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
    <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="3">
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
