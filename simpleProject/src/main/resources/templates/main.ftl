<#import "parts/common.ftl" as c>
<@c.page>
<div class="form-row">
    <form method="get" action="/main" class="form-inline">
        <input class="form-control" type="text" name="filter" value="${filter!}" placeholder="Search by tag">
        <button type="submit" class="btn btn-submit ml-2">Search</button>
    </form>
</div>

<a class="btn btn-primary mt-3" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false"
   aria-controls="collapseExample">
    Add new massage
</a>
<div class="collapse mt-3" id="collapseExample">
    <div class="form-group">
        <form method="post" enctype="multipart/form-data">
            <div class="form-group">
                <input class="form-control" type="text" name="text" placeholder="Enter message"/>
            </div>
            <div class="form-group">
                <input class="form-control" type="text" name="tag" placeholder="Tag">
            </div>
            <div class="form-group">
                <div class="custom-file">
                    <input type="file" name="file" id="customFile">
                    <label for="customFile" class="custom-file-label">Choose file</label>
                </div>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <div class="form-group">
                <button class="btn btn-submit" type="submit">Send</button>
            </div>
        </form>
    </div>
</div>
<div class="card my-3">Messages:</div>
    <#list messages as message>
<div>
    <div>
        <#if message.filename??>
            <img class="card-img-top" src="/img/${message.filename}">
        </#if>
    </div>
    <div class="m-2">
        <span>${message.text}</span>
        <i>${message.tag}</i>
    </div>
    <div class="card-footer text-muted">
        ${message.authorName}
    </div>

</div>
    <#else >
No messages
    </#list>
</@c.page>