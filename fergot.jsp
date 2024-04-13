<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: #C9D7E5;
	
}
.style6 {color: #000000}
-->
</style></head>

<body>
<%@ include file="hometabs.html" %>
<%@ include file="db.jsp" %>

<div align="center">
  <p>Forget Password </p>
</div>
<p>
  <% if(request.getParameter("check")==null){ %>
</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<form  method="get" action="">
  <table width="480" border="1" align="center">
    <tr>
      <td width="150">enter your Email ID </td>
      <td width="257"><input name="email" type="text" id="email" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="check" value="check" /></td>
    </tr>
  </table>
</form>
<p>
  <% } %>
  <% 

if(request.getParameter("check")!=null){

rst=stmt.executeQuery("select email from studentreg where email='"+request.getParameter("email")+"' ");
if(rst.next()){
%>
</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<form id="form1" name="form1" method="get" action="">
  <p>
    <input name="email" type="hidden" value="<%= request.getParameter("email") %>" />
  </p>
  <table width="480" border="1" align="center">
    
    <tr>
      <td bgcolor="#FFFFFF"><span class="style6">Enter Phone Number </span></td>
      <td><input name="answer" type="text" id="answer" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="verify" value="verify" /></td>
    </tr>
  </table>
</form>

<%
}else{
  %>
<script>alert("No such Customer exist");</script>
<%
}




}
 %>





<% 

if(request.getParameter("verify")!=null){

rst=stmt.executeQuery("select password from studentreg where email='"+request.getParameter("email")+"' and  phone='"+request.getParameter("answer")+"' ");
if(rst.next()){
  %>
  <h2 background color:#fffff>Password is :<%= rst.getString(1) %> </h2>
  
  <%
}else{
  %>
<script>alert("Incorrect answer");</script>
<%
}




}
 %>




</body>
</html>
