	 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Find Data Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style5 {font-size: 18px}
.style7 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><span class="style5">FAST DATA A Fair, Secure and Trusted Decentralized IIoT Data Marketplace enabled by Blockchain</span><br />
        </h1>
      </div>
      <div class="menu_nav">
        <ul>
		<%String user=(String)application.getAttribute("user"); %>
          <li><a href="U_Main.jsp"><span>Home</span></a></li>
          <li><a href="#"><span><%=user%></span></a></li>
		  <li><a href="Userlogin.jsp"><span>Logout</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <div class="clr">
		  
		   <h2 class="style10"><span class="style10 style7">Found Data Details By Blockchain Hashcode</span></h2>
		  
		   <p align="center"><a href="U_Main.jsp">Back</a></p>
		  
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream"%>
 
		  
            <table width="531" height="129" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
              <tr>
               
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style7"><strong> Did</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style7"><strong>DDate</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style7"><strong>Country</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style7"><strong>City</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style7"><strong>Killed</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style7"><strong>Injured</strong></strong></div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style7"><strong>Description</strong></strong></div></td>
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style7"><strong>Country_hashcode</strong></strong></div></td>
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11 style7"><strong>City_hashcode</strong></strong></div></td>
              </tr>
              <%
  String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,s24,s25,s26,s27,s28;
int i=0,count=0;
try 
{

   String city=request.getParameter("city");
  
  
    String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(city));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1= bi1.toString(16);
  
 
	String query="select * from datasets where City_hashcode='"+h1+"' "; 
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
								s8=rs.getString(9);
								s9=rs.getString(10);	
								
								
								
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
              <tr>
                 <td height="41" align="center"  valign="middle"><div align="center" class="style4 style7">
               <%out.println(s1);%>
              </div></td>
             
              <td height="41" align="center"  valign="middle"><div align="center" class="style4 style7">
                <strong><%out.println(decryptedValue1);%></strong>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style4 style7">
                <%out.println(decryptedValue2);%>
              </div></td>
              <td height="41" align="center"  valign="middle"><div align="center" class="style4 style7">
                <%out.println(decryptedValue3);%>
              </div></td>
			   <td height="41" align="center"  valign="middle"><div align="center" class="style4 style7">
                <%out.println(decryptedValue5);%>
              </div></td> <td height="41" align="center"  valign="middle"><div align="center" class="style4 style7">
                <%out.println(s6);%>
              </div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style4 style7">
               <textarea><%out.println(decryptedValue6);%></textarea>
              </div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style4 style7">
               <%out.println(s8);%>
              </div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style4 style7">
               <%out.println(s9);%>
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
          </div>
          <div class="post_content">
            <p align="justify">		  
	  
         
          <p><a href="U_Main.jsp">Back</a></p>
          <p> 
		
 
          </p>
<p align="center"><a href="U_Main.jsp">Back</a></p>
       <p>&nbsp;</p>
            </p>
          </div>
          <div class="clr"></div>
        </div>
        <p align="right" class="pages"><a href="U_Main.jsp">Back</a></p>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
<div align=center></div></body>
</html>
 
