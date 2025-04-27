<%@ page import="java.sql.*,java.lang.*,java.util.*,java.text.*" %>
<title>Batteries</title>
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


<div id="nav">
        <a href="about.html"><img src="./images/logo.png" alt="company logo"></a>
        <li><a href="index.html">Home</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="computer.html">Computer</a></li>
        <li><a href="laptop.html">Laptop</a></li>
        <li><a href="product.html">Products</a></li>
        <li><a href="contact.html">Contact Us</a></li>
		<li><a href="viewCart.jsp">View Cart</a></li>
    </div>
<!-- Product List -->
<div class="product-list">	
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection con = DriverManager.getConnection("jdbc:odbc:onlineshop","","");
Statement stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
Statement stmt2 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
String category = "Battery";
String query3 = "";
String query2 = "Select * from product where category_name='" + category + "'";
ResultSet rs3 = stmt1.executeQuery(query2);
ResultSet rs4 = null;


    String prod_name1 = "";
    String imge = "";
    String description_name1 = "";
    String description_value1 = "";
    String description_name2 = "";
    String description_value2 = "";
    int price = 0;
    String itm_code="";
	
	int cnt = 0;
while (rs3.next()) {
	
	prod_name1 = rs3.getString("prod_name");
	imge = rs3.getString("image");
	description_name1 = rs3.getString("description_name1");
	description_value1 = rs3.getString("description_value1");
	description_name2 = rs3.getString("description_name2");
	description_value2 = rs3.getString("description_value2");
	price = rs3.getInt("price");
	//out.println(prod_name);
	//query3="Select * from ItemDetails where item_name = ' " + prod_name + " ' ";
	query3="Select * from ItemDetails where item_name='"+prod_name1+"'";
	
	rs4=stmt2.executeQuery(query3);
	while(rs4.next())
	{
	itm_code= rs4.getString("item_code");
%>

<!-- Navbar -->



    <div class="product-item">
	<form method=post action="http://localhost:8080/examples/Online_Shop/OrderServlet.jsp" style="COLOR: black">
        <img src="<%= imge %>" alt="">
        <div class="product-specs">
            <h3><%= prod_name1 %></h3>
            <b><p>Price: <%= price %></p></b>
            <ul>
                <li><%= description_name1 %>: <%= description_value1 %></li><br/>
                <li><%= description_name2 %>: <%= description_value2 %></li>
            </ul
			><font size="4" color="seagreen">Enter Quantity</font>&nbsp;
                        <INPUT type = "textbox" align=right name=HT_ITEM_QTY style="HEIGHT: 22px; WIDTH: 38px"  value=1>&nbsp;&nbsp;                       <INPUT style="HEIGHT: 24px; WIDTH: 48px" type=submit value=Order class="order-btn"  
						src="images/computer1jpg.jpg" id=submit2 name=submit1>
		 		  <INPUT name=HT_ITEM_CODE width="38px" type=hidden value= <%= itm_code%> style="HEIGHT: 22px; WIDTH: 42px">
				  </form>
        </div>
    </div>
<%
}
    cnt++;
    if (cnt % 4 == 0 && cnt < 8) { // Close and open a new row after every 4 products, but not after the last set
        out.println("</div><div class='product-list'>");
    }
}
	rs4.close();
	rs3.close();
    stmt1.close();
    stmt2.close();
    con.close();
%>
</div>