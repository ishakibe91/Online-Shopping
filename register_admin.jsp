<%@ page import="java.sql.*,java.lang.*"  %>
<html>
<head>
	<title>Online movei store template</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="userlogin.css" rel="stylesheet" type="text/css" />	
		 <link rel="stylesheet" href="css/bootstrap.min.css" />
</head>

<BODY>

</a>
<%!
	Connection con = null;
	ResultSet rs = null;

	String cust_id,cust_name,address,user_id,password,acct_no,ph_no,email_id,pin_code,pan_card_no;
       
        
   int sr,sr1,flag=1;
 %>
 <%


 //try
 //{

    cust_name = request.getParameter("name");
    address= request.getParameter("address");
    user_id = request.getParameter("userid");
    password= request.getParameter("passwd");
    
//    acct_no = request.getParameter("acct_no");
    ph_no= request.getParameter("phone_no");
    email_id = request.getParameter("emailid");
    pin_code= request.getParameter("pincode");
    
    pan_card_no= request.getParameter("pan_card_no");   



    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   Connection con = DriverManager.getConnection("jdbc:odbc:onlineshop","","");
    Statement stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    Statement stmt2 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
//    Statement stmt3 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
  
   //String query2="SELECT * FROM customer where user_id='" + user_id + "' and password='" + password + "'"; 
  
   String query1="SELECT * FROM customer"; 
      
   ResultSet rs1  = stmt1.executeQuery(query1);
   int custid;
   boolean slast=rs1.last();
   if (slast == true )
   {
   	custid=rs1.getInt("cust_id");
   	custid=custid+1;
   }
   else
   	custid=1; 
     
 //  int custid=2;
   
  // String query2="insert into customer(cust_id,cust_name,address,user_id,password,acct_no,ph_no,email_id,pin_code,pan_card_no,status)values("+custid+",'"+cust_name+"','"+address+"','"+user_id+"','"+password+"','"+acct_no+"','"+ph_no+"','"+email_id+"','"+pin_code+"','"+pan_card_no+"','admin')";  
   
   String query2="insert into customer(cust_id,cust_name,address,user_id,password,ph_no,email_id,pin_code,pan_card_no,status)values("+custid+",'"+cust_name+"','"+address+"','"+user_id+"','"+password+"','"+ph_no+"','"+email_id+"','"+pin_code+"','"+pan_card_no+"','admin')";    
   stmt2.executeUpdate(query2);
   sr = 0;
%>


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


  <div id="wrapper">
      <div id="inner">
          <div id="header">
              <div id="nav">
        <a href="about.html"><img src="./images/logo.png" alt="company logo"></a>
        <li><a href="index.html">Home</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="computer.jsp">Computer</a></li>
        <li><a href="laptop.jsp">Laptop</a></li>
        <li><a href="product.html">Products</a></li>
        <li><a href="contact.html">Contact Us</a></li>
    </div>
			  <!-- end nav -->
          </div><!-- end header -->
		  
  <table>		  
    <tr>
      <td width="15" height="596"></td>
      <td valign="top" width="80%" height="596"><font size="3"><br>



<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<Center>
  <div>
  		<p><font color="#490093"  size="5"><b>Record has been added for <%=cust_name%> !<b></font></p>
	      </div>
			<a class="bill-btn" href="adminlogin().jsp">Login Page</a> 
		  </Center>
	       




<%


/*flag=0;


    	}*/

//   }
%>






	  <% 
//	}
/*	else

	{ response.sendRedirect("trading.htm"); */ %>   
	<% 
//	}
	
	/*if(flag == 1){
	
	
	}*/

  %>

<HR>





        </font>

      </td>
    </tr>
  </table>



              </div><!-- end .inner -->
          </div><!-- end body -->
          
          <div class="clear"></div>
          <div id="footer">
              Web design by
              
              &nbsp;
              <div id="footnav">
                  <!--a href="http://www.freewebsitetemplates.com">Legal</a> | <a href="http://www.freewebsitetemplates.com">Privacy Policy</a-->
              </div><!-- end footnav -->
              
          </div><!-- end footer -->









</body>
  </html>





