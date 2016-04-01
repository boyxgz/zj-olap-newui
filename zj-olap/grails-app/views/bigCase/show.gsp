
<%@ page import="com.surelution.zjolap.BigCase" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="jarvis">
		<g:set var="entityName" value="${message(code: 'bigCase.label', default: 'BigCase')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<style>
			td{width:50%; background-color:#fff; font-color:#000;}
		</style>
	</head>
	<body>
	<div class="content-wrapper">
		<section class="content-header">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
		</section>
		<section class="content">
		<div id="show-bigCase" class="content scaffold-show" role="main">
			<g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:form>
				<table class="table table-bordered">
					<tr>
						<td>
							<span id="defaultOption-label" class="property-label"><g:message code="bigCase.defaultOption.label" default="Default Option" /></span>
						</td>
						<td>
							<span class="property-value" aria-labelledby="defaultOption-label"><g:formatBoolean boolean="${bigCaseInstance?.defaultOption}" /></span>
						</td>
					</tr>
					<tr>
						<td>
							<span id="name-label" class="property-label"><g:message code="bigCase.name.label" default="Name" /></span>
						</td>
						<td>
							<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${bigCaseInstance}" field="name"/></span>
						</td>
					</tr>
					<tr>
						<td>
							<g:hiddenField name="id" value="${bigCaseInstance?.id}" />
							<g:link class="edit" action="edit" id="${bigCaseInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
						</td>
						<td>
							<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</td>
					</tr>
				</table>
			</g:form>
		</div>
		</section>
	</div>
	</body>
</html>
