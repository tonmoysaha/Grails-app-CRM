<%--
  Created by IntelliJ IDEA.
  User: TonmoySahaOpi
  Date: 9/8/2019
  Time: 4:05 PM
--%>

<meta name="layout" content="public"/>

<div class="card">
    <div class="card-body">
        <div id="global-wrapper">
            <div id="content-wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-md-4 mx-auto">

                            <div class="account-wall">
                                <g:img dir="images" file="bitmascot.png" class="profile-img"/>
                                <h1 class="text-center login-title">Login panel</h1>
                                <g:form controller="authentication" action="doLogin">
                                    <div class="form-group">
                                        <div class="text-center">
                                            <label><g:message code="email.address"/></label>
                                        </div>
                                        <g:textField name="email" class="form-control" placeholder="Enter Email"
                                                     required="required"/>
                                    </div>

                                    <div class="form-group">
                                        <div class="text-center">
                                            <label><g:message code="password"/></label>
                                        </div>
                                        <g:passwordField name="password" class="form-control"
                                                         placeholder="Enter Password"
                                                         required="required"/>
                                    </div>

                                    <div class="row row-space justify-content-center mt-3">

                                        <div class="col-2">
                                            <g:submitButton name="login" value="login" class="btn btn-primary btn-md"/>
                                        </div>

                                        <div class="col-2">
                                            <g:link controller="authentication" class="btn btn-primary btn-md"
                                                    action="login">Clear</g:link>
                                        </div>
                                    </div>
                                </g:form>
                                <div class="mt-4">
                                    <div class="d-flex justify-content-center links">
                                        Are you new here?
                                        <g:link controller="authentication" action="registration">Register Now</g:link>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


