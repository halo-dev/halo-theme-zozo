<div class="header animated fadeInDown">
  <div class="site_title_container">
    <div class="site_title">
      <h1>
        <a href="${blog_url!}">
          <span>${blog_title!}</span>
          <img src="${theme_base!}/static/images/logo.svg"/>
        </a>
      </h1>
    </div>
    <div class="description">
      <p class="sub_title">${settings.sub_title!'the site subtitle'}</p>
      <div class="my_socials">
        <#if settings.github??>
          <a href="${settings.github}" title="github" target="_blank"><i class="ri-github-fill"></i></a>
        </#if>
        <#if settings.twitter??>
          <a href="${settings.twitter}" title="twitter" target="_blank"><i class="ri-twitter-fill"></i></a>
        </#if>
        <#if settings.facebook??>
          <a href="${settings.facebook}" title="facebook" target="_blank"><i class="ri-facebook-fill"></i></a>
        </#if>
        <#if settings.weibo??>
          <a href="${settings.weibo}" title="weibo" target="_blank"><i class="ri-weibo-fill"></i></a>
        </#if>
        <#if settings.instagram??>
          <a href="${settings.instagram}" title="instagram" target="_blank"><i class="ri-instagram-fill"></i></a>
        </#if>
        <a href="/rss.xml" type="application/rss+xml" title="rss" target="_blank"><i class="ri-rss-fill"></i></a>
      </div>
    </div>
  </div>
</div>
