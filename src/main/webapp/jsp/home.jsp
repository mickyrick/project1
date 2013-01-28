<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<html>
  <head>
    <sj:head jqueryui="true"/>
  </head>
  <body>
  <s:url var="remoteurl" action="homeAction"/>
   Enter text here, calls execute in action to update list based on term, but autocomplete is then disabled (no dropdown)
     <sj:autocompleter id="languages" href="%{remoteurl}" delay="50" list="%{languages}" autocomplete="true" />
   
   <br/>
   Enter text here, renders results but does not interact with the server so is a bit useless as real results would be > 10000
   <sj:autocompleter id="languages2" list="%{languages}" delay="500"/>

   </body>
</html>	