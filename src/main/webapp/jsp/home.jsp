<!DOCTYPE html PUBLIC 
	"-//W3C//DTD XHTML 1.1 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page" %>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@taglib prefix="sx" uri="/struts-dojo-tags" %>


<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>cars</title>
	<script type="text/javascript" src="<s:url value='/css3/jquery-1.7.1.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='/bootstrap/js/bootstrap.js'/>"></script>
	<script src="js/jquery.autocomplete.js"></script>   
 <sx:head />
</head>
  <body data-spy="scroll" data-target=".subnav" data-offset="50">


<div class="container">


</div>





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
	
	My List : <sx:autocompleter list="autoCompleteList" name="myList"/> xyz
	

        
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

</body>
</html>