
<%@ page import="cricketapp.Players" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'players.label', default: 'Players')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="players.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: playersInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="players.firstname.label" default="Firstname" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: playersInstance, field: "firstname")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="players.lastname.label" default="Lastname" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: playersInstance, field: "lastname")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="players.city.label" default="City" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: playersInstance, field: "city")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="players.state.label" default="State" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: playersInstance, field: "state")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="players.category.label" default="Category" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: playersInstance, field: "category")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="players.email.label" default="Email" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: playersInstance, field: "email")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="players.username.label" default="Username" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: playersInstance, field: "username")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="players.password.label" default="Password" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: playersInstance, field: "password")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="players.address.label" default="Address" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: playersInstance, field: "address")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="players.contactNo.label" default="Contact No" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: playersInstance, field: "contactNo")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${playersInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
