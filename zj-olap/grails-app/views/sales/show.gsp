
<%@ page import="com.surelution.zjolap.Sales" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sales.label', default: 'Sales')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-sales" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
			<span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
			<span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
		</div>
		<div id="show-sales" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<div class="dialog">
				<table>
	                    <tbody>
	                    	<tr class="prop">
	                            <td valign="top" class="name"><g:message code="sales.id.label" default="Id" /></td>
	                            
	                            <td valign="top" class="value">${salesInstance?.id}</td>
	                            
	                        </tr>
	                        <tr class="prop">
	                            <td valign="top" class="name"><g:message code="sales.name.label" default="Name" /></td>
	                            
	                            <td valign="top" class="value"><g:fieldValue bean="${salesInstance}" field="name"/></td>
	                            
	                        </tr>
	                        <tr class="prop">
	                            <td valign="top" class="name"><g:message code="sales.branch.label" default="branch" /></td>
	                            
	                            <td valign="top" class="value">${salesInstance?.branch?.name}</td>
	                            
	                        </tr>
	                        <tr class="prop">
	                            <td valign="top" class="name"><g:message code="sales.fullTime.label" default="Full Time" /></td>
	                            
	                            <td valign="top" class="value">
	                            	${salesInstance.fullTime?.name}
	                            	</td>
	                            
	                        </tr>
	                	</tbody>
	                </table>
			</div>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${salesInstance?.id}" />
					<g:actionSubmit class="edit" action="edit" value="${message(code:'default.button.edit.label', default:'Edit')}" />
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
