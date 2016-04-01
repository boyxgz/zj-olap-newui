<%@ page import="com.surelution.zjolap.Branch" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="jarvis">
		<g:set var="entityName" value="${message(code: 'branch.label', default: 'Branch')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<style>
			.table{width:350px; border:1px solid #ddd;}
			td{width:50%; }
			.table > tbody > tr > td{border-top: 0px solid #ddd;}
		</style>
	</head>
	<body>
	<div class="content-wrapper">
		<section class="content-header">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			<a href="#create-branch" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
			<span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
			<span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
		</section>
		<section class="content">
		<div id="create-branch" class="content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${branchInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${branchInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
			<fieldset class="form">
				<g:render template="form"/>
			</fieldset>
			<g:submitButton name="create" class="btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
			</g:form>
		</div>
		</section>
	</div>
	</body>
</html>
