<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*,java.lang.*,java.util.*,java.text.*"  %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Online movei store template</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="styles.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
<!--
.style1 {color: black}
-->
    </style>
</head>
<body>
  <div id="wrapper">
      <div id="inner">
          <div id="header">
              <h1><img src="images/images2.jpeg" width="519" height="63" alt="Online Movie Store" /></h1>
              <div id="nav"> <a href="userlogin.jsp?invalid=1" class="style1" ><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2 style="COLOR: black">Logout</font></a> <!--| 
        <a href="http://localhost:8032/examples/onlineshop/OrderServlet.jsp">view cart</a> | <a href="aboutus.html">about 
        us </a--> </div>
			  <!-- end nav -->
              <a href="http://www.freewebsitetemplates.com"><img src="images/images6.jpg" width="744" height="145" alt="Harry Potter cd" /></a>
              <a href="http://www.freewebsitetemplates.com"><img src="images/header_2.gif" width="745" height="48" alt="" /></a>
        </div><!-- end header -->
          <dl id="browse">
              <dt>Full Category Lists</dt>
              <dd class="first"><a href="index.html">Home</a></dd>
              <dd><a href="Frist.jsp">Bracelet</a></dd>
              <dd><a href="Second.jsp">Rings</a></dd>
              <dd><a href="Third.jsp">Earings</a></dd>
              <dd></dd>
              <dd><a href="Fourth.jsp">Pendant</a></dd>
              <dd><a href="Fifth.jsp">Mangalsutra</a></dd>
			  <dd class="last"><a href="Sixth.jsp">Other Accesories</a></dd>        
			  <%
		 //Connection con = null;	  
			//ResultSet rs1 = null;  
		    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   Connection con = DriverManager.getConnection("jdbc:odbc:onl_jwl","","");
   //Statement stmt2 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
   Statement stmt2 = con.createStatement();			  
		 String query1="Select count(*) from BasketDetails";	  
	 ResultSet rs1  = stmt2.executeQuery(query1); 		 
			  int Countrow=0;
			  //out.println(rs1.getInt(1));
       while(rs1.next()){
      Countrow = rs1.getInt(1);
	  
	  }  
	//  out.print("Countrow");
	  //out.print(Countrow);
	   // int Countrow=0;
	  if(Countrow > 0)
	  { 
			  %>    
			 <dd class="last"><a href="http://localhost:8085/examples/jwellery/view_cart.jsp">View Cart</a></dd>   
       <%
	   
	   } 
	   %>
	   
	      </dl>
          <%
		 
	      ResultSet rs2 = null;
		  
		    String prod_name="",category_name,description,description_name1="",description_value1="",description_name2,description_value2,imge="";
		 // double price;
		  int price=0,itm_code=0;

    Statement stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	Statement stmt3 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	Statement stmt4 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	 String category="Bracelet";
	   String query2="Select * from Product where category_name='"+category+"'";
	   String query3="";
        
      
   ResultSet rs3  = stmt1.executeQuery(query2);
ResultSet rs4  = null; 
  ResultSet rs5  = null;
	
//rs3.next();

