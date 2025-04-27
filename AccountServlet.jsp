<%@ page import="java.sql.*,java.lang.*,java.util.*,java.text.*"  %>
<link href="styles.css" rel="stylesheet" type="text/css" />
   <link href="userlogin.css" rel="stylesheet" type="text/css" />
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

<title>Finalizing the Order</title>
<link rel="stylesheet" href="bill.css">
</head>
<BODY TEXT=#000000 LINK=#0000ff VLINK=#000099>
<div id="nav">
        <a href="about.html"><img src="./images/logo.png" alt="company logo"></a>
        <li><a href="index.html">Home</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="computer.html">Computer</a></li>
        <li><a href="laptop.html">Laptop</a></li>
        <li><a href="product.html">Products</a></li>
        <li><a href="contact.html">Contact Us</a></li>
    </div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<font color="#3366CC"></font> </a> 
<%!
	Connection con = null;
	ResultSet rs = null;

	String cust_id,cust_name,address,user_id,password,acct_no,ph_no,email_id,pin_code,pan_card_no;
   
     String custname,c_pin,c_phone,custaddr,c_email;  
  // String basketid=null;
   int basketid1=0,basketid;    
       
       int bill_no;
    double opbal=0.0;    
   int sr,sr1,flag=1;
   java.util.Date date;
DateFormat df;
 %>
 
