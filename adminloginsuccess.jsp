<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page import="java.sql.*,java.lang.*"  %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>Admin Page</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="userlogin.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/bootstrap.min.css" />
</head>
<body>
              
      <div id="nav">
	  <a href="about.html"><img src="./images/logo.png" alt="company logo"></a>
        <!--<li><a href="index.html">Home</a></li> 
        <li><a href="about.html">About</a></li>
        <li><a href="computer.html">Computer</a></li>
        <li><a href="laptop.html">Laptop</a></li>
        <li><a href="product.html">Products</a></li>
        <li><a href="contact.html">Contact Us</a></li>-->
	 <li><a href="adminlogin().jsp?ainvalid=1">Logout</a></li> 
	  </div>
      <!-- end nav --><!-- end header -->
	  <Center>
          <dl id="browse">
              <dt><b>Full Category Lists</b></dt><br>
              <dd class="first"><a class="bill-btn" href="daily_report.jsp">Daily Report</a></dd>
              <dd></dd><br>
              
      <dd><a class="bill-btn" href="stock_report.jsp">Stock Report</a></dd> <br>
	    <dd><a class="bill-btn" href="categorywise_report1.jsp">Categorywise Report</a></dd><br>
              <dd><a class="bill-btn" href="suggestion_report.jsp">Customer Suggestion Report</a></dd><br>
              <dd><a class="bill-btn" href ="new_admin.html" class="bottomlinks"><!--font color="blue"-->New Admin User<!--/font--></a></dd><br>
              <dd><a class="bill-btn" href="add_product.jsp">Add New Product</a></dd>
              <dd></dd>
              
          </dl>
		  </Center>
<%


	Statement selectSt;
	Connection c;
	PreparedStatement updateSt;
	ResultSet result;
    int flag=0;
    int invalid;

String username=request.getParameter("USR_ID");
//String username=request.getParameter("");

String dbUrl="jdbc:odbc:onlineshop";
					 String login = new String(request.getParameter("USR_ID"));
					 String passwd = new String(request.getParameter("USR_PSSWRD"));
//String username=request.getParameter("USR_ID");


					 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
  	 				 //c=DriverManager.getConnection(dbUrl,"sa", "sa");   //GET CONNECTION TO DATABASE
  	 				 
  	 				 c=DriverManager.getConnection(dbUrl,"", "");   //GET CONNECTION TO DATABASE  	 				 


					 selectSt =c.createStatement();
					 //selectSt.execute("Select password from member where login ='"+login+"'");
	 				 selectSt.execute("Select * from customer where status='admin'");

            		 result = selectSt.getResultSet();


					// System.out.println("hiii");
					 while(result.next())
					      {
							if(login.equals(result.getString("user_id")))
							{
							   if(passwd.equals(result.getString("password")))
							    {
					               System.out.println("got it");
					               flag=1;
					               break;
						        }
						    }

            			  }
            			  
            			  
	                 if(flag!=1)
	                 {
            			  
					 //  PrintWriter p = response.getWriter();	
				      // p.println("Not Successfull");
				      // p.println("<script> alert ('Invalid User'); </script>");	
				       %>
				       Not Successfull
				       <script> alert ('Invalid User'); </script>
				      <% 
				      
				       response.sendRedirect("http://localhost:8080/examples/Online_Shop/adminlogin.jsp?ainvalid=0");
            			  
            			  }


%>          
          <div id="body">
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
</body>
</html>
