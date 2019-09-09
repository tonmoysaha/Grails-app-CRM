%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="user" args="['Details']"/>
    </div>
    <div class="card-body">
        <g:if test="${user}">
            <table class="table">
                <tr>
                    <th class="text-right"><g:message code="first.name"/></th><td class="text-left">${user.firstName}</td>
                </tr>
                <tr>
                    <th class="text-right"><g:message code="last.name"/></th><td class="text-left">${user.lastName}</td>
                </tr>
            </table>
        </g:if>
        <div class="form-action-panel">
            <g:link controller="user" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
        </div>
    </div>
</div>