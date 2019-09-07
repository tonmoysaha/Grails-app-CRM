<%--
  Created by IntelliJ IDEA.
  User: TonmoySahaOpi
  Date: 9/6/2019
  Time: 1:00 PM
--%>

%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="user" args="['Create']"/>
    </div>
    <div class="card-body">
        <g:form controller="user" action="save">

        %{--Partial Templating--}%
            <g:render template="form"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "save")}"/>
                <g:link controller="user" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>