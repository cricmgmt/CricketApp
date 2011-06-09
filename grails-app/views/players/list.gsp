
<%@ page import="cricketapp.Players" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'players.label', default: 'Players')}" />
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
                        
                            <g:sortableColumn property="id" title="${message(code: 'players.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="firstname" title="${message(code: 'players.firstname.label', default: 'Firstname')}" />
                        
                            <g:sortableColumn property="lastname" title="${message(code: 'players.lastname.label', default: 'Lastname')}" />
                        
                            <g:sortableColumn property="city" title="${message(code: 'players.city.label', default: 'City')}" />
                        
                            <g:sortableColumn property="state" title="${message(code: 'players.state.label', default: 'State')}" />
                        
                            <g:sortableColumn property="category" title="${message(code: 'players.category.label', default: 'Category')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${playersInstanceList}" status="i" var="playersInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${playersInstance.id}">${fieldValue(bean: playersInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: playersInstance, field: "firstname")}</td>
                        
                            <td>${fieldValue(bean: playersInstance, field: "lastname")}</td>
                        
                            <td>${fieldValue(bean: playersInstance, field: "city")}</td>
                        
                            <td>${fieldValue(bean: playersInstance, field: "state")}</td>
                        
                            <td>${fieldValue(bean: playersInstance, field: "category")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${playersInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
