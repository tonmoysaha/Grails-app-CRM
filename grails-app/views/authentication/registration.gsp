<%--
  Created by IntelliJ IDEA.
  User: TonmoySahaOpi
  Date: 9/8/2019
  Time: 5:16 PM
--%>


<meta name="layout" content="public"/>

<div class="card">
    <div class="card-header">
        User Registration
    </div>
    <div class="card-body">
        <g:form controller="authentication" action="doRegistration" class="form-horizontal" role="form">
            <g:render template="/user/form"/>
        </g:form>
    </div>
</div>