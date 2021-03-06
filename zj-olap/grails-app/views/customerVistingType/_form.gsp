<%@ page import="com.surelution.zjolap.CustomerVistingType" %>



<div class="fieldcontain ${hasErrors(bean: customerVistingTypeInstance, field: 'name', 'error')} ">
	<dl class="dl-horizontal">
	   <dt><label for="name">
		<g:message code="customerVistingType.name.label" default="Name" />
		
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	         <g:if test="${customerVistingTypeInstance.name}">
	           <g:textField name="name" id="name" value="${customerVistingTypeInstance.name}" class="form-control" required="" />
	        </g:if>
	        <g:else>
	             <g:textField name="name" id="name" class="form-control" required=""/>
	        </g:else>
	      </div>
	   </dd>
	</dl>	
</div>

<div class="fieldcontain ${hasErrors(bean: customerVistingTypeInstance, field: 'description', 'error')} ">
	<dl class="dl-horizontal">
	   <dt><label for="description">
		<g:message code="customerVistingType.description.label" default="Description" />
		
	</label></dt>
	   <dd>
	      <div class="col-xs-8">
	     <g:textField name="description" value="${customerVistingTypeInstance?.description}" class="form-control"/>
	      </div>
	   </dd>
	</dl>		
</div>



