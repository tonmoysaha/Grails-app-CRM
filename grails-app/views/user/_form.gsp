<div class="body">
    <div class="col-sm-6 col-md-4 mx-auto">

        <g:img dir="images" file="bitmascot.png" class="profile-img"/>
        <h1 class="text-center login-title">Registration panel</h1>

        <div class="form-group">
            <label class="col-sm-3 control-label"><g:message code="first.name"/> *</label>

            <div class="col-sm-9">
                <g:textField name="firstName" class="form-control"/>
            </div>
        </div>


        <div class="form-group">
            <label class="col-sm-3 control-label"><g:message code="last.name"/></label>

            <div class="col-sm-9">
                <g:textField name="lastName" class="form-control"/>
            </div>
        </div>


        <div class="form-group">
            <label class="col-sm-3 control-label"><g:message code="birthdate"/></label>

            <div class="col-sm-9">
                <div class='input-group date' id='datetimepicker1'>
                    <g:textField name="birthdate" class="form-control"/>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label"><g:message code="address"/></label>

            <div class="col-sm-9">
                <g:textField name="address" class="form-control"/>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-3 control-label"><g:message code="email.address"/> *</label>

            <div class="col-sm-9">
                <g:field type="email" name="email" class="form-control"/>
            </div>
        </div>

        <g:if test="${!edit}">
            <div class="form-group">
                <label class="col-sm-3 control-label"><g:message code="password"/> *</label>

                <div class="col-sm-9">
                    <g:passwordField name="password" class="form-control"/>
                </div>
            </div>
        </g:if>
        <div class="row row-space justify-content-center mt-3">
            <div class="col-2">
                <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "save")}"/>
            </div>

            <div class="col-2">
                <g:link controller="authentication" action="registration" class="btn btn-primary">Clear</g:link>
            </div>
        </div>

    </div>
</div>

