<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>
<@c.page>
<div class="mb-1"><p>Add new user</p></div>
    <@l.login "/registration" true/>
    ${message?if_exists}
</@c.page>