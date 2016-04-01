<%@ page import="com.surelution.zjolap.BigCase" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="jarvis">
		<g:set var="entityName" value="${message(code: 'bigCase.label', default: 'BigCase')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<style>
			.table{width:350px; border:1px solid #ddd;}
			td{width:50%; }
			.table > tbody > tr > td{border-top: 0px solid #ddd;}
		</style>
	</head>
	<body>
	<div class="content-wrapper">
		<section class="content-header'">
			<div class="nav" role="navigation"></div>
			<h1>新增BigCase</h1>
		</section>
		<section class="content">
		<div id="create-bigCase" class="content scaffold-create" role="main">
			<g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${bigCaseInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${bigCaseInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form action="save" >
					<table class="table">
						<tr>
							<td align="right">
								<g:message code="bigCase.defaultOption.label" default="Default Option" />
							</td>
							<td align="left">
								<g:checkBox name="defaultOption" value="${bigCaseInstance?.defaultOption}" />
							</td>
						</tr>
						<tr>
							<td align="right">
								<g:message code="bigCase.name.label" default="Name" />
							</td>
							<td align="left">
								<g:textField name="name" value="${bigCaseInstance?.name}"/>
							</td>
						</tr>
						<tr>
							<td></td>
							<td align="right">
								<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
							</td>
						</tr>
					</table>
					
			</g:form>
		</div>
		</section>
	</div>
	</body>
</html>
