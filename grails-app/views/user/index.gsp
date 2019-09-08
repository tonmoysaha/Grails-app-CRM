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
                        <g:select name="colName" class="form-control" from="[firstName: 'First Name', lastName: 'Last Name', email: 'Email']" value="${params?.colName}" optionKey="key" optionValue="value"/>
                        <g:textField name="colValue" class="form-control" value="${params?.colValue}"/>
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="submit">Search</button>
                        </span>
                    </div>
                </g:form>
            </div>

            %{--Create and Reload Panel--}%
            <div class="btn-group">
                <g:link controller="user" action="create" class="btn btn-success"><g:message code="create"/></g:link>
                <g:link controller="user" action="index" class="btn btn-primary"><g:message code="reload"/></g:link>
            </div>
        </span>
    </div>

    %{--Table Panel--}%
    <div class="card-body">
        <table class="table table-bordered">
            <thead class="thead-dark">
            <tr>
                <g:sortableColumn property="name" title="${g.message(code: "name")}"/>
                <g:sortableColumn property="email" title="${g.message(code: "email")}"/>
                <g:sortableColumn property="birthdate" title="${g.message(code: "birthdate")}"/>
                <th class="action-row"><g:message code="action"/></th>
            </tr>
            </thead>
            <tbody>
            <g:each in="${userList}" var="user">
                <tr>
                    <td>${user?.name}</td>
                    <td>${user?.email}</td>
                    <td>${user?.birthdate}</td>

                    %{--Table Actions --}%
                    <td>
                        <div class="btn-group">
                            <g:link controller="user" action="details" class="btn btn-secondary" id="${user.id}"><i class="fas fa-eye"></i></g:link>
                            <g:link controller="user" action="edit" class="btn btn-secondary" id="${user.id}"><i class="fas fa-edit"></i></g:link>
                            <g:link controller="user" action="delete" id="${user.id}" class="btn btn-secondary delete-confirmation"><i class="fas fa-trash"></i></g:link>
                        </div>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
        %{--Pagination Area--}%
        <div class="paginate">
            <g:paginate total="${total ?: 0}" />
        </div>
    </div>
</div>
