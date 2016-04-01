
<%@page import="com.surelution.zjolap.Sales"%>
<%@ page import="com.surelution.zjolap.CustomerVisting" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="jarvis">
		<g:set var="entityName" value="${message(code: 'customerVisting.label', default: 'CustomerVisting')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
  <link rel="stylesheet" href="${resource(file:'css/jquery-ui.css') }">
	</head>
	<body>
		<div class="content-wrapper">
			<section class="content-header">
				<a href="#list-customerVisting" class="skip" tabindex="-1">
				<g:message code="default.link.skip.label" default="Skip to content&hellip;"/>
				</a>
				<h1>数据备份</h1>
			</section>
			<section class="content">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
						
							<th>文件名</th>
						
							<th>生成日期</th>
							<g:if test="${download }">
								<th>操作</th>
							</g:if>
						</tr>
					</thead>
					<tbody>
					<g:each in="${files}" status="i" var="file">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
							<td>${file.name}</td>
						
							<td><g:formatDate date="${new Date(file.lastModified()) }"/></td>
						
							<g:if test="${download }">
							<td><a href="${createLink(controller:'dbBackupMng',action:'download',id:file.name ) }">下载</a></td>
							</g:if>
						</tr>
					</g:each>
					</tbody>
				</table>
			</section>
		</div>
	</body>
</html>
