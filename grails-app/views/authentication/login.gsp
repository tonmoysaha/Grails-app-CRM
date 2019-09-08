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
                    <h1 class="text-center login-title">Contacts Book Member Login</h1>

                    <div class="account-wall">
                        <g:img dir="images" file="bitmascot.png" class="profile-img"/>
                        <g:form controller="authentication" action="doLogin"/>
                        <g:textField name="email" class="form-control" placeholder="Email" required="required"/>
                        <g:passwordField name="password" class="form-control" placeholder="Password"
                                         required="required"/>
                        <g:submitButton name="login" value="login" class="btn btn-lg btn-primary btn-block"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



