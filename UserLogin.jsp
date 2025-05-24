
       <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times-700.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	font-size: 30px;
	color: #6666FF;
}
.style2 {font-size: 25px}
.style24 {color: #993399}
.style26 {color: #990000}
.style29 {color: #FF0000}
.style30 {font-weight: bold}
.style31 {font-weight: bold}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform"></div>
      <div class="logo">
        <h1 class="style1">Blockchain Based KYC Model for Credit Allocation in Banking</h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
		 <li><a href=""></a></li>
          <li><a href=""></a></li> 
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="UserLogin.jsp">User </a></li>
          <li><a href="AdminLogin.jsp">Admin</a></li>
         
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
          <h2 class="style2"><span class="style24">Welcome To User Login </span></h2>
          <p class="infopost"><img src="images/Login.png" width="125" height="125" /></p>
          
                <form id="form1" name="form1" method="post" action="Authentication.jsp?value=<%="userlogin"%>">
            <table width="443" align="center" cellpadding="0" cellspacing="2">
              <tr>
                <td width="174" height="64"align="center"><div align="center" class="style19 style29 style30">
                    <div align="left">User Name (required)</div>
                </div></td>
                <td width="261"><input id="name" name="userid" type="text" /></td>
              </tr>
              <tr>
                <td height="59" align="center"><div align="center" class="style25 style29 style31">
                    <div align="left">Password (required)</div>
                </div></td>
                <td><input type="password" id="pass" name="pass" class="text" /></td>
              </tr>

              <tr>
                <td height="67">&nbsp;</td>
                <td><span class="style19">
                  <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" style="width:80px;height:40px;font-weight:bold;color:green;border-radius:20%;"/>
                  New User?</span><a href="UserRegister.jsp" class="style20"> Register </a></td>
              </tr>
            </table>
          	 <p align="right"><a href="index.html" class="style22 style26">Back</a></p>
          </form>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu"><li><p><a href="UserLogin.jsp">Home</a></p>
              <p><a href="index.html">Index Page </a></p>
            </li>
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
