<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
        <!--<li><a href="index.html">Home</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="product.html">Products</a></li>
        <li><a href="contact.html">Contact Us</a></li> -->
		<li><a href="adminlogin.jsp?ainvalid=1">Logout</a></li>
    </div>
 
<%
String prodqty=request.getParameter("pqty");
String prodname=request.getParameter("pname");
String catname=request.getParameter("category");
String description=request.getParameter("pdescription");
String desc1=request.getParameter("pdesc1");
String val1=request.getParameter("pval1");
String desc2=request.getParameter("pdesc2");
String val2=request.getParameter("pval2");
String desc3=request.getParameter("pdesc3");
String val3=request.getParameter("pval3");
String desc4=request.getParameter("pdesc4");
String val4=request.getParameter("pval4");
String price=request.getParameter("pprice");

session.setAttribute("Prodqty",prodqty);
session.setAttribute("Prodname",prodname);
session.setAttribute("Catname",catname);
session.setAttribute("description",description);
session.setAttribute("description1",desc1);
session.setAttribute("Value1",val1);
session.setAttribute("description2",desc2);
session.setAttribute("Value2",val2);
session.setAttribute("description3",desc3);
session.setAttribute("Value3",val3);
session.setAttribute("description4",desc4);
session.setAttribute("Value4",val4);
session.setAttribute("Price",price);


%>
  <form action = "add_product2.jsp" method = "POST" enctype="multipart/form-data">
         <br>
		 
        <b>Product Image   :</b> <input name="fileName"   class="add-prod" type="file" name="myImage" accept="image/png, image/gif, image/jpeg" /><br><br>
        <br>
         <input type = "submit" value = "Submit" />
      </form>
<!--<a href="second.jsp">Display the value</a> -->
 
</body>  
</html>