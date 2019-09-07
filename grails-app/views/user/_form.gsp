<div class="form-group">
    <label><g:message code="first.name"/> *</label>
    <g:textField name="firstName" class="form-control" value="${user?.firstName}" placeholder="Please Enter First Name"/>
</div>

<div class="form-group">
    <label><g:message code="last.name"/></label>
    <g:textField name="lastName" class="form-control" value="${user?.lastName}" placeholder="Please Last Name"/>
</div>

<div class="form-group">
    <label><g:message code="birthdate"/></label>
    <g:textField name="birthdate" class="form-control" value="${user?.birthdate}" placeholder="Please birthdate"/>
</div>

<div class="form-group">
    <label><g:message code="email.address"/> *</label>
    <g:field type="email" name="email" class="form-control" value="${user?.email}" placeholder="Please Enter Email"/>
</div>

<g:if test="${!edit}">
    <div class="form-group">
        <label><g:message code="password"/> *</label>
        <g:passwordField name="password" class="form-control" value="${user?.password}" placeholder="Please Enter Password"/>
    </div>
</g:if>
