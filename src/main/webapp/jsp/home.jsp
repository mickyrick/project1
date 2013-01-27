<!DOCTYPE html PUBLIC 
	"-//W3C//DTD XHTML 1.1 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>

<s:form action="index" >

<s:url id="loginURL" action="login" />


<div style="height: 140px;" ></div>
	<div class="row">
		<div class="span7 offset1">
			<img src="img/logo.png" style="margin-bottom: 0px;"/>
		</div>
		
	</div>
	<div class="row">
		<div class="span4">
			&nbsp;
		</div>
		
	</div>
	
<div class="transBlock">
	<div class="row">
		<div class="span7 offset1">
			<s:textfield name="searchTags" cssClass="span7" placeholder="%{getText('placeholder.search.home')}" />		
		</div>
		<div class="span2 offset1" title="<s:text name='tooltip.search.keywords'/>" >
			<s:submit key="button.search" method="searchTags" cssClass="btn btn-success span2" id="btnSearch" />		
		</div>
		
		<!--  after calling getData - how do I display it here? -->
	</div>
	
</div>

</s:form>