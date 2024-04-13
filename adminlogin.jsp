<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body,td,th {
	color: #000000;
}

input[type=submit]  {
  width: auto;
  background-image: linear-gradient(red, black);
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: 1;
  border-color:white;
  border-radius: 20px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-image: linear-gradient(black, blue);
}


input[type=reset]  {
  width: auto;
  background-image: linear-gradient(red, black);
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: 1;
  border-color:white;
  border-radius: 20px;
  cursor: pointer;
}
input[type=reset]:hover {
  background-image: linear-gradient(black, blue);
}

html{
height:100%;

}
table{
border-radius:25px;
background-color:#9900FF;
}

body {
	
}
.style2 {font-size: 18px; }
.style3 {font-size: 24px}
-->
</style>

<%@ include file="hometabs.html" %>
</head>

<body>
<%@ include file="db.jsp" %>
<%@ page import="java.util.Date"%>
 <p align="center">&nbsp;</p>
 <p align="center">&nbsp;</p>
 <p align="center">&nbsp;</p>
 <p align="center">&nbsp;</p>


<p>&nbsp;</p>
<%
if(request.getParameter("Submit")!=null){
try
{

String un=request.getParameter("username");
String pw=request.getParameter("password");
Date date=new Date();

rst=stmt.executeQuery("select * from users where email='"+un+"' and password='"+pw+"'");
if(rst.next()){
session.setAttribute("user",un);
session.setAttribute("username",rst.getString(1));
session.setAttribute("phone",rst.getString(2));
session.setAttribute("email",rst.getString(3));

response.sendRedirect("confirm.jsp");
//response.sendRedirect("adminMain.html");

	
	}else{
				
				%>	
					<script>
					
						alert("login failured");
					</script>	
						
	<%
	
	}	

}catch(Exception e){
out.println(e);
}
}
%>

<center>
 <table   width="1185" height="426" border="0" align="center">
  <tr>
   <td width="536" height="416"><div class="w3-content w3-section" style="max-width:500px"  ><span class="w3-content w3-section" style="max-width:500px"><span class="w3-content w3-section" style="max-width:500px"><img src="images/1.jpg" width="102%" height="278" class="mySlides w3-animate-top" style="width:100%" /></span></span></div></td>
    <td width="639"><center>
 <div align="center">
<form id="form1" name="form1" method="post" action="">
  <table width="68%" height="225" border="0" align="center">
    <tr>
      <td width="162"><strong> Enter email </strong></td>
      <td width="263"><input name="username" type="text" id="username" /></td>
    </tr>
    <tr>
      <td><div align="left"><strong>enter password</strong></div></td>
      <td><div align="left">
        <input name="password" type="password" id="password" />
      </div></td>
    </tr>
    <tr>
      <td><div align="right"><span class="style3"><span class="style3"></span></span></div></td>
      <td><input name="Submit" type="submit" value="Login" /></td>
    </tr>
	<tr>
	<td><a href="fergot.jsp" target="_self" class="style2"><button type="button" name="Submit">forgot password</button></a></td>
	<td><a href="registration.jsp" target="_self" class="style2"><button type="button" name="Submit">New Users </button></a></td>
	</tr>
  </table>
</form>
</div>
</center></td>
  </tr>
</table>
</center>
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2500);    
}
</script>

 
</body>
</html>
