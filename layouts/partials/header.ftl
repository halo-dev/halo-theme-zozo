<div class="header animated fadeInDown">
  <div class="site_title_container">
    <div class="site_title">
      <h1>
        <a href="${options.blog_url!}">
          <span>${options.blog_title!}</span>
          <img src="/${theme.folderName}/static/images/logo.svg"/>
        </a>
      </h1>
    </div>
    <div class="description">
      <p class="sub_title">${settings.sub_title!'the site subtitle'}</p>
      <div class="my_socials">
        <#if settings.github??>
          <a href="${settings.github}" title="github" target="_blank"><i class="remixicon-github-fill"></i></a>
        </#if>
        <#if settings.twitter??>
          <a href="${settings.twitter}" title="twitter" target="_blank"><i class="remixicon-twitter-fill"></i></a>
        </#if>
        <#if settings.facebook??>
          <a href="${settings.facebook}" title="facebook" target="_blank"><i class="remixicon-facebook-fill"></i></a>
        </#if>
        <#if settings.weibo??>
          <a href="${settings.weibo}" title="weibo" target="_blank"><i class="remixicon-weibo-fill"></i></a>
        </#if>
        <#if settings.instagram??>
          <a href="${settings.instagram}" title="instagram" target="_blank"><i class="remixicon-instagram-fill"></i></a>
        </#if>
        <a href="/rss.xml" type="application/rss+xml" title="rss" target="_blank"><i class="remixicon-rss-fill"></i></a>
      </div>
    </div>
  </div>
</div>
