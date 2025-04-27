<%@page contentType="text/html" import="java.util.*,java.text.*" %>
<html><head><title>Online Shopping :: Login</title>
		
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
         <link href="userlogin.css" rel="stylesheet" type="text/css" />	
		 <link rel="stylesheet" href="css/bootstrap.min.css" />
		
	<style type="text/css">
.box {  font-family: Arial; font-size: 10px; color: #990000; text-decoration: none; border: #990000; border-style: outset; border-top-width: 2px; border-right-width: 2px; border-bottom-width: 2px; border-left-width: 2px}
.text {  font-family: Arial; font-size: 12px; font-weight: bold; color: #ffffff; text-decoration: none}
</style></head>

	<body  text="#FFCC99" link="#FFFFFF" alink="#FF3300" vlink="#FFFFFF">
	 <div id="nav">
        <a href="about.html"><img src="./images/logo.png" alt="company logo"></a>
        <li><a href="index.html">Home</a></li>
        <li><a href="about.html">About</a></li>
        <li><a href="computer.jsp">Computer</a></li>
        <li><a href="laptop.jsp">Laptop</a></li>
        <li><a href="product.html">Products</a></li>
        <li><a href="contact.html">Contact Us</a></li>
    </div>
	<div id="wrapper">
      <div id="inner">
        <div id="header">
         
          <!-- end nav -->
        </div>
        <!-- end header -->
        <!--INCLUDE VIRTUAL="/trading/Messages/UKMessageDisplay.asp"-->
    </div>
      <!-- end .inner -->
    </div><!-- end body -->
          
          <div class="clear">
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
          </div>
          
          <div id="maintable">
          <table class="customertable">
      <tbody>
        <tr>
          <td class="heads"><div id="customerlogin" align="center"> 
            <p>Adminstrator Login</p>
            </div></td>
        </tr>
        <tr>
          <td bgcolor="#ffffff" valign="top"><!--form action="http://localhost:8080/examples/servlet/memberservlet" method="post" name="loginform"-->
              <form id="loginform" action="adminloginsuccess.jsp" method="post" name="loginform">
                <table height="214" border="0" cellpadding="2" cellspacing="0" bordercolor="#000000" bgcolor="#efe5ff">
                  <tbody>
                    <tr>
                      <td class="contentname" colspan="3">&nbsp;
                          <%
														/*String invalid="1";
														int invalid1=1;
														invalid=request.getParameter("invalid");
														invalid1=Integer.parseInt(invalid);
														if(invalid1==0)
														{*/%>
                          <%//}
														
														
														%>
                      </td>
                    </tr>
                    <tr>
                      <td class="content" align="right" width="358"><b><font color="#490093">Login Id</font></b></td>
                      <td class="content" align="center" width="48"><b><font color="#490093">:</font></b></td>
                      <td class="midheads" width="359"><input name="USR_ID" class="textbox" maxlength="30" tabindex="1" onChange="javascript: PleaseSetFocus();" autocomplete="off" type="text">
                      </td>
                    </tr>
                    <script language="Javascript">
				function userfocus()
				{
				document.loginform.FML_USR_ID.focus();
				}
				userfocus();
													</script>
                    <tr>
                      <td class="content" align="right" width="358"><b><font color="#490093">Password</font></b></td>
                      <td class="content" align="center" width="48"><b><font color="#990000">:</font></b></td>
                      <td class="midheads" width="359"><input name="USR_PSSWRD" class="textbox" tabindex="2" maxlength="12" autocomplete="off" type="password">
                      </td>
                    </tr>
                    <tr>
                      <td class="contentname" colspan="3">&nbsp;<a href ="new_user.htm"></a></td>
                    </tr>
                    <tr align="center" valign="top">
                      <td class="contentname" colspan="3"><div align="center">
                          <input name="Submit" value="Login Now" class="button" onClick="javascript:return ValidateForm();" tabindex="4" type="submit">
                      </div></td>
                    </tr>
                    <tr>
                      <td class="content" colspan="3" align="center">&nbsp;</td>
                    </tr>
                    <tr>
                      <td colspan="3" align="center"><table align="center" border="0" width="100%">
                          <tbody>
                            <tr>
                              <td class="content" colspan="1" align="left"><%							
							 DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm");
                             java.util.Date date = new java.util.Date();                             
                             
                             
                             SimpleDateFormat fSDateFormat = null;
                             SimpleDateFormat fSDateFormatnbse = null;
							 //fSDateFormat = new SimpleDateFormat ("EEEEEE,MMMMM d  yyyy HH:mm Z");
							 fSDateFormat = new SimpleDateFormat ("EEEEEE,MMMMM d,  yyyy, HH:mm");
							 fSDateFormatnbse = new SimpleDateFormat ("dd-MMM-yyyy");
							 // fSDateFormat = new SimpleDateFormat ("MM/dd/yyyy");
    						  Date now = new Date ();
    						  // And create a date/time string in the desired format.
							  String date_out = fSDateFormat.format (now);
							  String nbse = fSDateFormatnbse.format (now);                             
		                    %>
                                  <b><font style= font="arial" color="#490093"> <%=date_out%> IST </font></b> </td>
                              <td class="content" colspan="1" align="center"><a href="https://secure.icicidirect.com/customer/ResetPass.asp" class="content"></a></td>
                              <td class="content" colspan="1" align="center">&nbsp;</td>
                              
                            </tr>
                          </tbody>
                      </table></td>
                    </tr>
                  </tbody>
                </table>
              </form></td>
        </tr>
      </tbody>
    </table>
</div>
	</body></html>