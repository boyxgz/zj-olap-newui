
<%@ page import="com.surelution.zjolap.BigCase" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="jarvis">
		<g:set var="entityName" value="${message(code: 'bigCase.label', default: 'BigCase')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<div class="content-wrapper">
		<section class="content-header">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<%--<a href="#list-bigCase" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>--%>
			<%--<div class="nav" role="navigation">
				<ul>
					<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
					<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</ul>
			</div>--%>
		</section>
		<section class="content">
		<div id="list-bigCase" class="content scaffold-list" role="main">
			<g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
			<table class="table table-bordered table-respose">
				<thead>
					<tr>
						<g:sortableColumn property="defaultOption" title="${message(code: 'bigCase.defaultOption.label', default: 'Default Option')}" class="alink" />
						<g:sortableColumn property="name" title="${message(code: 'bigCase.name.label', default: 'Name')}" class="alink"/>
					</tr>
				</thead>
				<tbody>
				<g:each in="${bigCaseInstanceList}" status="i" var="bigCaseInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${bigCaseInstance.id}">${fieldValue(bean: bigCaseInstance, field: "defaultOption")}</g:link></td>
					
						<td>${fieldValue(bean: bigCaseInstance, field: "name")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${bigCaseInstanceTotal}" />
			</div>
		</div>
		</section>
	</div>
	</body>
</html>