<%



	     	 String[]  AccountFields= new String[23];
                 String    pparam;
                 int i = 1;
  // THIS SECTION WILL GET IN INPUT PARAMETER FROM NEWACCENTRY[1].HTM AND INSERTS INTO TABLE
                // PrintWriter pw = response.getWriter();

                 String f_name =request.getParameter("HT_First_Name");

                 String l_name=request.getParameter("HT_Last_Name");

		 custname = f_name + " " + l_name;

                 String c_addr1=request.getParameter("HT_Bill_Address1");

                 String c_addr2=request.getParameter("HT_Bill_Address2");

                 String c_city=request.getParameter("HT_Bill_City");

                 String c_state=request.getParameter("HT_Bill_State");

                  c_pin=request.getParameter("HT_Bill_Pin");

                  c_phone=request.getParameter("HT_Phone");

                 String c_country=request.getParameter("HT_Bill_Country");

		 custaddr = c_addr1 + " " + c_addr2 + " " + c_city + " " + c_state + " " + c_country ;

                 String r_name=request.getParameter("HT_Ship_Name");


                   if(r_name.equals("")) r_name=f_name+" "+l_name;


                 String r_addr1=request.getParameter("HT_Ship_Address1");
                  if(r_addr1.equals("")) r_addr1=c_addr1;

                 String r_addr2=request.getParameter("HT_Ship_Address2");
                   if(r_addr2.equals("")) r_addr2=c_addr2;

                 String r_city=request.getParameter("HT_Ship_City");
                  if(r_city.equals("")) r_city=c_city;

                 String r_state=request.getParameter("HT_Ship_State");
              	 if(r_state.equals("")) r_state=c_state;

                 String r_pin=request.getParameter("HT_Ship_Pin");
		 if(r_pin.equals("")) r_pin=c_pin;

                 String r_country=request.getParameter("HT_Ship_Country");
         	  if(r_country.equals("")) r_country=c_country;

                  c_email=request.getParameter("HT_email");
				  
				  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   Connection con = DriverManager.getConnection("jdbc:odbc:onlineshop","","");
    Statement stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    Statement stmt2 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    Statement stmt3 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    Statement stmt4 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    Statement stmt5 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
   //String query2="SELECT * FROM customer where user_id='" + user_id + "' and password='" + password + "'"; 
  
   //String query1="Select max(bill_no) 'bill_no' from CustBill"; 
   
   //String query1="Select max(bill_no) 'bill_no' from CustBill";
   
   //String query1="Select max(bill_no) from CustBill";
   
   String query1="Select bill_no from CustBill";
   
       
   
      
   ResultSet rs1  = stmt1.executeQuery(query1);
   boolean slast=rs1.last();
   
   while(rs1.next())
           	   {
		     //bill_no =rs1.getInt("bill_no");
		     bill_no =rs1.getInt(1);		     
		     
   }
   bill_no = bill_no + 1;
   
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
   %>
   
   <% 
   
       String htmlString = "<html><head><title>Giftshop Finalize Order</title></head>\n";
       htmlString = htmlString + "<BODY BGCOLOR=#FFFFFF TEXT=#000000 LINK=#0000FF VLINK=#000099>\n\t";
       htmlString =htmlString + "<CENTER><TABLE WIDTH=600 BORDER=0 CELLPADDING=0 CELLSPACING=0>\n\t"
        + "\t<TR>\n"
        + "\t<TD WIDTH=600 VALIGN=TOP>\n"
	+ "\t\t<TABLE WIDTH=100% BORDER=0 CELLPADDING=0 CELLSPACING=0>\n"
	+ "\t\t<TR>\n"
	+ "\t\t\t<TD colspan=4>\n"
        + "\t\t\t<TABLE WIDTH=100% BORDER=0 CELLPADDING=3 CELLSPACING=0>\n"
	+ "\t\t\t<TR>\n"
	+ "\t\t\t<TD bgcolor=#5f06ac valign=\"TOP\" colspan=2 width=100>\n"
	+ "\t\t\t<FONT face=\"Helvetica, Swiss, Arial\" size=4 color=#ffffff>\n"
        + "\t\t\t<a NAME=\"top\">\n"
        + "\t\t\t<B><CENTER>Ready to Finalize Order</CENTER></B></A><BR></FONT>\n"
        + "\t\t\t</TD>\n"
        + "\t\t\t</TR>\n"
        + "\t\t\t</TABLE>\n"
        + "\t\t\t<table WIDTH=600 BORDER=0 CELLPADDING=3 CELLSPACING=0>\n"
        + "\t\t\t\t<tr BGCOLOR=\"#8907fa\">\n"
        + "\t\t\t\t<th width=50% align=left>\n"
        + "\t\t\t\t<FONT FACE=\"Verdana, Helvetica, Swiss, Arial\" size=4 ><CENTER>Bill To:</CENTER>\n"
        + "\t\t\t\t</th>\n"
        + "\t\t\t\t</tr>\n"
        + "\t\t\t\t<tr>\n"
        + "\t\t\t\t<td>\n"
        + "\t<FONT FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=\"2\">\n"

        + "\tBill no :\t\t\t" + bill_no
        +"<br> Name  : \t\t	" +custname + "<BR>\n"
	+ "Address : \t" + custaddr + "<br>Pin : " + c_pin + "<br>Phone no : " + c_phone

	+  "<br>Email : " + c_email + "<br>\t</FONT>\n"
	+ "\t</td>\n"
        + "\t</tr>\n"
        + "\t</table>\n"
	+ "</td>\n"
        + "</tr>\n"

        + "<!--<TR>\n"
        + "<TD COLSPAN=2>\n"
        + "<FONT FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=\"2\"><br>\n"
        + "<a href=\"http://localhost:8085\\examples\\jwellery\\newacctentry.htm\"><b>Change Account Information</b>\n"
        + "</FONT>\n"
        + "</a><br>\n"
        + "</TD>\n"
        + "</TR>-->\n"
        + "</table>\n"


        +"<table WIDTH=600 BORDER=0 CELLPADDING=3 CELLSPACING=0>"
	+"<TR>"
	+"<TD bgcolor=#5f06ac valign=\"TOP\" colspan=2 width=600>"
	+"<FONT face=\"Verdana, Helvetica, Swiss, Arial\" size=4 color=white>"
        +"<a NAME=\"top\">"
	+"<B><CENTER>Shopping Cart</CENTER></B></A><BR></FONT>"
	+"</TR>"
      +"</TABLE>"
 +"<TABLE cellspacing=0 cellpadding=3 border=0 WIDTH=600>"
