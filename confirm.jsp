<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body {
	background-color: white;
}
.style4 {
	color: #330033;
	font-weight: bold;
	font-size: 18px;
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
  background-image: linear-gradient(blue,red);
}



</style>
<script type="text/javascript">


</script>


<body>
 <p>
   <%@ include file="db.jsp" %>
    <%@ include file="adminmenu.html" %>
</p>

 <p>&nbsp;</p>
 <p>&nbsp;</p>
 <p>&nbsp;</p>
 <p align="center" class="style4"> This Form is for only for Students who are Still Studying </p>
 <p align="center" class="style4"> Are you Ready to Apply for buspass Application</p>
 <p align="center" class="style4">   Click the apply Button to proceed</p>
 <p align="center" class="style4">&nbsp;</p>
 <form action="" method="post">
 <div>
   <div align="center">
    <a href="form.jsp" target="_self" class="style2"><button type="button" name="Submit">apply</button>
	
     </div>
 </div>

