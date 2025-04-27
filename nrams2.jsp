<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*,java.lang.*,java.util.*,java.text.*"  %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RAMS</title>
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
        <li><a href="computer.html">Computer</a></li>
        <li><a href="laptop.html">Laptop</a></li>
        <li><a href="product.html">Products</a></li>
        <li><a href="contact.html">Contact Us</a></li>
    </div>
    <!-- <div id="products">
    <div class="prod-list">
        <img src="./images/tablet1.png" alt="ipad"> 
        <span>Ipad 4</span>
        <p>34,000 rupees</p>
        <p>M1 chipset</p>
        <p>5G connectivity</p>
        

    </div>
    <div class="prod-list">
        <img src="./images/tablet2.png" alt="samsung tablet">
        <span>Samsung tab 5</span>
        <p>24,000 rupees</p>
        <p>4GB RAM</p>
        <p>5G connectivity</p>

    </div>
    <div class="prod-list">
        <img src="./images/tablet3.png" alt="TCL tablet">
        <div class="prod-list">
        <span>TCL air 7 </span>
        <p>16,000 rupees</p>
        <p>4GB RAM</p>
        <p>5G connectivity</p>
        </div>
    </div>
    </div> -->
    <!-- -------------- -->
    <!-- Product list container -->
    <!-- Product list container -->
		<%
		 //Connection con = null;	  
			//ResultSet rs1 = null;  
		    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   Connection con = DriverManager.getConnection("jdbc:odbc:onlineshop","","");
   //Statement stmt2 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
  // Statement stmt2 = con.createStatement();
   
      ResultSet rs2 = null;
		  
		    String prod_name="",category_name,description,description_name1="",description_value1="",description_name2,description_value2,imge="";
		 // double price;
		  int price=0,itm_code=0;

    //Statement stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	Statement stmt1 = con.createStatement();
	String category = "RAM";
	   String query2="Select * from product where category_name='"+category+"'";
	   
	     ResultSet rs3  = stmt1.executeQuery(query2);
		 while(rs3.next())
{
  prod_name=rs3.getString("prod_name");
  imge=rs3.getString("image");  
  description_name1=rs3.getString("description_name1");
  description_value1=rs3.getString("description_value1");
  description_name2=rs3.getString("description_name2");
  description_value2=rs3.getString("description_value2");
	price=rs3.getInt("price");
   %>
<div class="product-list">
    <!-- Individual product item -->
    <div class="product-item">
      <!-- Product image -->
	  <form method=post action="http://localhost:8080/examples/Online_Shop/OrderServlet.jsp" style="COLOR: black">
      <!--<a href="Hpram.html"><img src="images/RAM2.jpg" alt="Product 1"></a> -->
      <a href="Hpram.html"><img src="<%=imge%>" alt="Product 1"></a>
      <!-- Product specifications -->
      <div class="product-specs">
        <!--<h2>Hp ram</h2> --> 
        <h2><%=prod_name%></h2>
		<h2></h2>		
        <ul>
          <!--<b><li>Price: Rs9,000</li></b> -->
		  <b><li>Price: <%=price%></li></b>
          <!--<li>Brand: Hp</li><br> -->
          <li><%=description_name1%>: <%=description_value1%></li><br>
		  <!-- <li>Color: Grey,RoseGold,Black</li> -->
          <!--<li>Size:8GB</li><br> -->
          <li><%=description_name2%>:<%=description_value2%></li><br>
		  <!-- <li>Memory: 512GB</li> -->
        </ul>
      </div>
	  <font size="4" color="seagreen">Enter Quantity</font>&nbsp;
                        <INPUT type = "textbox" align=right name=HT_ITEM_QTY style="HEIGHT: 22px; WIDTH: 38px"  value=1>&nbsp;&nbsp;
                        <INPUT style="HEIGHT: 24px; WIDTH: 48px" type=submit value=Order  src="images/computer1jpg.jpg" id=submit2 name=submit1>
		 		  <INPUT name=HT_ITEM_CODE width="38px" type=hidden value=7001 style="HEIGHT: 22px; WIDTH: 42px">
	  </form>
    </div>
	<%
	rs3.next();
	prod_name=rs3.getString("prod_name");
  imge=rs3.getString("image");  
  description_name1=rs3.getString("description_name1");
  description_value1=rs3.getString("description_value1");
  description_name2=rs3.getString("description_name2");
  description_value2=rs3.getString("description_value2");
	price=rs3.getInt("price");	
	
	
	%>
    <hr>
    <!-- Individual product item -->
    <div class="product-item">
      <!-- Product image -->
	  <form method=post action="http://localhost:8080/examples/Online_Shop/OrderServlet.jsp" style="COLOR: black">
      <!--<a href="Samram.html"><img src="images/RAM1.jpg" alt="Product 2"></a> -->
	  <a href="Samram.html"><img src="<%=imge%>" alt="Product 2"></a>
      <!-- Product specifications -->
      <div class="product-specs">
        <!--<h2>Sam ram</h2> -->
        <h2><%=prod_name%></h2>
	    <ul>
          <!--<b><li>Price: Rs11,500</li></b> -->
          <b><li>Price: <%=price%></li></b>
	      <!--<li>Brand: Samsung</li><br> -->
          <li><%=description_name1%>: <%=description_value1%></li><br>
	      <!-- <li>Color: White,Black</li> -->
          <!--<li>Size:8GB</li> -->
          <li><%=description_name2%>:<%=description_value2%></li>
	      <!-- <li>Memory: 512GB</li> -->
        </ul>
      </div>
	  <font size="4" color="seagreen">Enter Quantity</font>&nbsp;
                        <INPUT type = "textbox" align=right name=HT_ITEM_QTY style="HEIGHT: 22px; WIDTH: 38px"  value=1>&nbsp;&nbsp;
                        <INPUT style="HEIGHT: 24px; WIDTH: 48px" type=submit value=Order  src="images/computer1jpg.jpg" id=submit2 name=submit1>
		 		  <INPUT name=HT_ITEM_CODE width="38px" type=hidden value=7002 style="HEIGHT: 22px; WIDTH: 42px">
	  </form>
    </div>
	<%
	rs3.next();
	prod_name=rs3.getString("prod_name");
  imge=rs3.getString("image");  
  description_name1=rs3.getString("description_name1");
  description_value1=rs3.getString("description_value1");
  description_name2=rs3.getString("description_name2");
  description_value2=rs3.getString("description_value2");
	price=rs3.getInt("price");	
	
	
	%>
    <hr>
    <!-- Individual product item -->
    <div class="product-item">
      <!-- Product image -->
	  <form method=post action="http://localhost:8080/examples/Online_Shop/OrderServlet.jsp" style="COLOR: black">
      <a href="XMS3.html"><img src="<%=imge%>" alt="Product 3"></a>
      <!-- Product specifications -->
      <div class="product-specs">
        <h2><%=prod_name%></h2>
        <ul>
          <b><li>Price: <%=price%></li></b>
		<li><%=description_name1%>: <%=description_value1%></li><br>          
<!-- <li>Color: Grey</li> -->
          <!-- <li>RAM:8GB</li> -->
          <li><%=description_name2%>:<%=description_value2%></li>
        </ul>
      </div>
	  <font size="4" color="seagreen">Enter Quantity</font>&nbsp;
                        <INPUT type = "textbox" align=right name=HT_ITEM_QTY style="HEIGHT: 22px; WIDTH: 38px"  value=1>&nbsp;&nbsp;
                        <INPUT style="HEIGHT: 24px; WIDTH: 48px" type=submit value=Order  src="images/computer1jpg.jpg" id=submit2 name=submit1>
		 		  <INPUT name=HT_ITEM_CODE width="38px" type=hidden value=7003 style="HEIGHT: 22px; WIDTH: 42px">
	  </form>
    </div>
	<%
	rs3.next();
	prod_name=rs3.getString("prod_name");
  imge=rs3.getString("image");  
  description_name1=rs3.getString("description_name1");
  description_value1=rs3.getString("description_value1");
  description_name2=rs3.getString("description_name2");
  description_value2=rs3.getString("description_value2");
	price=rs3.getInt("price");	
	
	
	%>
    <hr>
    <!-- Add more product items here -->
    <div class="product-item">
      <!-- Product image -->
	  <form method=post action="http://localhost:8080/examples/Online_Shop/OrderServlet.jsp" style="COLOR: black">
      <a href="Iram.html"><img src="<%=imge%>" alt="Product 4"></a>
      <!-- Product specifications -->
      <div class="product-specs">
        <h2><%=prod_name%></h2>
        <ul>
          <b><li>Price: <%=price%></li></b>
		  <li><%=description_name1%>: <%=description_value1%></li><br />
          <li><%=description_name2%>:<%=description_value2%></li>

          <!-- <li>Color: Black,White</li> -->
          <!-- <li>RAM:16GB</li> -->
          <!--<li>Size: 4GB</li> -->
        </ul>
      </div>
	  <font size="4" color="seagreen">Enter Quantity</font>&nbsp;
                        <INPUT type = "textbox" align=right name=HT_ITEM_QTY style="HEIGHT: 22px; WIDTH: 38px"  value=1>&nbsp;&nbsp;
                        <INPUT style="HEIGHT: 24px; WIDTH: 48px" type=submit value=Order  src="images/computer1jpg.jpg" id=submit2 name=submit1>
		 		  <INPUT name=HT_ITEM_CODE width="38px" type=hidden value=7004 style="HEIGHT: 22px; WIDTH: 42px">
	  </form>
    </div>
    <!-- Add more product items here -->
  </div>
 <%
 
 }
 
 %>
  <hr>
  
  <!-- Modal container for product details -->
  <div class="modal" id="product-modal">
    <!-- Modal content -->
    <div class="modal-content">
      <span class="close">&times;</span>
      <h2 id="product-name"></h2>
      <p id="product-description"></p>
      <ul id="product-specs">
        <!-- Specs will be populated dynamically -->
      </ul>
    </div>
  </div>
  
</body>
</html>