<%@ page import="java.sql.*,java.lang.*"  %>
<html>
<head><title>Online Shopping :: Login</title>
		
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		
   <link rel="stylesheet" href="tablet.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/responsive.css">

		
	<style type="text/css">
.box {  font-family: Arial; font-size: 10px; color: #990000; text-decoration: none; border: #990000; border-style: outset; border-top-width: 2px; border-right-width: 2px; border-bottom-width: 2px; border-left-width: 2px}
.text {  font-family: Arial; font-size: 12px; font-weight: bold; color: #ffffff; text-decoration: none}
</style></head>

<BODY BGCOLOR="white" text="#FFCC99" link="#FFFFFF" alink="#FF3300" vlink="#FFFFFF">
<div id="nav">
        <a href="about.html"><img src="./images/logo.png" alt="company logo"></a>
        <li><a href="back.jsp">Home</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="computer.html">Computer</a></li>
        <li><a href="laptop.jsp">Laptop</a></li>
        <li><a href="userloginsuccess.jsp">Products</a></li>
        <li><a href="contact.html">Contact Us</a></li>
		<li><a href="userlogin.jsp">Logout</a></li>
    </div>


<%!
	Connection con = null;
	ResultSet rs = null;

	String cust_id,cust_name,address,user_id,password,acct_no,ph_no,email_id,pin_code,pan_card_no,item_name;
       int basketid=0;
      int itemcode,quantity,item_price,temp_price,temp_qty,totalprice; 
    double opbal=0.0;    
   int sr,sr1,flag=1;
 %>
 
 

  <div id="wrapper">
    <div id="inner">
          <div id="header">

      <div id="nav"><!--<a href="adminlogin.jsp">Admin</a> -->
         
          <!--<a href="aboutus.html">about 
        us </a> -->
        </p>
        </div>
      <!-- end nav -->
          </div>
          <p>
            <!-- end header -->
            
            
            
            
            <CENTER>
          </p>
          <p>&nbsp;         </p>
          <div id="backg">
      <table WIDTH=1087 BORDER=2 CELLPADDING=3 CELLSPACING=0>
 	
 
	<TR>
	<TD width=1081 height="77" colspan=2 valign="TOP" bgcolor="#490093">
	<FONT face=Verdana, Helvetica, Swiss, Arial" size=4 color="#ffffff">
           <a NAME="top">
		   <br>
	<B> <Center>Shopping Cart</Center></B></A> <BR>
	</FONT>
	</TR>
      </TABLE>
 <TABLE WIDTH=1087 height="130" border=2 cellpadding=3 cellspacing=0>
	<tr BGCOLOR="#efe5ff">
        <th WIDTH=42 height="77" ALIGN="LEFT"><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2><Center>Item Code</Center></font></th>
	<th ALIGN="LEFT" WIDTH=245><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2><Center>Item Name</Center></font></th>
	<th ALIGN="LEFT" WIDTH=50><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2><Center>Price</Center></font></th>
        <th WIDTH=57 ALIGN="RIGHT"><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2><Center>Quantity</Center></font></th>
	<th WIDTH=50 ALIGN=CENTER><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2><Center>Total Price</Center></font></th>
	<th WIDTH=428 ALIGN=CENTER><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2><Center>Availability</Center></font></th>
	</tr>
	<CENTER>
 
 
 
 <%


 //try
 //{

    String itemcodeStr = request.getParameter("HT_ITEM_CODE");
        /////////////////////////////////////
       // System.out.println(itemcodeStr);
        /////////////////////////////////////
        itemcode=Integer.parseInt(itemcodeStr);
        String quantityStr = request.getParameter("HT_ITEM_QTY");
        quantity = Integer.parseInt(quantityStr); 

int item_quantity=0;

    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   Connection con = DriverManager.getConnection("jdbc:odbc:onlineshop","","");
    Statement stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    //Statement stmt2 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	Statement stmt2 = con.createStatement();
    
	Statement stmt3 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    Statement stmt4 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    Statement stmt5 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);   
   //String query2="SELECT * FROM customer where user_id='" + user_id + "' and password='" + password + "'"; 
  
   //String query1="Select max(basket_id) 'basket_id' from BasketDetails"; 
      String query1="Select max(basket_id) from BasketDetails";
   ResultSet rs1  = stmt2.executeQuery(query1);
   
   
   while(rs1.next())
           	   {
		     //basketid =rs1.getInt("basket_id");
			 basketid =rs1.getInt(1);
   }
   basketid = basketid + 1;  
   
   //basketid=1;
   
  /* int custid;
   boolean slast=rs1.last();
   if (slast == true )
   {
   	custid=rs1.getInt("cust_id");
   	custid=custid+1;
   }
   else
   	custid=1; */
     
 //  int custid=2;
   
    
       String query2="Select item_price,item_name,item_quantity from ItemDetails where item_code = " + itemcode; 
      
   ResultSet rs2  = stmt1.executeQuery(query2);
   
   
   
   while(rs2.next())
           	   {
				item_price=rs2.getInt("item_price");
         item_name=rs2.getString("item_name");
        item_quantity=rs2.getInt("item_quantity");
        
        }	
      item_quantity=item_quantity-quantity;       
         
String sql="update ItemDetails set item_quantity="+item_quantity+" where item_code="+itemcode+"";
   
   stmt5.executeUpdate(sql);
   
  // String query3="insert into customer(cust_id,cust_name,address,user_id,password,acct_no,opbalance,ph_no,email_id,pin_code,pan_card_no,status)values("+custid+",'"+cust_name+"','"+address+"','"+user_id+"','"+password+"','"+acct_no+"',"+opbal+",'"+ph_no+"','"+email_id+"','"+pin_code+"','"+pan_card_no+"','nuser')";  
   String query3="INSERT INTO BasketDetails (basket_id,item_code,b_qty,item_price,item_name) VALUES ("+basketid+","+itemcode+","+quantity+","+item_price+",'"+item_name+"')";
   stmt3.executeUpdate(query3);
   sr = 0;
   
   
       //String query4="Select item_price,b_qty,item_code,item_name from BasketDetails where basket_id = " + basketid;
	   String query4="Select item_price,b_qty,item_code,item_name from BasketDetails";
      
	  %>
      <input type="hidden" name="basket_id" value=<%=basketid%>>
      
      <% 
   ResultSet rs3  = stmt4.executeQuery(query4);
   int item_code=0;
   String item_name=null;
   
   while(rs3.next())
           	   {
				
				temp_price=rs3.getInt("item_price");
           temp_qty=rs3.getInt("b_qty");
           totalprice=temp_price * temp_qty; 
           item_code=rs3.getInt("item_code");
           item_name=rs3.getString("item_name");
           %>
              
       
 
 
       	  <tr style="COLOR: blue">
          <td WIDTH=42 height="52" ALIGN=LEFT><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2 style="COLOR:black">
	   <Center><%=item_code%></Center></FONT>	  </td>
          <td ALIGN=LEFT WIDTH=245><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2 style="COLOR:black">
	  <Center><%=item_name%></Center></FONT>
          </td>
			<td align=left WIDTH=50><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2 style="COLOR:black">
			 <Center><%=temp_price%></Center>  </FONT>
			</td>
			<td align=right WIDTH=57><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2 style="COLOR:black">
			<Center><%=temp_qty%></Center>
			</FONT>
			</td>
                        <td align=right WIDTH=50><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2 style="COLOR:black">
			<Center><%=totalprice%></Center>
			</FONT>
			</td>
			<td ALIGN="CENTER" WIDTH=428><FONT FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2>
                        <font color=#006600><b style="COLOR: #5f06ac">Usually ships in 24 hours</b></font>
		    </FONT></td>
		</tr>
      </CENTER>
 
 
 
       
       
       
       <%  }	
   
   
%>

</table>


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <p><A href="http:\\localhost:8080\examples\Online_Shop\newacctentry.htm?basket_id=<%=basketid%>"><font face="face" color="black" size="5">Bill 
      Now</font></A> 
      <!--p>&nbsp;</p-->
      <%
/*
 if(rs1!=null)
	  {


	    while(rs1.next())

	      {
        //    mname = rs1.getString("Moviename");
            cust_name = rs1.getString("cust_name");
            address = rs1.getString("address");*/
       //    user_id = rs1.getString("user_id");
            





		
%>
    </p>
    </div>
  <!-- end .inner -->
    </div><!-- end body -->
          
          <div class="clear"></div>
          <div id="footer">
              
              &nbsp;
              <div id="footnav">
                  <!--a href="http://www.freewebsitetemplates.com">Legal</a> | <a href="http://www.freewebsitetemplates.com">Privacy Policy</a-->
              </div><!-- end footnav -->
              
          </div><!-- end footer -->
      </div><!-- end inner -->
  </div><!-- end wrapper -->


/</div>
</center>





</body>
  </html>





