<#include "layout/_layout.ftl">
<#include "layout/_macro/post-collapse.ftl">
<#include "layout/_macro/sidebar.ftl">

<@html title="搜索：${keyword} | ${blog_title!}" ogtype="website" url="${blog_url!}/search"></@html>

<@main>
<div id="content" class="content">

    <div class="post-block search">
        <div id="posts" class="posts-collapse">
            <div class="collection-title">
            <<#if settings.seo!false>h2<#else>h1</#if>>
                ${keyword}
                <small>搜索词</small>
            </<#if settings.seo!false>h2<#else>h1</#if>>
            </div>
            <#if posts.content?size == 0>
            <div class="post-none">
                <h2>暂无结果</h2>
            </div>
            </#if>
            <@post_collapase posts=posts.content></@post_collapase>
        </div>
    </div>
    <#if posts.totalPages gt 1>
    <nav class="pagination">
        <@paginationTag method="search" page="${posts.number}" total="${posts.totalPages}" display="3" keyword="${keyword}">
            <#if pagination.hasPrev>
                <a class="extend prev" rel="prev" href="${pagination.prevPageFullPath!}">
                    <i class="fa fa-angle-left" aria-label="Previous page"></i>
                </a>
            </#if>
            <#list pagination.rainbowPages as number>
                <#if number.isCurrent>
                    <span class="page-number current">${number.page!}</span>
                <#else>
                    <a class="page-number" href="${number.fullPath!}">${number.page!}</a>
                </#if>
            </#list>
            <#if pagination.hasNext>
                <a class="extend next" rel="next" href="${pagination.nextPageFullPath!}">
                    <i class="fa fa-angle-right" aria-label="Next page"></i>
                </a>
            </#if>
        </@paginationTag>
    </nav>
    </#if>
</div>
</@main>

<@sidebar>
<@sidebar_template is_post=false></@sidebar_template>
</@sidebar>

<@footer>

</@footer>

<@button>

</@button>
