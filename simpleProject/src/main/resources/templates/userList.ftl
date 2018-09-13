<#import "parts/common.ftl" as c>

<@c.page>

List of users

<table>
    <thead>
    <th>Name</th>
    <th>Role</th>
    <th></th>
    </thead>
<#list users as user>
<tr>
    <td>${user.username}</td>
    <td><#list user.roles as role>${role}<#sep >, </#list></td>
    <td><a href="/user/${user.id}">Edit</a></td>
</tr>
<#else >
no users(
</#list>
</table>
</@c.page>