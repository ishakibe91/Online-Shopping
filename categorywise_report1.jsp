<%@ page import="java.sql.*,java.lang.*,java.util.*,java.text.*"  %>
<html>
<head><title>Category Report</title>
		
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
							  fSDateFormat = new SimpleDateFormat ("MM/dd/yyyy");
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
        <li><a href="contact.html">Contact Us</a></li> -->
		<li><a href="adminlogin.jsp?ainvalid=1">Logout</a></li>
    </div>       
          </div><!-- end header -->


<center>



<form action="categorywise_report2.jsp" method="get" name="courseform">
<br>
		<table>
			<tr>
				<Center><td><b>Category Name  : </b></td></Center>
			  <td></label>               </td>
			</tr>


			
		</table>
		<br>&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input class="order-btn" type="submit" value="Show" size="40 px" onClick="return validateCourse()">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<select class="order-btn1" name="CATEGORY">
          <option class="order-btn" value="Computer">Computer</option>
          <option class="order-btn" value="Laptop">Laptop</option>
          <option class="order-btn"value="Tablet">Tablet</option>
          <option class="order-btn" value="Speaker">Speaker</option>
          <option class="order-btn" value="Internet">Internet</option>
          <option class="order-btn" value="Hardisk">Hardisk</option>
		  <option class="order-btn" value="RAM">RAM</option>
		  <option class="order-btn" value="Battery">Battery</option>
		  <option class="order-btn" value="Drive">Drive</option>
        </select>
		<!--input type="reset" value="Clear" size="40 px"--><P>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<!-- <a href="tablesi.jsp" target="right">Back To Insert Page</a> -->
		</form>

    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    
    <!--p>&nbsp;</p-->

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





