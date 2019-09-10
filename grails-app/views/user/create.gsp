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

    </g:form>
</div>
</div>
</div>