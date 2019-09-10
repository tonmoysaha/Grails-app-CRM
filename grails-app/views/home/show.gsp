%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="user" args="['Profile']"/>
    </div>
    <div class="card-body">
        <g:if test="${user}">

            <div class="form-group">
                <label class="col-sm-3 control-label"><g:message code="first.name"/> </label>

                <div class="col-sm-9">
                   <h1>${user.firstName}</h1>
                </div>
            </div>

            <div class="form-action-panel justify-content-center">
            <g:link controller="home" action="index" class="btn btn-primary"><g:message code="cancel"/></g:link>
            </div>
        </g:if>

    </div>
</div>