while(rs3.next())
{
prod_name=rs3.getString("prod_name");
imge=rs3.getString("image");
         description_name1=rs3.getString("description_name1");
        description_value1=rs3.getString("description_value1");	
			  price=rs3.getInt("price"); 
		query3="Select * from ItemDetails where item_name='"+prod_name+"'";
              rs4  = stmt3.executeQuery(query3);
			  rs4.next();
			  itm_code=rs4.getInt("item_code");
			//  String prod_name="",category_name,description,description_name1="",description_value1="",description_name2,description_value2,imge="";
			  // int price=0,itm_code=0;
		  %>
          <div id="body">
              <div class="inner">
                  
                  <div class="leftbox">
                  <!--    <h3>18CT ROSE GOLD FLOWER PETAL DIAMOND FANCY LADIES BRACELET WITH SIDE LOCK</h3>-->
					     <h3><%=prod_name%></h3>
                       <!--  <img src="images/bracelet1.jpeg" width="93" height="95" alt="photo 1" class="left" /> -->
						 <img src="<%=imge%>" width="93" height="95" alt="photo 1" class="left" />
                         <form method=post action="http://localhost:8085/examples/jwellery/OrderServlet.jsp" style="COLOR: blue"><font size="4" color="#FF0000">Enter Quantity</font>&nbsp;
                        <INPUT type = "textbox" align=right name=HT_ITEM_QTY style="HEIGHT: 22px; WIDTH: 38px"  value=1>&nbsp;&nbsp;
                        <INPUT style="HEIGHT: 24px; WIDTH: 48px" type=submit value=Order  src="file:///G:/Pictures/titanic.ico" id=submit2 name=submit1>
                       <!-- <input name=HT_ITEM_CODE width="38px" type=hidden value=1001 style="HEIGHT: 22px; WIDTH: 42px" />  -->
						<input name=HT_ITEM_CODE width="38px" type=hidden value=<%=itm_code%> style="HEIGHT: 22px; WIDTH: 42px" /> 
                      </form>
					  
                      
          <!--<p><b>Price:</b> <b>Rs.56784</b></p> -->
		  <p><b>Price:</b> <b>Rs.<%=price%></b></p>
                      <!-- <p><b>Wet: 8.07 gm</b></p> -->
                      <p><b><%=description_name1%>: <%=description_value1%></b></p>
                      <div class="clear"></div>
                </div><!-- end .leftbox -->
                <%
				
				//rs4.close();
				//stmt3.close();
			query3="";
			 rs3.next();
				//if(rs3.next())
				//{
prod_name=rs3.getString("prod_name");
imge=rs3.getString("image");
         description_name1=rs3.getString("description_name1");
        description_value1=rs3.getString("description_value1");	
			  price=rs3.getInt("price");
			  itm_code=0;
				
				
				
						query3="Select * from ItemDetails where item_name='"+prod_name+"'";
              rs5  = stmt4.executeQuery(query3);
			  rs5.next();
				itm_code=rs5.getInt("item_code");
				%>
                <div class="rightbox">
                      <!--<h3>ROSE GOLD DIAMOND FANCY KADA BRACELET WITH SIDE LOCK</h3> -->
                      <h3><%=prod_name%></h3>
                      <!--<img src="images/bracelet2.jpeg" width="107" height="91" alt="photo 4" class="left" /> -->
					  <img src="<%=imge%>" width="107" height="91" alt="photo 4" class="left" />
                      <form method=post action="http://localhost:8085/examples/jwellery/OrderServlet.jsp" style="COLOR: blue"><font size="4" color="#FF0000">Enter Quantity</font>&nbsp;
                        <INPUT type = "textbox" align=right name=HT_ITEM_QTY style="HEIGHT: 22px; WIDTH: 38px"  value=1>&nbsp;&nbsp;
                        <INPUT style="HEIGHT: 24px; WIDTH: 48px" type=submit value=Order  src="file:///G:/Pictures/titanic.ico" id=submit2 name=submit1>
					 <!-- <INPUT name=HT_ITEM_CODE width="38px" type=hidden value=1002 style="HEIGHT: 22px; WIDTH: 42px">  -->
					  <INPUT name=HT_ITEM_CODE width="38px" type=hidden value=<%=itm_code%> style="HEIGHT: 22px; WIDTH: 42px"> 
					  
					  </form>
		  
          <!--<p><b>Price:</b> <b>Rs.56436</b></p>-->
                      <p><b>Price:</b> <b>Rs.<%=price%></b></p>
					  <!--<p><b>Wet:7.06 gm</b></p>-->
                      <p><b><%=description_name1%>: <%=description_value1%></b></p>
                      <div class="clear"></div>
                </div><!-- end .rightbox -->
                  <div class="clear br"></div>
				  
				  <%
//stmt3.close();
//rs4.close();

}
//}
//stmt1.close();
//rs3.close();				
	/*			rs3.next();
prod_name=rs3.getString("prod_name");
         description_name1=rs3.getString("description_name1");
        description_value1=rs3.getString("description_value1");	
			  price=rs3.getInt("price"); */
				
				
				%>

      <!--            <div class="leftbox"> -->
                    <!--  <h3>GLITTERING ROUND DIAMOND DUAL FLOWER DESIGN FANCY LADIES BRACELET</h3>-->
					<!--<h3><%//=prod_name%></h3>
                      <img src="images/bracelet3.jpeg" width="93" height="101" alt="photo 2" class="left" />
                      <form method=post action="http://localhost:8085/examples/jwellery/OrderServlet.jsp" style="COLOR: blue"><font size="4" color="#FF0000">Enter Quantity</font>&nbsp;
                        <INPUT type = "textbox" align=right name=HT_ITEM_QTY style="HEIGHT: 22px; WIDTH: 38px"  value=1>&nbsp;&nbsp;
                        <INPUT style="HEIGHT: 24px; WIDTH: 48px" type=submit value=Order  src="file:///G:/Pictures/titanic.ico" id=submit2 name=submit1>
					  <INPUT name=HT_ITEM_CODE width="38px" type=hidden value=1003 style="HEIGHT: 22px; WIDTH: 42px">
					  </form> -->
					  
                      
         <!-- <p><b>Price:</b> <b>Rs.45376</b></p>-->
		  <!--<p><b>Price:</b> <b>Rs.<%//=price%></b></p> -->
                      <!--<p><b>Wet:11.06 gm</b></p>-->
					   <!--<p><b><%//=description_name1%>: <%//=description_value1%></b></p>
                      
                      <div class="clear"></div>
                </div> --><!-- end .leftbox -->
				
				
				<%
				/*
				rs3.next();
prod_name=rs3.getString("prod_name");
         description_name1=rs3.getString("description_name1");
        description_value1=rs3.getString("description_value1");	
			  price=rs3.getInt("price");
				
				*/
				%>
                  <!--<div class="rightbox"> -->
                      
         <!-- <h3>STUNNING MULTI LAYERED DIAMOND LADIES KADA BRACELET</h3>-->
		         <!--  <h3><%//=prod_name%></h3>
                      
                   <img src="images/bracelet4.jpeg" width="90" height="103" alt="photo 5" class="left" />
                   <form method=post action="http://localhost:8085/examples/jwellery/OrderServlet.jsp" style="COLOR: blue"><font size="4" color="#FF0000">Enter Quantity</font>&nbsp;
                        <INPUT type = "textbox" align=right name=HT_ITEM_QTY style="HEIGHT: 22px; WIDTH: 38px"  value=1>&nbsp;&nbsp;
                        <INPUT style="HEIGHT: 24px; WIDTH: 48px" type=submit value=Order  src="file:///G:/Pictures/titanic.ico" id=submit2 name=submit1>
					  <INPUT name=HT_ITEM_CODE width="38px" type=hidden value=1004 style="HEIGHT: 22px; WIDTH: 42px">
				    </form> -->
		  
         <!-- <p><b>Price:</b> <b>Rs.45321</b></p>-->
		  <!--<p><b>Price:</b> <b><%//=price%></b></p>
                     <!-- <p><b>Wet: 7.06 gm </b></p>-->
					<!-- <p><b><%//=description_name1%>:<%//=description_value1%></b></p>
                      
                      <div class="clear"></div>
                </div><!-- end .rightbox -->

               <!--   <div class="clear br"></div> -->

             <%
				/*
				rs3.next();
prod_name=rs3.getString("prod_name");
         description_name1=rs3.getString("description_name1");
        description_value1=rs3.getString("description_value1");	
			  price=rs3.getInt("price");
				
				*/
				%>     
       <!-- <div class="leftbox">  -->
          <!--<h3>ROSE GOLD FLEXIBLE DIAMOND GENTS BRACELET</h3>-->
		 <!-- <h3><%//=prod_name%></h3>
                      <img src="images/bracelet5.jpeg" width="106" height="100" alt="photo 3" class="left" />
                      <form method=post action="http://localhost:8085/examples/jwellery/OrderServlet.jsp" style="COLOR: blue"><font size="4" color="#FF0000">Enter Quantity</font>&nbsp;
                        <INPUT type = "textbox" align=right name=HT_ITEM_QTY style="HEIGHT: 22px; WIDTH: 38px"  value=1>&nbsp;&nbsp;
                        <INPUT style="HEIGHT: 24px; WIDTH: 48px" type=submit value=Order  src="file:///G:/Pictures/titanic.ico" id=submit2 name=submit1>
					  <INPUT name=HT_ITEM_CODE width="38px" type=hidden value=1005 style="HEIGHT: 22px; WIDTH: 42px">
					  </form> -->
					  
                      
          <!--<p><b>Price:</b> <b>Rs.34978</b> </p>-->
		 <!--  <p><b>Price:</b> <b>Rs.<%//=price%></b> </p> -->
                      <!--<p><b>Wet:11.67 gm </b></p>-->
					 <!-- <p><b><%//=description_name1%>:<%//=description_value1%> </b></p>
					  
                      
                      <div class="clear"></div>
                </div> --><!-- end .leftbox -->
				
				<%
				/*
				rs3.next();
prod_name=rs3.getString("prod_name");
         description_name1=rs3.getString("description_name1");
        description_value1=rs3.getString("description_value1");	
			  price=rs3.getInt("price");
				
				*/
				%>
                  <!--<div class="rightbox"> -->
                      
         <!-- <h3>ROSE GOLD ROUND DIAMOND FANCY BRACELET</h3>-->
		  <!--<h3><%//=prod_name%></h3>
                      <img src="images/bracelet6.jpeg" width="91" height="99" alt="photo 6" class="left" />
                      <form method=post action="http://localhost:8085/examples/jwellery/OrderServlet.jsp" style="COLOR: blue"><font size="4" color="#FF0000">Enter Quantity</font>&nbsp;
                        <INPUT type = "textbox" align=right name=HT_ITEM_QTY style="HEIGHT: 22px; WIDTH: 38px"  value=1>&nbsp;&nbsp;
                        <INPUT style="HEIGHT: 24px; WIDTH: 48px" type=submit value=Order  src="file:///G:/Pictures/titanic.ico" id=submit2 name=submit1>
					  <INPUT name=HT_ITEM_CODE width="38px" type=hidden value=1006 style="HEIGHT: 22px; WIDTH: 42px">
					  </form> -->
					  
                      
          <!--<p><b>Price:</b> <b>Rs.45687</b></p>-->
		<!--  <p><b>Price:</b> <b>Rs.<%//=price%></b></p>
                      <!--<p><b>Wet: 8.65 gm </b></p>-->
					<!--  <p><b><%//=description_name1%>:<%//=description_value1%> </b>
					  
                      
                      <div class="clear"></div>
                </div> --><!-- end .rightbox -->

                 <!-- <div class="clear"></div> -->
                  
              </div><!-- end .inner -->
          </div><!-- end body -->
          
          <div class="clear"></div>
          <div id="footer">&nbsp;
              <div id="footnav">
                  <!--a href="http://www.freewebsitetemplates.com">Legal</a> | <a href="http://www.freewebsitetemplates.com">Privacy Policy</a-->
              </div><!-- end footnav -->
              
        </div><!-- end footer -->
      </div><!-- end inner -->
  </div><!-- end wrapper -->
</body>
</html>