+"<tr BGCOLOR=\"#8907fa\">"
        +"<th ALIGN=LEFT WIDTH=50><font FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>Item Code</font></th>"
	+"<th ALIGN=LEFT WIDTH=310><font FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>Item Name</font></th>"
	+"<th ALIGN=LEFT WIDTH=50><font FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>Price</font></th>"
        +"<th WIDTH=50 ALIGN=RIGHT><font FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>Quantity</font></th>"
	+"<th WIDTH=50 ALIGN=CENTER><font FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>Total Price</font></th>"
	+"<th WIDTH=120 ALIGN=CENTER><font FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>Availability</font></th>"
	+"</tr>"
	+"<CENTER>";

   out.println(htmlString);
   
   
   
   %>
   
   
   
   
    <%
    
     
	 
	   //String query2="Select item_price,b_qty,item_code,item_name from BasketDetails where basket_id = " + basketid +""; 
	   String query2="Select item_price,b_qty,item_code,item_name from BasketDetails";
      
   ResultSet rs2  = stmt2.executeQuery(query2);
   
   int temp_price,temp_qty,totalprice,item_totalprice=0,item_code=0;
   String item_name="";
   
   while(rs2.next())
           	   {
			   
           
           item_name=rs2.getString("item_name");


           temp_price=rs2.getInt("item_price");
           temp_qty=rs2.getInt("b_qty");
           totalprice=temp_price * temp_qty;
		   item_code=rs2.getInt("item_code");
           item_totalprice+=totalprice;


           out.println("<tr>");
          out.println("<td ALIGN=LEFT WIDTH=5><font FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>");
	  out.println(""+rs2.getInt("item_code") +"  "+"</FONT>");
	  out.println("</td>");
          out.println("<td ALIGN=LEFT WIDTH=200><font FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>");
	  out.println(""+rs2.getString("item_name") +"  "+"</FONT>");
          out.println("</td>"
			+"<td align=left WIDTH=50><font FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>"
			+ temp_price +"  "+"</FONT>"
			+"</td>"
			+"<td align=right WIDTH=50><font FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>"
			+ temp_qty
			+"</FONT>"
			+"</td>"
                        +"<td align=right WIDTH=50><font FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>"
			+ totalprice
			+"</FONT>"
			+"</td>"
			+"<td ALIGN=\"CENTER\" WIDTH=120><FONT FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>"
                        +"<font color=#006600><b>Usually ships in 24 hours</b></font>"
		    +"</FONT></td>"
		+"</tr>"
                +"</CENTER>"); 
				
				          }

/*				item_price=result.getInt("i_price");
         item_name=result.getString("item_name");*/
        /*
		}	
       
         item_totalprice+=50;
       
         int final_dis_price=0,final_dis_price1=0;

         
          out.println("</TABLE><BR>"
	+ "<TABLE Border=0 WIDTH=600 CELLPADDING=3 CELLSPACING=0>"
        +"<tr "
        + "BGCOLOR=#EEEEEE>"
	 +"<TD ALIGN=LEFT><FONT FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>"
	+"<B>"
        +"Shipping and Handling </b></FONT></td>"
        +"<td align=RIGHT><FONT FACE=\"Verdana, Helvetica, Swiss, Arial\" size=2>"
        +"Rs 50</FONT></td>"
	+" <td ALIGN=CENTER><FONT FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>"
	+"<B>"
        +"First Class (1-7 Days)</B>"
	+"</FONT>"
        +"</td>"
        +"</TR>	");

        if(item_totalprice > 2000)
        {
        
        final_dis_price=item_totalprice*5/100;
        item_totalprice=item_totalprice-final_dis_price;
     out.println("<tr><td ALIGN=LEFT><FONT FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>"
        +"<b>DISCOUNT</b></FONT>"
        +"</td>"+"<td align=RIGHT><FONT FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>"
        + final_dis_price +"</FONT></tr>");
     out.println("<tr><td ALIGN=LEFT><FONT FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>"
        +"<b>TOTAL</b></FONT>"
        +"</td>"
        +"<td align=RIGHT><FONT FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>"
        + item_totalprice +"</FONT>");    
     
        }  
     else{
     
    out.println("<tr><td ALIGN=LEFT><FONT FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>"
        +"<b>TOTAL</b></FONT>"
        +"</td>"
        +"<td align=RIGHT><FONT FACE=\"Verdana, Helvetica, Swiss, Arial\" SIZE=2>"
        + item_totalprice +"</FONT>");     
     
     }   	

	out.println("</td>	"
        +"<td>&nbsp;</td>"
        +" </TR>"
	+"</TABLE>"); 
	
	
	*/
	
	 %>
