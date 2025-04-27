<!DOCTYPE html PUBLIC>
<!--"-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd" -->
<%@ page import="java.sql.*,java.lang.*"  %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Welcome to CLA</title>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	 <link rel="stylesheet" href="tablet.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/responsive.css">
	<link rel="stylesheet" href="css/style.css" /> 

</head>
<body>
	
	 <div id="nav">
        <a href="about.html"><img src="./images/logo.png" alt="company logo"></a>
        <li><a href="index.html">Home   </a></li>
		
        <li><a href="about.html">About</a></li>
		
        <li><a href="computer.html">Computer</a></li>
		
        <li><a href="laptop.html">Laptop</a></li>
		
        <li><a href="product.html">Products</a></li>
        <li><a href="contact.html">Contact Us</a></li>
		<li><a href="userlogin.jsp?invalid=1">Logout</a></li>
		<li><a href="viewCart.jsp">View Cart</a></li>		
    </div> 
  <div id="wrapper">
      <div id="inner">
          <div id="header"><!--a href="adminlogin.jsp">Admin</a> |-->  <!--| 
        <a href="http://localhost:8080/examples/onlineshop/OrderServlet.jsp">view cart</a>--> <!--| <a href="aboutus.html">about 
        us </a-->
      <!-- end nav -->
          </div>
		  </div>
		  </div><!-- end header -->
		  
			
		  


<!--   Code for  username and password checking   -->



          <div id="body">
              <div class="inner">
<p align="left" bgcolor="#227293" ><CENTER><marquee><font size="5" color="#FF0000">W E L C O M E  T O  O N L I N E  S H O P P I N G </font></marquee></CENTER>
          </p>
<p align="left" bgcolor="#227293"><font color="white" size="4">So go ahead and enjoy shopping.</font></p>                  
                                  
              </div><!-- end .inner -->
          </div><!-- end body -->
           <div  class="products">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="titlepage">
                     <h2>Our Products</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12">
                  <div class="our_products">
                     <div class="row">
                        <div class="col-md-4 margin_bottom1">
                           <div class="product_box">
                              <figure><img src="images/black_computerimages.png" alt="#"/></figure>
                              <a href="computer.jsp"><h3>Computer</h3></a>
                           </div>
                        </div>
                        <div class="col-md-4 margin_bottom1">
                           <div class="product_box">
                              <figure><img src="images/Laptop_title.png" alt="#"/></figure>
                              <a href="laptop.jsp"><h3>Laptop</h3></a>
                           </div>
                        </div>
                        <div class="col-md-4 margin_bottom1">
                           <div class="product_box">
                              <figure><img src="images/Tab_title.png" alt="#"/></figure>
                              <a href="tablet.jsp"><h3>Tablet</h3></a>
                           </div>
                        </div>
                        <div class="col-md-4 margin_bottom1">
                           <div class="product_box">
                              <figure><img src="images/product4.png" alt="#"/></figure>
                              <a href="speakers.jsp"><h3>Speakers</h3></a>
                           </div>
                        </div>
                        <div class="col-md-4 margin_bottom1">
                           <div class="product_box">
                              <figure><img src="images/product5.png" alt="#"/></figure>
                              <a href="internet.jsp"><h3>internet</h3></a>
                           </div>
                        </div>
                        <div class="col-md-4 margin_bottom1">
                           <div class="product_box">
                              <figure><img src="images/product6.png" alt="#"/></figure>
                              <a href="hardisk.jsp"><h3>Hardisk</h3></a>
                           </div>
                        </div>
                        <div class="col-md-4">
                           <div class="product_box">
                              <figure><img src="images/product7.png" alt="#"/></figure>
                             <!-- <a href="rams.jsp"><h3>Rams</h3></a> -->
							  <!--<a href="nrams.jsp"><h3>Rams</h3></a> -->     
							  <a href="rams.jsp"><h3>Rams</h3></a>                     
                            </div>
                        </div>
                        <div class="col-md-4">
                           <div class="product_box">
                              <figure><img src="images/product8.png" alt="#"/></figure>
                              <a href="battery.jsp"><h3>Battery</h3></a>
                           </div>
                        </div>
                        <div class="col-md-4">
                           <div class="product_box">
                              <figure><img src="images/product9.png" alt="#"/></figure>
                              <a href="drive.jsp"><h3>Drive</h3></a>
                           </div>
                        </div>
          <div class="clear"></div>
          <div id="footer">
              &nbsp;
              <div id="footnav">
                  <!--a href="http://www.freewebsitetemplates.com">Legal</a> | <a href="http://www.freewebsitetemplates.com">Privacy Policy</a-->
              </div><!-- end footnav -->
              
          </div><!-- end footer -->
      </div><!-- end inner -->
  </div><!-- end wrapper -->
</body>
</html>