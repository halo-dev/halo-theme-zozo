<#macro comment post,type>
<#if !post.disallowComment!false>
<div class="doc_comments">
  <halo-comment id="${post.id?c}" type="${type}"/>
</div>

<script src="${theme_base!}/static/libs/vue/vue.min.js"></script>
<script src="${options.comment_internal_plugin_js!'https://unpkg.com/halo-comment@latest/dist/halo-comment.min.js'}"></script>
</#if>
</#macro>