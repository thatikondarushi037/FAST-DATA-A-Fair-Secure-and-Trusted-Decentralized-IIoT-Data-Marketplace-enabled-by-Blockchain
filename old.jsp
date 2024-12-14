<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Search Result</title>
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
.style4 {color: #FF0000}
-->
</style>
</head>
<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
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
          <li><a href="P_Login.jsp"><span>Publisher</span></a></li>
          <li><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>User</span></a></li>
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
         <h2 ><span class="style3">User Entity Details</span></h2>
		  <p>&nbsp;</p>
		  <%
String type=request.getParameter("type");
String type1=request.getParameter("type1");

int one= Integer.parseInt(request.getParameter("id"));	

	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10,s11,s12,s13;
	int i=0,j=0,rank=0,rank1=0;
	String uname=(String)application.getAttribute("uname");
	
	SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
	SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

	Date now = new Date();

	String strDate = sdfDate.format(now);
	String strTime = sdfTime.format(now);
	String dt = strDate + "   " + strTime;
	
  try 
	{	
		String query="select * from entity where id ="+one+" "; 
	    Statement st=connection.createStatement();
	    ResultSet rs=st.executeQuery(query);
		 if ( rs.next() )
		   {
								i=rs.getInt(1);
								s1=rs.getString("pname");
								s2=rs.getString("ename");
								s3=rs.getString("etype");
								s4=rs.getString("einst");
								s5=rs.getString("elink");
								s6=rs.getString("edescr");
								rank=rs.getInt("rank");
								j=rs.getInt(12);
								
							rank1=rank+1;
								
	%>

	<table width="669" border="0" align="center" >
	  <tr>
	    <td width="179"><div align="left" class="style5 style4"><strong>Publisher Name</strong></div></td>
	    <td width="480"><span class="style2"><%=s1%></span></td>
	  </tr>
	  <tr>
	    <td><div align="left" class="style5 style4"><strong>Entity Name </strong></div></td>
	    <td><span class="style2"><%=s2%></span></td>
	  </tr>
	  <tr>
	    <td><div align="left" class="style5 style4"><strong>Entity Type </strong></div></td>
	    <td><span class="style2"><%=s3%></span></td>
	  </tr>
	  <tr>
	    <td><div align="left" class="style5 style4"><strong>Entity Instance</strong></div></td>
	    <td><span class="style2"><%=s4%></span></td>
	  </tr>
	   <tr>
	    <td><div align="left" class="style5 style4"><strong>Entity Link</strong></div></td>
	    <td><span class="style2"><input type="button" value="<%=s5%>" onclick="window.open('<%=s5%>')" /></span></td>
	  </tr>
	  <tr>
	    <td><div align="left" class="style5 style4"><strong>Entity Score</strong></div></td>
	    <td><span class="style2"><%=rank%></span></td>
	  </tr>
	  <tr>
	    <td><div align="left" class="style5 style4"><strong>Entity Image </strong></div></td>
	    <td>
	      <input name="image" type="image" src="images.jsp?value=<%="image"%>&id=<%=i%>" alt="Submit" width="100" height="100" required>	    </td>
	  </tr>
	  <tr>
	    <td><div align="left" class="style5 style4"><strong>Entity Ratings</strong></div></td>
	    <td>
		
		  <span class="style2">
		  <% 
		  
	    if(j==3)
	    {
	    	%>
	    	<input required name="image" type="image" src="Gallery/1.png" width="30" height="30" >
	    	<%
	    }
	    if(j>3 && j<=6)
	    {
	    	%>
	    	<input required  name="image" type="image" src="Gallery/2.png" width="80" height="30" >
	    	<%
	    }
	    if(j>6 && j<=9)
	    {
	    	%>
	    	<input required name="image" type="image" src="Gallery/3.png" width="100" height="30" >
	    	<%
	    }
	    if(j>9 && j<=12)
	    {
	    	%>
	    	<input required name="image" type="image" src="Gallery/4.png" width="120" height="30" >
	    	<%
	    }
	    if(j>12 && j<=15)
	    {
	    	%>
	    	<input required name="image" type="image" src="Gallery/5.png" width="140" height="30" >
	    	<%
	    }
	    if(j>15 && j<=30)
	    {
	    	%>
	    	<input required  name="image" type="image" src="Gallery/6.png" width="170" height="30" >
	    	<%
	    }
	    %>
		  </span></td>
	  </tr>
	</table>
<%
	}
		%>
		<p>&nbsp;</p>
		<h3><table width="250" border="0" align="center">
		  <tr>            
		  <td>
               
		<%		String query1="select * from likes where eid ="+one+" "; 
	    		Statement st1=connection.createStatement();
	    		ResultSet rs1=st1.executeQuery(query1);
		 			if ( rs1.next() )
		   {%> <div align="center">
				<a href="U_SearchEntityResult.jsp?rank=<%=rank1%>&id=<%=one%>&name=<%=s2%>&type=<%=type%>&value=<%="unlike"%>" class="style11">UNLIKE</a> </td>
			<%}
			else
			{%> <div align="center">
				<a href="U_SearchEntityResult.jsp?rank=<%=rank1%>&id=<%=one%>&name=<%=s2%>&type=<%=type%>&value=<%="like"%>" class="style11">LIKE</a> </div></td>
			<%}
			%>
			<td>
                <div align="center">
				<a href="U_Comment.jsp?rank=<%=rank1%>&id=<%=i%>&type=<%=type%>" class="style11">GIVE REVIEW</a> </div></td>
			<td>
                <div align="left">
				<a href="U_RateEntity.jsp?name=<%=s4%>&id=<%=i%>&type=<%=type%>" class="style11">RATE </a> </div></td>
          </tr>
	  </table></h3>
		  <%
		  if(type1.equalsIgnoreCase("shistory")){
	String sql6="insert into history(user,ename,etype,einst,dt,eid) values('"+uname+"','"+s2+"','"+s3+"','"+s4+"','"+dt+"','"+i+"')";
						Statement st6=connection.createStatement();
						st6.executeUpdate(sql6);}
			
			
				
           connection.close();
          }
         
          catch(Exception e)
          {
           
          }
%>
		 
		  <h2 align="right">&nbsp;</h2>
			<% 
			if(type.equalsIgnoreCase("search")){%>
            <h3 align="right"><a href="U_SearchEntity.jsp" class="style4">Back</a></h3>
			<%}else if(type.equalsIgnoreCase("topk")){%>
            <h3 align="right"><a href="U_TopKSearch.jsp" class="style4">Back</a></h3>
			<%}
			else if(type.equalsIgnoreCase("history")){%>
            <h3 align="right"><a href="U_SearchHistory.jsp" class="style4">Back</a></h3>
			<%}
			else if(type.equalsIgnoreCase("ksearch")){%>
            <h3 align="right"><a href="U_Search_Keyword.jsp" class="style4">Back</a></h3>
			<%}

			try{

			String value=request.getParameter("value");
			
			if(value.equals("like")){
			
			PreparedStatement pst=connection.prepareStatement("insert into likes(user,ename,eid) values(?,?,?)");
							pst.setString(1,uname);
							pst.setString(2,s2);
							pst.setInt(3,one);
							
							pst.executeUpdate();
							
							
				String query32 ="update entity set rank='"+rank1+"' where id="+one+" ";
						 Statement st32=connection.createStatement();
					 		st32.executeUpdate (query32);
							
			}
			else if(value.equals("unlike")){
			PreparedStatement ps1=connection.prepareStatement("delete  from likes where eid="+one+" ");
						
										ps1.executeUpdate();
										
				String query32 ="update entity set rank='"+rank1+"' where id="+one+" ";
						 Statement st32=connection.createStatement();
					 		st32.executeUpdate (query32);
				
			}
			}catch(Exception e){}
			%>
			
		 <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><span class="style2"><a href="U_Main.jsp">User Home</a></span></li>
            <li><span class="style2"><a href="U_Login.jsp">LogOut</a></span></li>
          </ul>
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
