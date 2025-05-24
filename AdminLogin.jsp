
	
		 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Server Login </title>
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
.style29 {color: #FF0000}
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
          <li><a href="UserLogin.jsp">User </a></li>
          <li class="active"><a href="AdminLogin.jsp">Admin </a></li>
         
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
          <h2 class="style2"><span class="style24">Welcome To Admin Login </span></h2>
          <p class="infopost"><img src="images/Login.png" width="125" height="125" /></p>
         		<form id="form1" method="post" action="Authentication.jsp?value=<%="adminlogin"%>">
          <table width="382" border="0" align="center" cellpadding="2" cellspacing="2">
            <tr>
              <td width="245" height="51" align="center"><span class="style29 style41"><strong>Admin Name (required)</strong></span> </td>
              <td width="213"><input id="name" name="userid" class="text" /></td>
            </tr>
            <tr>
              <td height="40" align="center"><span class="style29 style41"><strong>Password (required)</strong></span></td>
              <td><input type="password" id="pass" name="pass" class="text" /></td>
            </tr>
            <tr>
              <td height="50">&nbsp;</td>
              <td><input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" style="width:80px;height:40px;font-weight:bold;color:blue;border-radius:20%;"/></td>
            </tr>
          </table>
		  <p align="right"><a href="index.html" class="style22 style26">Back</a></p>
		</form>
		<a href="index.html" class="style22 style26"></a></div> 

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