<div id="global-wrapper">
<div class="container">
        <div class="account-wall">
            <g:img dir="images" file="bitmascot.png" class="profile-img"/>
            <h1 class="text-center login-title">Registration panel</h1>

            <div class="form-group">
                <label><g:message code="first.name"/> *</label>
                <g:textField name="firstName" class="form-control" value="${user?.firstName}"
                             placeholder="Please Enter First Name"/>
            </div>

            <div class="form-group">
                <label><g:message code="last.name"/></label>
                <g:textField name="lastName" class="form-control" value="${user?.lastName}"
                             placeholder="Please Last Name"/>
            </div>

            <div class="form-group">
                <label><g:message code="address"/></label>
                <g:textField name="address" class="form-control" value="${user?.address}"
                             placeholder="Please address"/>
            </div>

            <div class="form-group">
                <label><g:message code="phone"/></label>
                <g:textField name="phone" class="form-control" value="${user?.phone}"
                             placeholder="Please enter phone number"/>
            </div>

            <div class="form-group">
                <label><g:message code="email.address"/> *</label>
                <g:field type="email" name="email" class="form-control" value="${user?.email}"
                         placeholder="Please Enter Email"/>
            </div>

            <div class="row row-space">

                    <div class="input-group">
                        <input class="input--style-1 js-datepicker" type="text" placeholder="BIRTHDATE" name="birthday">
                        <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                    </div>

            </div>


            <g:if test="${!edit}">
                <div class="form-group">
                    <label><g:message code="password"/> *</label>
                    <g:passwordField name="password" class="form-control" value="${user?.password}"
                                     placeholder="Please Enter Password"/>
                </div>
            </g:if>

        </div>
    </div>
</div>


