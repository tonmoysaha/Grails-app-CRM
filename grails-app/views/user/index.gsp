<%--
  Created by IntelliJ IDEA.
  User: TonmoySahaOpi
  Date: 9/6/2019
  Time: 2:30 PM
--%>
%{--Include Main Layout--}%

<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="user" args="['List Of']"/>

        %{--Actions--}%
        <span class="float-right">

            %{--Search Panel --}%
            <div class="btn-group">
                <g:form controller="user" action="index" method="GET">
                    <div class="input-group" id="search-area">
                        <g:textField name="query" class="form-control" value="${params.query}"/>
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="submit">Search</button>
                        </span>
                    </div>
                </g:form>
            </div>

        </span>
    </div>

    %{--Table Panel--}%
    <div class="card-body">
        <table class="table-sm">
            <thead>
            <tr>
                <g:sortableColumn property="firstName"  title="${g.message(code: "firstName")}"/>
                <g:sortableColumn property="email"  title="${g.message(code: "email")}"/>
                <g:sortableColumn property="age" title="${g.message(code: "age")}"/>
                <g:sortableColumn property="phone" title="${g.message(code: "phone")}"/>
            </tr>
            </thead>
            <tbody>
            <g:each in="${userList}" var="user">
                <g:if test="${user?.userType != "ADMINISTRATOR"}">
                <tr>

                    <td>${user?.firstName}
                     &nbsp; ${user?.lastName}</td>
                    <td>${user?.email}</td>
                    <td>${user?.age}</td>
                    <td>+88${user?.phone}</td>

                </tr>
                </g:if>
            </g:each>
            </tbody>
        </table>
        %{--Pagination Area--}%
        <div class="paginate">
            <g:paginate total="${total ?: 0}" />
        </div>
    </div>
</div>
