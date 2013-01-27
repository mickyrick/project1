<!DOCTYPE html PUBLIC 
	"-//W3C//DTD XHTML 1.1 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="decorator" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%@taglib prefix="page" uri="http://www.opensymphony.com/sitemesh/page" %>
<%@taglib prefix="s" uri="/struts-tags" %>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<title>cars</title>
	<script type="text/javascript" src="<s:url value='/css3/jquery-1.7.1.min.js'/>"></script>
	<script type="text/javascript" src="<s:url value='/bootstrap/js/bootstrap.js'/>"></script>
	<script src="js/jquery.autocomplete.js"></script>   
 <sx:head />
     <decorator:head/>
</head>
  <body data-spy="scroll" data-target=".subnav" data-offset="50">
<s:include value="/jsp/snip/navbar.jsp" />



<div class="container">


	<decorator:body/>
</div>



</div>
</body>
</html>
