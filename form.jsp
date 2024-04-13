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
.style5 {font-size: large}

-->
</style>
<script type="text/javascript">

</script>

</head>

<body>
 <p>
   <%@ include file="db.jsp" %>
    <%@ include file="adminmenu.html" %>
</p>
 <p>&nbsp;</p>
 <p>&nbsp;</p>
 <p>&nbsp;</p>
 <p align="center" class="style4">If You Mentioned Details are Wrong then the Application will be Rejected.</p>
 <p align="center" class="style4">&nbsp;</p>
 <center>
 <form action="" method="post">      
   <table width="1031" height="819" border="2" align="center" cellpadding="1">

    <tr>
      <td ><div align="right">Enter Your Name :
          </div>
      </div></td>
      <td width="496">
        <div align="left">
          <input name="name" type="text" value="<%= session.getAttribute("username") %>" "  readonly="" />
        </div></td>
    </tr>
    <tr>
      <td><div align="right">Enter Your Father Name : 
          </div>
      </div></td>
      <td>
        <div align="left">
          <input name="pname" type="text" />
        </div></td>
    </tr>
	 <tr>
      <td ><div align="right">Enter Your Mother Name :
          </div>
      </div></td>
      <td>
        <div align="left">
          <input name="mname" type="text" />       
         </div></td>
    </tr>
    <tr>
      <td><div align="right">Select Gender </div></td>
      <td><p align="left">
        <label>
          <input type="radio" name="gender" value="Male" />
          Male</label>
       
          <input type="radio" name="gender" value="Female" />
          Female</label>
        <br />
      </p></td>
    </tr>
   <tr>
      <td ><div align="right">Enter Your Age :
          </div>
      </div></td>
      <td>
        <div align="left">
          <input name="age" type="text" />       
        </div></td>
  </tr>
	<tr>
      <td><div align="right">Enter Your aadhar number :
          </div>
      </div></td>
      <td>
        <div align="left">
          <input name="adno" type="text" />       
        </div></td>
    </tr>
	<tr>
      <td> <div align="right">Your Mobile no :
          </div>
      </div></td>
      <td>
        <div align="left">
          <input name="mobile" type="text"  value="<%= session.getAttribute("phone") %>" "  readonly="" />
        </div></td>
    </tr>
	<tr>
      <td > <div align="right">Your Email :
          </div>
      </div></td>
      <td>
        <div align="left">
          <input name="email" type="text" value="<%= session.getAttribute("email") %>" "  readonly="" />
        </div></td>
    </tr>
	<tr>
      <td><div align="right">Enter Permanent Address :
          </div>
      </div></td>
      <td>
        <div align="left">
          <input name="paddress" type="text" />
        </div></td>
    </tr>
	<tr>
      <td ><div align="right">Enter Temporary Address :
          </div>
      </div></td>
      <td>
        <div align="left">
          <input name="taddress" type="text" />       
        </div></td>
    </tr>
      <td ><div align="right">Select Category 
          </div>
      </div></td>
      <td><div align="left"><strong>
        <select name="category">
          <option>select</option>
          <option>General</option>
          <option>OBC</option>
          <option>SC</option>
          <option>ST</option>
        </select>
      </strong></div></td>
    </tr>
    <tr>
      <td><div align="right">Profession
          </div>
      </div></td>
      <td><div align="left"><strong>
        <select name="profession">
          <option>Select</option>
          <option>Degree</option>
          <option>PUC</option>
          <option>Diploma</option>
        </select>
      </strong></div></td>
    </tr>
	<tr>
      <td ><div align="right">Course
          </div>
      </div></td>
      <td><div align="left"><strong>
        <select name="course">
          <option>Select</option>
          <option>BCA</option>
          <option>BCOM</option>
          <option>BSC</option>
          <option>BA</option>
        </select>
      </strong></div></td>
    </tr>
	<tr>
      <td ><div align="right">Class
          </div>
      </div></td>
      <td><div align="left"><strong>
        <select name="class1">
          <option>Select</option>
          <option>1st Year</option>
          <option>2nd Year</option>
          <option>3rd Year</option>
        </select>
      </strong></div></td>
    </tr>
	<tr>
      <td><div align="right">Pass From :
          </div>
      </div></td>
      <td>
        <div align="left">
          <input name="fromad" type="text" />       
        </div></td>
    </tr>
	<tr>
      <td><div align="right">Pass To :
          </div>
      </div></td>
      <td>
        <div align="left">
          <input name="toad" type="text" />       
        </div></td>
    </tr>
	<tr>
      <td><div align="right">Route Change Place :
          </div>
      </div></td>
      <td>
        <div align="left">
          <input name="route" type="text" />       
        </div></td>
    </tr>
	<tr>
	  <td><div align="right">Select Institution Type </div></td>
      <td><p align="left">
        <label>
          <input type="radio" name="itype" value="Government" />
          Government</label>
       
          <input type="radio" name="itype" value="Private" />
         Private</label>
        <br />
      </p></td>
	  </tr>
	<tr>
      <td ><div align="right">College name :
          </div>
      </div></td>
      <td>
        <div align="left">
          <input name="cname" type="text" />       
        </div></td>
    </tr>
	<tr>
      <td><div align="right">College Address :
          </div>
      </div></td>
      <td>
        <div align="left">
          <input name="caddress" type="text" />       
        </div></td>
    </tr>
	<tr>
      <td><div align="right">Select District
          </div>
      </div></td>
      <td><div align="left"><strong>
        <select name="district">
          <option>Select</option>
          <option>Shimoga</option>
          <option>Davanagere</option>
          <option>Chitradurga</option>
        </select>
      </strong></div></td>
    </tr>
	<tr>
      <td ><div align="right">Select Taluk 
          </div>
      </div></td>
      <td><div align="left"><strong>
        <select name="taluk">
          <option>Select</option>
          <option>Bhadravati</option>
          <option>Shimoga</option>
          <option>Channagiri</option>
          <option>Harihara</option>
          <option>Honnalli</option>
          <option>Holalkere</option>
        </select>
      </strong></div></td>
    </tr>
	<tr>
      <td ><div align="right">Enter village :
          </div>
      </div></td>
      <td>
        <div align="left">
          <input name="village" type="text" />       
        </div></td>
    </tr>
	<tr>
      <td><div align="right">Dipo Division 
          </div>
      </div></td>
      <td><div align="left"><strong>
        <select name="dipo">
          <option>Select</option>
          <option>Shimoga</option>
          <option>Davanagere</option>
          <option>Chitradurga</option>
        </select>
      </strong></div></td>
    </tr>
	
	<tr> 
	<td>
	  <div align="center" class="style5"> Once you Submit you cannot edit this application,</div>
	 
	<div class="style5">  
	  <div align="center">please confirm before submit.      </div>
	</div></td>
	
	 <td >
	  
        <div align="center">
          <input name="Submit" type="submit"  value="Submit" />
          <input name="Reset" type="reset"  value="Reset" />
          </div>
        </div></td>
	</tr>
