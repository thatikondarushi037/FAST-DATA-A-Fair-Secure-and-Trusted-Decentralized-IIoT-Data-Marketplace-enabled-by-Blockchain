<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Find Data Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-titillium-250.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style2 {font-size: 40px}
.style3 {font-size: 35px; color: #fc6400; }
.style8 {color: #FF0000}
.style9 {color: #FFFF00}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style2">FAST DATA A Fair, Secure and Trusted Decentralized IIoT Data Marketplace enabled by Blockchain</a></h1>
      </div>
      
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li ><a href="U_Admin.jsp"><span>admin</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>User</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <p align="center" class="style3">&nbsp;</p>
          <p align="center" class="style3">&nbsp;</p>
          <p align="center" class="style3">Found Data Details!!!</p>
          <p><a href="U_Main.jsp"></a></p>
      <table width="310" height="92" border="3" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#99FF33">
					<td  width="47" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11 style9"><strong> Did</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11 style9"><strong>DDate</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11 style9"><strong>Country</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11 style9"><strong>City</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11 style9"><strong>Killed</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11 style9"><strong>Injured</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FF0000" ><div align="center" class="style1 style12 style11 style9"><strong>Description</strong></strong></div></td>
					</tr>
					<%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>  
 
					<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0,count=0;
try 
{

    String DID=request.getParameter("DID");
  
	String query="select * from datasets where Did='"+DID+"' "; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								s7=rs.getString(8);
								
		
		String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue1 = keys.getBytes();
      					Key key1 = new SecretKeySpec(keyValue1,"AES");
      					Cipher c1 = Cipher.getInstance("AES");
      					c1.init(Cipher.DECRYPT_MODE, key1);
							
							
							
							String decryptedValue1 = new String(Base64.decode(s2.getBytes()));
							String decryptedValue2 = new String(Base64.decode(s3.getBytes()));
							String decryptedValue3 = new String(Base64.decode(s4.getBytes()));
							String decryptedValue5 = new String(Base64.decode(s5.getBytes()));
							String decryptedValue6 = new String(Base64.decode(s7.getBytes()));
							
				
			
		%>
					
							<tr bgcolor="#00FFFF">
						
							  <td height="41" align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style4 style8">
               <%out.println(s1);%>
              </div></td>
             
              <td height="41" align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style4 style8">
                <strong><%out.println(decryptedValue1);%></strong>
              </div></td>
              <td align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style4 style8">
                <%out.println(decryptedValue2);%>
              </div></td>
              <td height="41" align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style4 style8">
                <%out.println(decryptedValue3);%>
              </div></td>
			   <td height="41" align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style4 style8">
                <%out.println(decryptedValue5);%>
              </div></td> <td height="41" align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style4 style8">
                <%out.println(s6);%>
              </div></td>
			  <td height="41" align="center"  valign="middle" bgcolor="#FFFF00"><div align="center" class="style4 style8">
               <textarea><%out.println(decryptedValue6);%></textarea>
              </div></td>
					</tr>
					<%
						
					}
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
		</table>
      </p>
          <p align="center"><a href="U_Main.jsp">Back</a></p>
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
