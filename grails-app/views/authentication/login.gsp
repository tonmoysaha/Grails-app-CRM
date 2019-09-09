<%--
  Created by IntelliJ IDEA.
  User: TonmoySahaOpi
  Date: 9/8/2019
  Time: 4:05 PM
--%>

<meta name="layout" content="public"/>

<div id="global-wrapper">
    <div id="content-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4 mx-auto">

                    <div class="account-wall">
                        <g:img dir="images" file="bitmascot.png" class="profile-img"/>
                        <h1 class="text-center login-title">Login panel</h1>
                        <g:form controller="authentication" action="doLogin">
                            <g:textField name="email" class="form-control" placeholder="Email" required="required"/>
                            <g:passwordField name="password" class="form-control" placeholder="Password"
                                             required="required"/>
                            <div class="row row-space">
                                <div class="col-2">
                                    <g:submitButton name="login" value="login" class="btn btn-primary btn-md"/>
                                </div>

                                <div class="col-2">
                                    <g:link controller="authentication" class="btn btn-primary btn-md"
                                            action="registration">Registration</g:link>
                                </div>
                            </div>

                        </g:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