</div>
  <!-- end .inner -->
          </div><!-- end body -->
          
          <div class="clear"></div
              ><div id="footnav">
                  <!--a href="http://www.freewebsitetemplates.com">Legal</a> | <a href="http://www.freewebsitetemplates.com">Privacy Policy</a-->
              </div><!-- end footnav -->
      </div><!-- end inner -->
  </div><!-- end wrapper -->
   
   
   <%
   
   
   
   
   
   
        int dt;
	    date = new java.util.Date();
	    dt=date.getMonth();
	    dt=dt+1;
	    //System.out.println(dt);
	    df=DateFormat.getDateInstance(DateFormat.LONG,Locale.UK);
	 
	    String query3="INSERT INTO CustBill (bill_no,order_no,order_date,cust_last_name,cust_email,cust_address2,"
 			+" cust_address1,cust_state,cust_first_name,receiver_country,receiver_address2, "
			+" receiver_address1,cust_country,cust_pin, "
			+" cust_city,cust_phone,receiver_state,receiver_name, "
			+" receiver_pin,receiver_city,c_total_price,c_basket_id) "
          		+" VALUES ("+bill_no+","+dt+",'"
			+ df.format(date)
			+"','"+l_name+"','"+c_email+"','"+c_addr2+"','"+c_addr1+"','"+c_state+"','"+f_name+"','"+r_country+"','"+r_addr2+"','"+r_addr1+"','"+c_country+"','"+c_pin+"','"+c_city+"','"+c_phone+"','"+r_state+"','"+r_name+"','"+r_pin+"','"+r_city+"',"+item_totalprice+","+basketid+")";



       	    stmt3.executeUpdate(query3);


   
   
   
 //  String query4="delete from BasketDetails where basket_id = " + basketid + "";
   String query4="delete from BasketDetails";
   
   
   
   stmt4.executeUpdate(query4);

//   int bal=bal-item_totalprice;
  // query4="select * from customer where basket_id = " + basketid + "";
   
  // ResultSet rs3  = stmt4.executeQuery(query1);
    //  String query5="update customer set opbalance= where basket_id = " + basketid + "";
   
   
  // stmt5.executeUpdate(query5);
   
   /*String query3="insert into customer(cust_id,cust_name,address,user_id,password,acct_no,opbalance,ph_no,email_id,pin_code,pan_card_no,status)values("+custid+",'"+cust_name+"','"+address+"','"+user_id+"','"+password+"','"+acct_no+"',"+opbal+",'"+ph_no+"','"+email_id+"','"+pin_code+"','"+pan_card_no+"','nuser')";  
   String query3="INSERT INTO BasketDetails (basket_id,item_code,b_qty,item_price,item_name) VALUES ("+basketid+","+itemcode+","+quantity+","+item_price+",'"+item_name+"')";
   stmt3.executeUpdate(query3);
   sr = 0;
   
   
       String query4="Select item_price,b_qty,item_code,item_name from BasketDetails where basket_id = " + basketid;
      
   ResultSet rs3  = stmt4.executeQuery(query4);
   int item_code=0;
   String item_name=null;
   
   while(rs3.next())
           	   {
				
				temp_price=rs3.getInt("item_price");
           temp_qty=rs3.getInt("b_qty");
           totalprice=temp_price * temp_qty; 
           item_code=rs3.getInt("item_code");
           item_name=rs3.getString("item_name");*/
     
	 
	       %>
              
       
 
 
       	  <!--tr style="COLOR: blue">
          <td ALIGN=LEFT WIDTH=5><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2 style="COLOR: blue"-->
	   <!--item_code>
	   <FONT>	  <td--> 
          <!--td ALIGN=LEFT WIDTH=200><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2>
	  <item_name></FONT>
          </td>
			<td align=left WIDTH=50><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2-->
			 <!--temp_price>  </FONT>
			</td>
			<td align=right WIDTH=50><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2>
			<temp_qty>
			<FONT>
			<td>
                        <td align=right WIDTH=50><font FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2>
			<totalprice>
			</FONT>
			</td>
			<td ALIGN="CENTER" WIDTH=120><FONT FACE="Verdana, Helvetica, Swiss, Arial" SIZE=2>"
                        <font color=#006600><b style="COLOR: blue">Usually ships in 24 hours</b></font>
		    </FONT></td>
		</tr>
                </CENTER>
 
 
 
       
       
       
       <%  
       
     //  }	
   
   
%>

</table-->
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










</CENTER>

</body>
  </html>






