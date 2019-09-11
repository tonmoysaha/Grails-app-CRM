<%--
  Created by IntelliJ IDEA.
  User: TonmoySahaOpi
  Date: 9/9/2019
  Time: 3:41 PM
--%>

<meta name="layout" content="main"/>


<div class="card">
    <div class="card-header text-center">
        <g:message code="change.password"/>
    </div>

    <div class="card-body ">

                <div class="resetpasswordbody">
                    <g:form controller="home" action="updatepassword" id="editpassword">
                        <div class="form-group">
                        <div class="row">
                            <label class="col-sm">Previous Password</label>
                            <div class="col-sm">
                                <g:passwordField name="password" id="password" class="form-control"/>
                            </div>
                        </div>
                        </div>

                        <div class="form-group">
                        <div class="row">
                            <label class="col-sm">New Password</label>
                            <div class="col-sm">
                                <g:passwordField name="newPassword" id="newPassword" class="form-control"/>
                            </div>
                        </div>
                        </div>

                        <div class="form-group">
                        <div class="row">
                            <label class="col-sm">Confirm Password</label>

                            <div class="col-sm">
                                <g:passwordField name="confirmPassword" id="confirmPassword" class="form-control"/>
                            </div>
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
