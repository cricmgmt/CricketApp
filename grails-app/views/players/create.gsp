

<%@ page import="cricketapp.Players" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'players.label', default: 'Players')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${playersInstance}">
            <div class="errors">
                <g:renderErrors bean="${playersInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="firstname"><g:message code="players.firstname.label" default="Firstname" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playersInstance, field: 'firstname', 'errors')}">
                                    <g:textField name="firstname" value="${playersInstance?.firstname}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="lastname"><g:message code="players.lastname.label" default="Lastname" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playersInstance, field: 'lastname', 'errors')}">
                                    <g:textField name="lastname" value="${playersInstance?.lastname}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="city"><g:message code="players.city.label" default="City" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playersInstance, field: 'city', 'errors')}">
                                    <g:textField name="city" value="${playersInstance?.city}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state"><g:message code="players.state.label" default="State" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playersInstance, field: 'state', 'errors')}">
                                    <g:select name="state" from="${playersInstance.constraints.state.inList}" value="${playersInstance?.state}" valueMessagePrefix="players.state"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="category"><g:message code="players.category.label" default="Category" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playersInstance, field: 'category', 'errors')}">
                                    <g:textField name="category" value="${playersInstance?.category}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="email"><g:message code="players.email.label" default="Email" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playersInstance, field: 'email', 'errors')}">
                                    <g:textField name="email" value="${playersInstance?.email}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="username"><g:message code="players.username.label" default="Username" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playersInstance, field: 'username', 'errors')}">
                                    <g:textField name="username" value="${playersInstance?.username}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="password"><g:message code="players.password.label" default="Password" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playersInstance, field: 'password', 'errors')}">
                                    <g:textField name="password" value="${playersInstance?.password}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="address"><g:message code="players.address.label" default="Address" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playersInstance, field: 'address', 'errors')}">
                                    <g:textField name="address" value="${playersInstance?.address}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contactNo"><g:message code="players.contactNo.label" default="Contact No" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: playersInstance, field: 'contactNo', 'errors')}">
                                    <g:textField name="contactNo" value="${playersInstance?.contactNo}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
