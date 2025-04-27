<%@page contentType="text/html" import="java.util.*,java.text.*" %>
<html><head><title> :: Login</title>
		
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
		
   <link href="style.css" rel="stylesheet" type="text/css" />

	<style type="text/css">
.box {  font-family: Arial; font-size: 10px; color: #990000; text-decoration: none; border: #990000; border-style: outset; border-top-width: 2px; border-right-width: 2px; border-bottom-width: 2px; border-left-width: 2px}
.text {  font-family: Arial; font-size: 12px; font-weight: bold; color: #ffffff; text-decoration: none}
</style></head>

	<body  BGCOLOR="#663300" text="#FFCC99" link="#FFFFFF" alink="#FF3300" vlink="#FFFFFF" leftmargin="0" topmargin="0" marginheight="0" marginwidth="0">
	
	<%String invalid;
int invalid1=1;
invalid=request.getParameter("ainvalid");
invalid1=Integer.parseInt(invalid);
if(invalid1==0)
{ %>
<SCRIPT>

alert ('Invalid Admin UserName');

</script>
<%}
//else if()


%>

  <div id="wrapper">
      <div id="inner">
          <div id="header">
              <h1><img src="images/logo.gif" width="519" height="63" alt="Online Movie Store" /></h1>
              
      <div id="nav"><a href="index.html">Home</a> |<a href="adminlogin.jsp?ainvalid=1">Admin</a> 
        | <a href="userlogin.jsp?invalid=1">Login</a> | <a href="aboutus.html">about 
        us </a> </div>
      <!-- end nav -->
              <img src="images/header_1.gif" width="775" height="145" alt="Harry Potter cd" />
              <img src="images/header_2.gif" width="775" height="48" alt="" />
          </div><!-- end header -->


<!--INCLUDE VIRTUAL="/trading/Messages/UKMessageDisplay.asp"-->

		<table align="center" background="" bgcolor="#663300" border="0" cellpadding="3" cellspacing="0" width="773">
			<tbody><tr>
				<td align="center" valign="top" width="771">
					<table background="trading_files/blank.gif" bgcolor="#663300" border="0" cellpadding="0" cellspacing="1" width="80%">
						<tbody><tr>
							<td>
								<table bgcolor="#663300" border="0" cellpadding="1" cellspacing="1" width="100%">
									<tbody><tr>
										
                <td class="heads" bgcolor="blue">Administrator Login</td>
									</tr>
									<tr>
										<td bgcolor="#ffffff" valign="top">
											
											<!--form action="http://localhost:8080/examples/servlet/adminservlet" method="post" name="loginform"-->
											<form action="adminloginsuccess.jsp" method="post" name="loginform">											
												
                    <table bgcolor="#FFFFCC" border="0" cellpadding="2" cellspacing="0" width="100%">
                      <tbody> 
                      <tr>
														<td class="contentname" colspan="3">&nbsp;
														</td>
													</tr>
													<tr>
														<td class="content" align="right" width="45%"><b><font color="#990000">Login id</font></b></td>
														<td class="content" align="center" width="5%"><b><font color="#990000">:</font></b></td>
														<td class="midheads" width="45%">
															<input name="USR_ID" class="textbox" maxlength="8" tabindex="1" onChange="javascript: PleaseSetFocus();" autocomplete="off" type="text">
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
														
                        <td class="content" align="right" width="45%"><b><font color="#990000">Password</font></b></td>
														<td class="content" align="center" width="5%"><b><font color="#990000">:</font></b></td>
														<td class="midheads" width="45%">
															<input name="USR_PSSWRD" class="textbox" tabindex="2" maxlength="12" autocomplete="off" type="password">
														</td>
													</tr>

													<tr>
														<td class="contentname" colspan="3">&nbsp;<a href ="new_user.htm"></a></td>
													</tr>
													<tr align="center" valign="top">
														<td class="contentname" colspan="3">
															<input name="Submit" value="Login Now" class="button" onClick="javascript:return ValidateForm();" tabindex="4" type="submit">
														</td>
													</tr>
													<tr>
														<td class="content" colspan="3" align="center">&nbsp;</td>
													</tr>
													<tr>
														<td colspan="3" align="center">
															<table align="center" border="0" width="100%">
																<tbody><tr>
																	<td class="content" colspan="1" align="center">&nbsp;</td>
																	<td class="content" colspan="1" align="center"><a href="https://secure.icicidirect.com/customer/ResetPass.asp" class="content"></a></td>
																	<td class="content" colspan="1" align="center">&nbsp;</td>
																	
                              <td class="content" align="right">
							  <%							
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
            
                    <b><font color="#990000"> <%=date_out%> IST </font></b>
							  
							  </td>
																</tr>
															</tbody></table>
														</td>
													</tr>													
												</tbody></table>
											</form>
											
										</td>
									</tr>
								</tbody></table>
							</td>
						</tr>
					</tbody></table>
				</td>
			</tr>
		</tbody></table>
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
      </div><!-- end inner -->
  </div><!-- end wrapper -->

	</body></html>