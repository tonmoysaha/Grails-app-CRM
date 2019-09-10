<%--
  Created by IntelliJ IDEA.
  User: TonmoySahaOpi
  Date: 9/9/2019
  Time: 3:41 PM
--%>

<meta name="layout" content="main"/>


<div class="card">
    <div class="card-header">
        <g:message code="change" args="['Password']"/>
    </div>

    <div class="card-body justify-content-center">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <g:form controller="home" action="updatepassword">
                        <label>Previous Password</label>

                        <div class="form-group pass_show">
l,zlmodfz                        </div>

                        <label>New Password</label>

                        <div class="form-group pass_show">
                            <g:passwordField name="newPassword" class="form-control" placeholder="Please new Password"/>
                        </div>
                        <label>Confirm Password</label>

                        <div class="form-group pass_show">
                            <g:passwordField name="confirmPassword" class="form-control"
                                             placeholder="Please confirm Password"/>
                        </div>

                        <div class="form-action-panel">
                            <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "save")}"/>
                            <g:link controller="home" action="editpassword" class="btn btn-primary">Clear</g:link>
                        </div>
                    </g:form>

                </div>
            </div>
        </div>
    </div>
</div>