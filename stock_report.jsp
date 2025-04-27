<html>
<%@ page import="java.sql.*,java.lang.*,java.util.*,java.text.*" %>
<title>Stock Report</title>
<head>
    <link rel="stylesheet" href="tablet.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <!-- <link rel="stylesheet" href="css/style.css"> -->
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs -->
      <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">

</head>
<body>
<div id="nav">
        <a href="about.html"><img src="./images/logo.png" alt="company logo"></a>
        <li><a href="index.html">Home</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="product.html">Products</a></li>
        <li><a href="contact.html">Contact Us</a></li>
		<li><a href="adminlogin.jsp?ainvalid=1">Logout</a></li>
    </div>
	
<Center>
<br>
<table WIDTH=1087 BORDER=2 CELLPADDING=3 CELLSPACING=0>
 	
 
	<TR>
	<TD width=1081 height="77" colspan=2 valign="TOP" bgcolor="#490093">
	<FONT face=Verdana, Helvetica, Swiss, Arial" size=4 color="#ffffff">
           <a NAME="top">
		   <br>
	<B> <Center>Stock Report</Center></B></A> <BR>
	</FONT>
	</TR>
      </TABLE>
<TABLE WIDTH=1087 height="130" border=2 cellpadding=3 cellspacing=0>
	<tr BGCOLOR="#efe5ff">
        <th WIDTH=42 height="77" ALIGN="LEFT"><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2><Center>Item Code</Center></font></th>
	<th ALIGN="LEFT" WIDTH=245><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=3><Center>Item Name</Center></font></th>
	<th ALIGN="LEFT" WIDTH=50><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=3><Center>Price</Center></font></th>
        <th WIDTH=57 colspan="2" ALIGN="RIGHT"><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=3><Center>Quantity</Center></font></th>
	</tr>
	<CENTER>
	<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:onlineshop","","");
Statement stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
Statement stmt2 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
//String category = "Computer";
String query3 = "";
String query2 = "Select * from ItemDetails";
ResultSet rs3 = stmt1.executeQuery(query2);
ResultSet rs4 = null;


	String itm_code="";
	String itm_name="";
	int itm_price=0;
	String itm_qty="";
	
    /*String prod_name1 = "";
    String imge = "";
    String description_name1 = "";
    String description_value1 = "";
    String description_name2 = "";
    String description_value2 = "";
	String description_name3  = "";
    String description_value3 = "";
	String description_name4 = "";
    String description_value4 = "";
    int price = 0;
    String itm_code="";
	
	int cnt = 0;*/
while (rs3.next()) {
	
	/*prod_name1 = rs3.getString("prod_name");
	imge = rs3.getString("image");
	description_name1 = rs3.getString("description_name1");
	description_value1 = rs3.getString("description_value1");
	description_name2 = rs3.getString("description_name2");
	description_value2 = rs3.getString("description_value2");
	description_name3 = rs3.getString("description_name3");
	description_value3 = rs3.getString("description_value3");
	description_name4 = rs3.getString("description_name4");
	description_value4 = rs3.getString("description_value4");
	
	price = rs3.getInt("price");
	//out.println(prod_name);
	//query3="Select * from ItemDetails where item_name = ' " + prod_name + " ' ";
	query3="Select * from ItemDetails where item_name='"+prod_name1+"'";
	
	rs4=stmt2.executeQuery(query3);
	while(rs4.next())
	{
	itm_code= rs4.getString("item_code");*/
	itm_code=rs3.getString("item_code");
	itm_name=rs3.getString("item_name");
	itm_price=rs3.getInt("item_price");
	itm_qty=rs3.getString("item_quantity");
	
%>
       
 
 
       	  <tr style="COLOR: blue">
          <td WIDTH=42 height="52" ALIGN=LEFT><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2 style="COLOR:black">
	   <Center><%=itm_code%></Center></FONT>	  </td>
          <td ALIGN=LEFT WIDTH=245><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2 style="COLOR:black">
	  <Center><%=itm_name%></Center></FONT>
          </td>
			<td align=left WIDTH=50><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2 style="COLOR:black">
			 <Center><%=itm_price%></Center>  </FONT>
			</td>
			<td align=right WIDTH=57><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2 style="COLOR:black">
			<Center><%=itm_qty%></Center>
			</FONT>
			</td>
		</tr>
      </CENTER>
	  </Center>
	  
	  <%}%>
 
 
 
       
       
       


</table>


</body>
  </html>