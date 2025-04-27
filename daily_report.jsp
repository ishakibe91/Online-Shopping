<%@ page import="java.sql.*,java.lang.*,java.util.*,java.text.*"  %>
<html>
<head><title>Daily Report</title>
		
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		
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
		

		
	<style type="text/css">
.box {  font-family: Arial; font-size: 10px; color: #990000; text-decoration: none; border: #990000; border-style: outset; border-top-width: 2px; border-right-width: 2px; border-bottom-width: 2px; border-left-width: 2px}
.text {  font-family: Arial; font-size: 12px; font-weight: bold; color: #ffffff; text-decoration: none}
</style></head>

<BODY BGCOLOR="white" text="#990000" link="#FFFFFF" alink="#FF3300" vlink="#FFFFFF">


<%!
	Connection con = null;
	ResultSet rs = null;

	String cust_id,cust_name,address,user_id,password,acct_no,ph_no,email_id,pin_code,pan_card_no,item_name;
       int basketid;
      int itemcode,quantity,item_price,temp_price,temp_qty,totalprice; 
    double opbal=0.0;    
   int sr,sr1,flag=1;
   String cust_last_name,cust_address2,cust_address1,cust_first_name;
   int bill_no,c_total_price;
 %>
 
 <%							
							 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm");
                             java.util.Date date = new java.util.Date();                             
                             
                             
                             SimpleDateFormat fSDateFormat = null;
                             SimpleDateFormat fSDateFormatnbse = null;
							 //fSDateFormat = new SimpleDateFormat ("EEEEEE,MMMMM d  yyyy HH:mm Z");
							// fSDateFormat = new SimpleDateFormat ("EEEEEE,MMMMM d,  yyyy, HH:mm");
							 fSDateFormatnbse = new SimpleDateFormat ("dd-MMM-yyyy");
//							  fSDateFormat = new SimpleDateFormat ("MM/dd/yyyy");
							  fSDateFormat = new SimpleDateFormat ("dd/MM/yyyy");							  
							  
    						  java.util.Date now = new java.util.Date ();
    						  // And create a date/time string in the desired format.
							  String date_out = fSDateFormat.format (now);
							  String nbse = fSDateFormatnbse.format (now);                             
		                    %>

  <div id="wrapper">
      <div id="inner">
          <div id="header">
      <div id="nav">
        <a href="about.html"><img src="./images/logo.png" alt="company logo"></a>
        <!--<li><a href="index.html">Home</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="product.html">Products</a></li> 
        <li><a href="contact.html">Contact Us</a></li>-->
		<li><a href="adminlogin.jsp?ainvalid=1">Logout</a></li>
    </div>
      <!-- end nav -->
          </div><!-- end header -->


<center>

<br>
<table WIDTH=1087 BORDER=2 CELLPADDING=3 CELLSPACING=0>
 	
 
	<TR>
	<TD width=1081 height="71" colspan=2 valign="TOP" bgcolor="#490093">
	<FONT face=Verdana, Helvetica, Swiss, Arial" size=4 color="#ffffff">
           <a NAME="top">
		   <br>
	<B><Center> Daily Report Report</Center></B></A> <BR>
	</FONT>
	</TR>
      </TABLE>
 <TABLE cellspacing=0 cellpadding=3 border=2 WIDTH=1084>
 	<tr BGCOLOR="#efe5ff">
        <th WIDTH=41 height="77" ALIGN="LEFT"><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2>
        <Center>Bill No.</Center></font></th>
	<th ALIGN="LEFT" WIDTH=219><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2>
	  <Center>Customer First Name</Center></font></th>
	<th ALIGN="LEFT" WIDTH=163><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2>
	  <Center>Customer Last Name</Center></font></th>
        <th WIDTH=95 ALIGN="RIGHT"><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2>
        <Center>Customer Address</Center></font></th>
	<th WIDTH=536 ALIGN=CENTER><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2>
	  <Center>Total Price</Center></font></th>
	</tr>
	<CENTER>
 
 
 
 <%


 //try
 //{

    
        /////////////////////////////////////
       // System.out.println(itemcodeStr);
        /////////////////////////////////////
    
    
    



    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   Connection con = DriverManager.getConnection("jdbc:odbc:onlineshop","","");
    Statement stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    Statement stmt2 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    Statement stmt3 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    Statement stmt4 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
   //String query2="SELECT * FROM customer where user_id='" + user_id + "' and password='" + password + "'"; 
  
  /* String query1="Select max(basket_id) 'basket_id' from BasketDetails"; 
      
   ResultSet rs1  = stmt1.executeQuery(query1);
   
   
   while(rs1.next())
           	   {
		     basketid =rs1.getInt("basket_id");
   }
   basketid = basketid + 1;  */
   
   basketid=1;
   
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
   
    
       //String query2="Select * from CustBill where order_date='"+date_out+"'";
       String query2="Select * from CustBill where order_date=#"+date_out+"#";
//	   String query2="Select * from CustBill where order_date=#16/03/2011#";
	   
        
      
   ResultSet rs2  = stmt1.executeQuery(query2);
   
   
   
   while(rs2.next())
           	   {
				bill_no=rs2.getInt("bill_no");
         cust_last_name=rs2.getString("cust_last_name");
				cust_address2=rs2.getString("cust_address2");
         cust_address1=rs2.getString("cust_address1");
				cust_first_name=rs2.getString("cust_first_name");
         c_total_price=rs2.getInt("c_total_price");
        	
       
         

   
   
   
  // String query3="insert into customer(cust_id,cust_name,address,user_id,password,acct_no,opbalance,ph_no,email_id,pin_code,pan_card_no,status)values("+custid+",'"+cust_name+"','"+address+"','"+user_id+"','"+password+"','"+acct_no+"',"+opbal+",'"+ph_no+"','"+email_id+"','"+pin_code+"','"+pan_card_no+"','nuser')";  
 /*  String query3="INSERT INTO BasketDetails (basket_id,item_code,b_qty,item_price,item_name) VALUES ("+basketid+","+itemcode+","+quantity+","+item_price+",'"+item_name+"')";
   stmt3.executeUpdate(query3);
   sr = 0;
   
   
       String query4="Select item_price,b_qty,item_code,item_name from BasketDetails where basket_id = " + basketid;   */
      %>
    
      
      <% 
   /*ResultSet rs3  = stmt4.executeQuery(query4);
   int item_code=0;
   String item_name=null;
   
   while(rs3.next())
           	   {
				
				temp_price=rs3.getInt("item_price");
           temp_qty=rs3.getInt("b_qty");
           totalprice=temp_price * temp_qty; 
           item_code=rs3.getInt("item_code");
           item_name=rs3.getString("item_name");   */
           %>
              
       
 
 
       	  <tr style="COLOR: #5f06ac">
          <td ALIGN=LEFT WIDTH=41><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2 style="COLOR: #5f06ac">
	   <Center><%=bill_no%></Center><br></FONT>	  </td>
          <td ALIGN=LEFT WIDTH=219><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2>
	  <Center><%=cust_first_name%></Center><br></FONT>
          </td>
			<td align=left WIDTH=163><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2>
			 <Center><%=cust_last_name%></Center><br>  </FONT>
			</td>
			<td align=right WIDTH=95><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2>
			<%=cust_address1%> <%=cust_address2%></Center><br>
			</FONT>
			</td>
                        <td align=right WIDTH=536><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2>
			<Center><%=c_total_price%></Center><br>
			</FONT>
			</td>
	
		</tr>
      </CENTER>
 
 
 
       
       
       
       <%  
       
       }	
   
   
%>

</table>


    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    
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
      <!-- end inner -->
  <!-- end wrapper -->






</center>


</body>
  </html>