</table>

</form>
</center>   
<% 
if(request.getParameter("Submit")!=null){
try
{

String name=request.getParameter("name");
String pname=request.getParameter("pname");
String mname=request.getParameter("mname");
String gender=request.getParameter("gender");
String age=request.getParameter("age");
String adno=request.getParameter("adno");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String paddress=request.getParameter("paddress");
String taddress=request.getParameter("taddress");
String category=request.getParameter("category");
String profession=request.getParameter("profession");
String course=request.getParameter("course");
String class1=request.getParameter("class1");
String fromad=request.getParameter("fromad");
String toad=request.getParameter("toad");
String route=request.getParameter("route");
String itype=request.getParameter("itype");
String cname=request.getParameter("cname");
String caddress=request.getParameter("caddress");
String district=request.getParameter("district");
String taluk=request.getParameter("taluk");
String village=request.getParameter("village");
String dipo=request.getParameter("dipo");

int x=stmt.executeUpdate("insert into form (name,pname,mname,gender,age,adno,mobile,email,paddress,taddress,category,profession,course,class1,fromad,toad,route,itype,cname,caddress,district,taluk,village,dipo) values('"+name +"','"+pname +"','"+mname+"','"+gender+"','"+age+"','"+adno+"','"+mobile+"','"+email+"','"+paddress+"','"+taddress+"','"+category+"','"+profession+"','"+course+"','"+class1+"','"+fromad+"','"+toad+"','"+route+"','"+itype+"','"+cname+"','"+caddress+"','"+district+"','"+taluk+"','"+village+"','"+dipo+"')");

if(x!=0){
//out.print("Applcation Submitted seccuessfilly");
}
		
		%>
		<script>
		alert("application sent successfully");
		
		window.open("viewdata.jsp","_self");
		</script>
<%
}catch(Exception e){
out.println(e);
}
}

 %>

   
   
   
   
   
   
   
   
   
   
   
   
   
   
</body>
</html>
