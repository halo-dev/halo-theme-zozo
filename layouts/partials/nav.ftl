<div class="nav_container animated fadeInDown">
  <div class="site_nav" id="site_nav">
    <ul>
      <@menuTag method="list">
        <#if menus?? && menus?size gt 0>
            <#list menus as menu>
              <li>
                <a href="${menu.url!}">${menu.name!}</a>
              </li>
            </#list>
        </#if>
      </@menuTag>
    </ul>
  </div>
  <div class="menu_icon">
    <a id="menu_icon"><i class="remixicon-links-line"></i></a>
  </div>
</div>
