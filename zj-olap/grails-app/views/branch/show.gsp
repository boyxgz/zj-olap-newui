
<%@ page import="com.surelution.zjolap.Branch" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="jarvis">
		<g:set var="entityName" value="${message(code: 'branch.label', default: 'Branch')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
		<style>
			.table{width:350px; border:1px solid #ddd;}
			td{width:50%; }
			.table > tbody > tr > td{border-top: 0px solid #ddd;}
		</style>
	</head>
	<body>
	<div class="content-wrapper">
		<section class="content-header">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<a href="#show-branch" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
			<span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
			<span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
			<%--<span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>--%>
		</section>
		<section class="content">
		<div id="show-branch" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:form>
			<table class="table">
				<tr>
					<td align="right">
						<span id="name-label" class="property-label"><g:message code="branch.name.label" default="Name" /></span>
					</td>
					<td align="left">
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${branchInstance}" field="name"/></span>
					</td>
				</tr>
				<tr>
					<td align="right">
						<span id="branchGroup-label" class="property-label"><g:message code="branch.branchGroup.label" default="Branch Group" /></span>
					</td>
					<td align="left">
						<span class="property-value" aria-labelledby="branchGroup-label"><g:link controller="branchGroup" action="show" id="${branchInstance?.branchGroup?.id}">${branchInstance?.branchGroup?.name}</g:link></span>
					</td>
				</tr>
				<tr>
					<td></td>
					<td align="right">
						<g:hiddenField name="id" value="${branchInstance?.id}" />
						<g:actionSubmit class="btn btn-info" action="edit" id="${branchInstance?.id}"  value="${message(code: 'default.button.edit.label', default: 'edit')}" ><g:message code="default.button.edit.label" default="Edit" /></g:actionSubmit>
						<%--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--%>
					</td>
				</tr>
			</table>
					
			</g:form>
		</div>
		</section>
	</div>
	</body>
</html>
