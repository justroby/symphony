<#macro list listData>
<div class="article-list list">
    <ul>
        <#list listData as article>
        <li>
            <div>
                <div class="fn-clear">
                    <a class="ft-noline" 
                       href="/${article.articleAuthorName}" 
                       title="${article.articleAuthorName}"><img class="avatar fn-left" src="${article.articleAuthorThumbnailURL}" /></a>
                    <div class="fn-left" style="width: 550px">
                        <h2><a href="${article.articlePermalink}">${article.articleTitle}</a></h2>
                        <span class="ft-small">
                            <#list article.articleTags?split(",") as articleTag>
                            <a rel="tag" href="/tags/${articleTag?url('UTF-8')}">
                                ${articleTag}</a><#if articleTag_has_next>, </#if>
                            </#list>
                        </span>
                    </div>
                </div>
                <div class="count ft-small">
                    ${viewLabel} <a href="">${article.articleViewCount}</a><br/>
                    ${cmtLabel} <a href="">${article.articleCommentCount}</a>
                </div>
                <div class="commenters">
                    <#list article.articleParticipants as comment>
                    <a href="/${comment.articleParticipantName}" title="${comment.articleParticipantName}" class="ft-noline">
                        <img class="avatar-small" src="${comment.articleParticipantThumbnailURL}" />
                    </a>
                    </#list>
                </div>
            </div>
        </li>
        </#list>
    </ul>
</div>
</#macro>