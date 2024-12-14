<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Sellers</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller-700.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {color: #000000}
.style3 {color: #FF00FF}
.style5 {color: #FF0000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="logo">
        <h1><a href="index.html" class="style1">FAST DATA A Fair Secure and Trusted Decentralized IIoT Data Marketplace enabled by Blockchain</a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="P_Login.jsp"><span>seller</span></a></li>
          <li class="active"><a href="A_Login.jsp"><span>storage operators </span></a></li>
          <li><a href="U_Login.jsp"><span>client</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /><span><big>FAST DATA A Fair Secure and Trusted Decentralized IIoT Data Marketplace enabled by Blockchain</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /><span><big>FAST DATA A Fair Secure and Trusted Decentralized IIoT Data Marketplace enabled by Blockchain</big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span><big>FAST DATA A Fair Secure and Trusted Decentralized IIoT Data Marketplace enabled by Blockchain</big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span class="style3">View All Sellers And Authorize...</span></h2>
		   <p>&nbsp;</p>
      <div class="clr"></div>
	  <table width="913" align="center"  cellpadding="0" cellspacing="0">
            <tr>
              <td width="51" height="37" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style5"><strong>ID</strong></div></td>
              <td width="157" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style5"><strong>Seller Image</strong></div></td>
              <td width="121" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style5"><strong>Seller Name</strong></div></td>
              <td width="142" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style5"><strong>Email</strong></div></td>
              <td width="135" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style5"><strong>Mobile</strong></div></td>
              <td width="121" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style5"><strong>Address</strong></div></td>
              <td width="108" valign="middle" bgcolor="#00FF00" style="color: #2c83b0;"><div align="center" class="style65 style105 style27 style5"><strong>Status</strong></div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
			
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from seller"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s5=rs.getString(5);
								s3=rs.getString("address");
								s4=rs.getString(9);
								
					%>
            <tr>
              <td height="122" align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style70 style71 style2"><strong>
                  <%out.println(i);%>
              </strong></div></td>
              <td  rowspan="1" align="center" valign="middle" ><div class="style57 style86 style55 style54 style37 style70 style71 style2" style="margin:10px 13px 10px 13px;" ><strong>
                  <input  name="image" type="image" src="images.jsp?value=<%="publisher"%>&id=<%=i%>" style="width:120px; height:100px;" />
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style2"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style2"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
              <td align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style2"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style57 style86 style55 style54 style37 style20 style70 style71 style2"><strong>
                  <%out.println(s3);%>
              </strong></div></td>
              <%
						if(s4.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td valign="middle"  style="color:#000000;"align="center"><div align="center" class="style20 style30 style37 style86 style70 style71 style2">
                  <div align="center"><a href="Authentication.jsp?value=<%="publisherstatus"%>&amp;id=<%=i%>" class="style3">waiting</a></div>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="76" align="center"  valign="middle"><div align="center" class="style20 style37 style55 style30 style71 style72 style2">
                  <%out.println(s4);%>
              </div></td>
              <%
						}
						
						%>
            </tr>
            <%
						}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
      </table>
	  <p align="right"><a href="A_Main.jsp">Back</a></p>
          <div class="clr"></div>
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
