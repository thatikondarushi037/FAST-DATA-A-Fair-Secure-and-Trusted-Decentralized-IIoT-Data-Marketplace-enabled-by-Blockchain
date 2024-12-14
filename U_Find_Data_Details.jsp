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
.style2 {font-size: 18px}
.style3 {font-size: 35px; color: #fc6400; }
.style7 {color: #FFFF00}
.style10 {font-weight: bold}
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
          <li ><a href="a_login.jsp"><span>Storage</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>Client</span></a></li>
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
          <p align="center" class="style3">Find Data Details  !!!</p>
          <p><a href="U_Main.jsp">Back</a></p>
		  
		  
		   <%@ include file="connect.jsp" %>
<%

    try
		{
		
		   String uname=(String)application.getAttribute("uname");
		   
			String status="Permitted";
			String sql="SELECT * FROM request where status='"+status+"' and uname='"+uname+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if (rs.next()==true) 
					{%>
		
      <form name="s"  action="U_Find_Data_Details1.jsp" method="post" >
<table width="423" border="0" align="center"  cellpadding="0" cellspacing="0" >
  <tr>
    <td width="217" height="50" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style7 style10"><strong>Enter DID </strong></div></td>
    <td width="206" height="50" valign="middle" style="color:#000000;"><input type="text" name="DID" /></td>
  </tr>
</span><div > 
<tr>
<td height="30" colspan="2" id="learn_more" align="center"  style="color:#FFFFFF;"><p>&nbsp;
  </p>
  <p>
    <input type="submit" value="Decrypt & Find Data Details" style="width:400px; height:25px; background-color:#000000; color:#FFFFFF;"/>
    <br />
  </p></td>
</tr></div>
		  </table>
		</form>
		<%}
			else
			{
				
				 %>
				 
				 <h2>No Permission To View Data Details</h2>
				 <br/><br/><a href="U_Main.jsp">Back</a><%
			}
	}
	catch(Exception e)
	{
		out.print(e);
	}
	
%>
		  
			 
	    </div>
          <div class="clr"></div>
      </div>
        <p class="pages"><a href="U_Main.jsp"></a></p>
        <p class="pages">&nbsp;</p>
        <p class="pages">&nbsp;</p>
        <p class="pages">&nbsp;</p>
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
