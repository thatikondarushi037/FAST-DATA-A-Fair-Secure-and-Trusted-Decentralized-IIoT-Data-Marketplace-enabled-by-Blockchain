<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Login Page</title>
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
-->
</style>
<script language="javascript" type="text/javascript">      
function valid()
{
var na3=document.s.username.value;
if(na3=="")

{
alert("Please Enter User Name");
document.s.username.focus();
return false;
}
else
{

}
var na4=document.s.password.value;
if(na4=="")

{
alert("Please Enter Password");
document.s.password.focus();
return false;
}


}
</script>
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
          <li><a href="A_Login.jsp"><span>storage operators </span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>client</span></a></li>
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
           <h2><span class="style3">Welcome to Client Login</span></h2>
		   <form name="s" action="Authentication.jsp?value=<%="userlogin"%>" method="post" onSubmit="return valid()"  ons target="_top">
		 <table width="660" align="left">
                  <tr>
                    <td width="162" height="35"><span class="style6 style3">User Name (required)</span></td>
                    <td width="486"><input id="name" name="username" class="text" /></td>
                  </tr>
                  <tr>
                    <td height="38"><span class="style6 style3">Password (required)</span></td>
                    <td><input type="password" id="password" name="password" class="text" /></td>
                  </tr>
				 
          <tr><td><span class="style3"></span></td>
          <td>
                 <input name="imageField" type="submit"  class="style3" id="imageField" value="Login" />
                 New User?</span><a href="U_Register.jsp" class="style21"> Register </a></td>
		      </tr>
             
              </p>
                <p>&nbsp;</p>
		    </table>
        </form>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><span class="style2"><a href="index.html">Home</a></span></li>
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
