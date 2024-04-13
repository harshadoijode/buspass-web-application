<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
body {
	background-color: white;
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
  background-image: linear-gradient(blue, orange);
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
  background-image: linear-gradient(blue, orange);
}
.style1 {
	font-size: 24px;
	font-weight: bold;
}

-->
</style>
<script type="text/javascript">

</script>

</head>

<body>
 <p>
<p>
<p>
<p>
<p>
  <%@ include file="db.jsp" %>
  <%@ include file="adminmenu.html" %>

<p> 
<p> 
<form id="form1" name="form1" method="post" action="">
   <p>&nbsp;</p>
   <p>&nbsp;</p>
   <p>&nbsp;</p>
   <p>&nbsp;</p>
</form>
 <p> 
<p> 
<p>
<p> 
<p class="style1">You submitted Details are :  
<p>
<table width="789" height="771" border="2" align="center">
  <% 
  rst=stmt.executeQuery("select * from form order by id desc limit 1");
  while(rst.next()){
  
   %>
  <tr>
    <td width="372"><div align="right">name: </div></td>
    <td>
      
      <div align="left">
        <input name="name" type="text" value="<%= session.getAttribute("username") %>"  readonly="" />
      </div></td>
  </tr>
  <tr>
    <td><div align="right">father name</div></td>
    <td><div align="left"><%= rst.getString(2) %></div></td>
  </tr>
  <tr>
    <td><div align="right">mother name</div></td>
    <td><div align="left"><%= rst.getString(3) %></div></td>
  </tr>
  <tr>
    <td><div align="right">gender</div></td>
    <td><div align="left"><%= rst.getString(4) %></div></td>
  </tr>
  <tr>
    <td><div align="right">age</div></td>
    <td><div align="left"><%= rst.getString(5) %></div></td>
  </tr>
  <tr>
    <td><div align="right">adhar number</div></td>
    <td><div align="left"><%= rst.getString(6) %></div></td>
  </tr>
  <tr>
    <td><div align="right">mobile number</div></td>
    <td><div align="left"><%= rst.getString(7) %></div></td>
  </tr>
  <tr>
    <td><div align="right">email</div></td>
    <td><div align="left"><%= rst.getString(8) %></div></td>
  </tr>
  <tr>
    <td><div align="right">permanent address</div></td>
    <td><div align="left"><%= rst.getString(9) %></div></td>
  </tr>
  <tr>
    <td><div align="right">temporary address</div></td>
    <td><div align="left"><%= rst.getString(10) %></div></td>
  </tr>
  <tr>
    <td><div align="right">category</div></td>
    <td><div align="left"><%= rst.getString(11) %></div></td>
  </tr>
  <tr>
    <td><div align="right">proffession</div></td>
    <td><div align="left"><%= rst.getString(12) %></div></td>
  </tr>
  <tr>
    <td><div align="right">course</div></td>
    <td><div align="left"><%= rst.getString(13) %></div></td>
  </tr>
  <tr>
    <td><div align="right">class</div></td>
    <td><div align="left"><%= rst.getString(14) %></div></td>
  </tr>
  <tr>
    <td><div align="right">from </div></td>
    <td><div align="left"><%= rst.getString(15) %></div></td>
  </tr>
  <tr>
    <td><div align="right">to</div></td>
    <td><div align="left"><%= rst.getString(16) %></div></td>
  </tr>
  <tr>
    <td><div align="right">route change</div></td>
    <td><div align="left"><%= rst.getString(17) %></div></td>
  </tr>
  <tr>
    <td><div align="right">institute type</div></td>
    <td><div align="left"><%= rst.getString(18) %></div></td>
  </tr>
  <tr>
    <td><div align="right">college name</div></td>
    <td><div align="left"><%= rst.getString(19) %></div></td>
  </tr>
  <tr>
    <td><div align="right">college address</div></td>
    <td><div align="left"><%= rst.getString(20) %></div></td>
  </tr>
  <tr>
    <td><div align="right">tour district</div></td>
    <td><div align="left"><%= rst.getString(21) %></div></td>
  </tr>
  <tr>
    <td><div align="right">your taluk</div></td>
    <td><div align="left"><%= rst.getString(22) %></div></td>
  </tr>
  <tr>
    <td><div align="right">your village</div></td>
    <td><div align="left"><%= rst.getString(23) %></div></td>
  </tr>
  <tr>
    <td> <div align="right">your dipo</div></td>
    <td><div align="left"><%= rst.getString(24) %></div></td>
  </tr>
  <% } %>
</table>


