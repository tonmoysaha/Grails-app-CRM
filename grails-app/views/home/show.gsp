%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header text-center">
        <g:message code="user" args="['Profile']"/>
    </div>
    <div class="card-body">
        <div class="profilesection">
        <g:if test="${user}">

            <div class="form-group">
                <div class="row">
                <label class="col-sm"><g:message code="first.name"/> </label>
                <div class="col-sm">
                   ${user.firstName}
                </div>
            </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <label class="col-sm"><g:message code="last.name"/> </label>
                    <div class="col-sm">
                        ${user.lastName}
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <label class="col-sm"><g:message code="address"/> </label>
                    <div class="col-sm">
                        ${user.address}
                    </div>
                </div>
            </div>


            <div class="form-group">
                <div class="row">
                    <label class="col-sm"><g:message code="phone"/> </label>
                    <div class="col-sm">
                        ${user.phone}
                    </div>
                </div>
            </div>


            <div class="form-group">
                <div class="row">
                    <label class="col-sm"><g:message code="email"/> </label>
                    <div class="col-sm">
                        ${user.email}
                    </div>
                </div>
            </div>


            <div class="form-group">
                <div class="row">
                    <label class="col-sm"><g:message code="birthdate"/> </label>
                    <div class="col-sm">
                        ${user.birthdate}
                    </div>
                </div>
            </div>

        </g:if>

    </div>
</div>
</div>