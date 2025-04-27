<%@ page import="java.sql.*,java.lang.*"  %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
 <%@ page import="java.sql.*,java.lang.*"  %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.output.*" %>
<html>
<head>
	<title>Add the product</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link href="userlogin.css" rel="stylesheet" type="text/css" />	
		 <link rel="stylesheet" href="css/bootstrap.min.css" />
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

<BODY>
<div id="nav">
        <a href="about.html"><img src="./images/logo.png" alt="company logo"></a>
        <!--<li><a href="index.html">Home</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="product.html">Products</a></li>
        <li><a href="contact.html">Contact Us</a></li> -->
		<li><a href="adminlogin.jsp?ainvalid=1">Logout</a></li>
    </div>
<%
   File file ;
   int maxFileSize = 5000 * 1024;
   int maxMemSize = 5000 * 1024;
   //String filePath = "E:/guru99/data";
   
//      String filePath = "E:/D Drive/ddrivebckup16sept2014/samir/data";
//	  String filePath = "E:/Tomcat 4.1/webapps/examples/FileUpload1/images";
	  String filePath = "D:/Apache Group/Tomcat 4.1/webapps/examples/Online_Shop/images";
//   E:\D Drive\ddrivebckup16sept2014\samir\data

   String contentType = request.getContentType();
   if ((contentType.indexOf("multipart/form-data") >= 0)) {

      DiskFileItemFactory factory = new DiskFileItemFactory();
      factory.setSizeThreshold(maxMemSize);
      factory.setRepository(new File("c:\\temp"));
      ServletFileUpload upload = new ServletFileUpload(factory);
      upload.setSizeMax( maxFileSize );
      try{ 
         List fileItems = upload.parseRequest(request);
         Iterator i = fileItems.iterator();
         out.println("<html>");
         out.println("<body>");
         while ( i.hasNext () ) 
         {
            FileItem fi = (FileItem)i.next();
            if ( !fi.isFormField () )  {
                String fieldName = fi.getFieldName();
                String fileName = fi.getName();
                boolean isInMemory = fi.isInMemory();
                long sizeInBytes = fi.getSize();
                //file = new File( filePath + "yourFileName") ;
				file = new File( filePath + "/" + fileName) ;
                fi.write( file ) ;
               // out.println("Uploaded Filename: " + filePath + "/" + fileName + "<br>");
				session.setAttribute("Flname",fileName);
            }
         }
        // out.println("</body>");
      //   out.println("</html>");
      }catch(Exception ex) {
         System.out.println(ex);
      }
   }else{
      out.println("<html>");
      out.println("<body>");
      out.println("<p>No file uploaded</p>"); 
      out.println("</body>");
      out.println("</html>");
   }
%>
</a>
<%!
	Connection con = null;
	ResultSet rs = null;

	String categ,p_name,p_imge,p_desc,p_desc1,p_val1,p_desc2,p_val2,p_desc3,p_val3,p_desc4,p_val4,p_price;
       
        
   int sr,sr1,flag=1;
 %>
 <h1>Your Product Added Successfully</h1>
 <a class="order-btn" href="add_product.jsp">Back</a>
 <%


 //try
 //{
	String prodname   = (String) session.getAttribute("Prodname");
	String catname    = (String) session.getAttribute("Catname");
    String imgfle    = (String)session.getAttribute("Flname");
	imgfle="images/" + imgfle;
	String p_qty      = (String) session.getAttribute("Prodqty");
	String p_desc     = (String) session.getAttribute("description");
	String p_desc1    = (String) session.getAttribute("description1");
    String p_val1     = (String) session.getAttribute("Value1");
    String p_desc2    = (String) session.getAttribute("description2");
    String p_val2     = (String) session.getAttribute("Value2");
	String p_desc3    = (String) session.getAttribute("description3");
    String p_val3     = (String) session.getAttribute("Value3");
	String p_desc4    = (String) session.getAttribute("description4");
    String p_val4     = (String) session.getAttribute("Value4");   
    String p_price    = (String) session.getAttribute("Price");


    Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
   Connection con = DriverManager.getConnection("jdbc:odbc:onlineshop","","");
    Statement stmt1 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    Statement stmt2 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
	Statement stmt3 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
//    Statement stmt3 = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
  
   //String query2="SELECT * FROM customer where user_id='" + user_id + "' and password='" + password + "'"; 
  
   String query1="SELECT * FROM product"; 
      
   ResultSet rs1  = stmt1.executeQuery(query1);
   int prod_id,cat_id;
   boolean slast=rs1.last();
   if (slast == true )
   {
   	prod_id=rs1.getInt("prod_id");
   	prod_id=prod_id+1;
   }
   else
   	prod_id=1; 
     
 //  int custid=2;
   
  // String query2="insert into customer(cust_id,cust_name,address,user_id,password,acct_no,ph_no,email_id,pin_code,pan_card_no,status)values("+custid+",'"+cust_name+"','"+address+"','"+user_id+"','"+password+"','"+acct_no+"','"+ph_no+"','"+email_id+"','"+pin_code+"','"+pan_card_no+"','admin')";  
   
   String query2="insert into product(prod_id	,prod_name,category_id,category_name,description,image,description_name1,description_value1,description_name2,description_value2,description_name3,description_value3,description_name4,description_value4,price)values("+prod_id+",'"+prodname+"',"+prod_id+",'"+catname+"','"+p_desc+"','"+imgfle+"','"+p_desc1+"','"+p_val1+"','"+p_desc2+"','"+p_val2+"','"+p_desc3+"','"+p_val3+"','"+p_desc4+"','"+p_val4+"','"+p_price+"')";    
   stmt2.executeUpdate(query2);
   sr = 0;
   
   String query3="insert into ItemDetails(item_code,item_name,item_price,item_quantity)values("+prod_id+",'"+prodname+"',"+p_price+","+p_qty+")";
   stmt3.executeUpdate(query3);
%>