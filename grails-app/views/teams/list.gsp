
<%@ page import="cricketapp.Teams" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'teams.label', default: 'Teams')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'teams.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="teamName" title="${message(code: 'teams.teamName.label', default: 'Team Name')}" />
                        
                            <g:sortableColumn property="city" title="${message(code: 'teams.city.label', default: 'City')}" />
                        
                            <g:sortableColumn property="state" title="${message(code: 'teams.state.label', default: 'State')}" />
                        
                            <g:sortableColumn property="dateCreated" title="${message(code: 'teams.dateCreated.label', default: 'Date Created')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${teamsInstanceList}" status="i" var="teamsInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${teamsInstance.id}">${fieldValue(bean: teamsInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: teamsInstance, field: "teamName")}</td>
                        
                            <td>${fieldValue(bean: teamsInstance, field: "city")}</td>
                        
                            <td>${fieldValue(bean: teamsInstance, field: "state")}</td>
                        
                            <td><g:formatDate date="${teamsInstance.dateCreated}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${teamsInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
