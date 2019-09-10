<%--
  Created by IntelliJ IDEA.
  User: TonmoySahaOpi
  Date: 9/9/2019
  Time: 3:41 PM
--%>

<meta name="layout" content="main"/>


<div class="card">
    <div class="card-header">
        <g:message code="change" class="text-center login-title" args="['Password']"/>
    </div>

    <div class="card-body ">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <g:form controller="home" action="updatepassword">

                        <div class="form-group">
                            <label class="col-sm-3 control-label">Previous Password</label>
                            <div class="col-sm-9">
                                <g:passwordField name="password" class="form-control"/>
                            </div>
                        </div>


                        <div class="form-group">
                            <label class="col-sm-3 control-label">New Password</label>
                            <div class="col-sm-9">
                                <g:passwordField name="newPassword" class="form-control"/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label">Confirm Password</label>

                            <div class="col-sm-9">
                                <g:passwordField name="confirmPassword" class="form-control"/>
                            </div>
                        </div>


                        <div class="row row-space justify-content-center mt-3">

                            <div class="col-2">
                                <g:submitButton class="btn btn-primary btn-md" name="save"
                                                value="${g.message(code: "save")}"/>
                            </div>

                            <div class="col-2">
                                <g:link controller="home" action="editpassword"
                                        class="btn btn-primary btn-md">Clear</g:link>
                            </div>
                        </div>

                    </g:form>

                </div>
            </div>
        </div>
    </div>
</div>