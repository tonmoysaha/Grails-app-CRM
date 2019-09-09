<%--
  Created by IntelliJ IDEA.
  User: TonmoySahaOpi
  Date: 9/9/2019
  Time: 3:41 PM
--%>

<meta name="layout" content="main"/>



    <div class="container">
        <div class="row">
            <div class="col-sm-4">
                <g:form controller="home" action="updatepassword">
                    <label>Current Password</label>

                    <div class="form-group pass_show">
                        <g:passwordField name="password" class="form-control" value="${user?.password}"
                                         placeholder="Please Enter Password"/>
                    </div>
                    <label>New Password</label>

                    <div class="form-group pass_show">
                        <g:passwordField name="newPassword" class="form-control" placeholder="Please new Password"/>
                    </div>
                    <label>Confirm Password</label>

                    <div class="form-group pass_show">
                        <g:passwordField name="confirmPassword" class="form-control" placeholder="Please confirm Password"/>
                    </div>

                    <div class="form-action-panel">
                        <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "save")}"/>
                        <g:link controller="home" action="index" class="btn btn-primary"><g:message
                                code="cancel"/></g:link>
                    </div>
                </g:form>

            </div>
        </div>
    </div>
</div>