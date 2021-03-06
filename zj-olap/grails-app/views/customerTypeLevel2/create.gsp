<%@ page import="com.surelution.zjolap.CustomerTypeLevel2" %>
<!DOCTYPE html>
<html>
	<head>
		<g:set var="entityName" value="${message(code: 'customerTypeLevel2.label', default: 'CustomerTypeLevel2')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">新建机构类型</h4>
        </div>
			<g:form action="save" >
		<div class="modal-body">
		<g:hiddenField name="max" value="${params.max}"/>
				<g:hiddenField name="offset" value="${params.offset}"/>
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>	
		 </div>	
		 <div class="modal-footer">		
				<fieldset class="buttons">
					<g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
		</div>
			</g:form>
	</body>
</html>
