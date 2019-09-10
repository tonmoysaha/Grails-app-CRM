<%--
  Created by IntelliJ IDEA.
  User: TonmoySahaOpi
  Date: 9/9/2019
  Time: 3:41 PM
--%>

<meta name="layout" content="main"/>


<div class="card">
    <div class="card-header">
        <g:message code="change"  class="text-center login-title" args="['Password']"/>
    </div>

    <div class="card-body justify-content-center">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <g:form controller="home" action="updatepassword">
                        <label>Previous Password</label>

                        <div class="form-group pass_show">
                        <g:passwordField name="password" class="form-control" />
                       </div>

                        <label>New Password</label>

                        <div class="form-group pass_show">
                            <g:passwordField name="newPassword" class="form-control" />
                        </div>
                        <label>Confirm Password</label>

                        <div class="form-group pass_show">
                            <g:passwordField name="confirmPassword" class="form-control"/>
                        </div>

                        <div class="form-action-panel">
                            <div class="row row-space justify-content-center mt-3">

                                <div class="col-2">
                            <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "save")}"/>
                        </div>
                        <div class="col-2">
                            <g:link controller="home" action="editpassword" class="btn btn-primary">Clear</g:link>
                        </div>
                        </div>
                        </div>
                    </g:form>

                </div>
            </div>
        </div>
    </div>
</div>