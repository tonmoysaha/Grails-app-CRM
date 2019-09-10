<%--
  Created by IntelliJ IDEA.
  User: TonmoySahaOpi
  Date: 9/6/2019
  Time: 1:00 PM
--%>

%{--Include Main Layout--}%
<meta name="layout" content="public"/>

<div class="card">
    <div class="card-header">
<g:message code="user" args="['Create']"/>
</div>
<div class="card-body">
    <g:form controller="user" action="save">

    %{--Partial Templating--}%
        <g:render template="form"/>
        <div class="form-action-panel">
          <div class="row row-space justify-content-center mt-3">
             <div class="col-2">
        <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "save")}"/>
        </div>
        <div class="col-2">
            <g:link controller="user" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
        </div>
        </div>
    </g:form>
</div>
</div>
</div>