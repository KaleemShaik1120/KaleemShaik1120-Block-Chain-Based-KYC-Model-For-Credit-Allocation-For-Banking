
		
		
       <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Register</title>
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
.style26 {color: #990000}
.style29 {color: #FF0000}
.style30 {
	font-weight: bold;
	color: #FF0000;
}
.style32 {color: #FFFFFF}
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
          <h2 class="style2"><span class="title"><a href="#"><span class="style29">Welcome to User Registration..</span></a></span></h2>
        </div> 
        <div class="span8">
		<br/>
		<form action="UserRegisterStatus.jsp" method="post" id="" enctype="multipart/form-data">
          <label for="name"><span class="style45"><span class="style30">(*) Required </span><br />
          </span></label>
          <table width="517" height="630" border="0" cellpadding="2" cellspacing="2">
            <tr>
              <td width="145" bgcolor="#FF0000"><span class="style37 style32">
                <label for="label"><strong>User Name (*)</strong></label>
              </span></td>
              <td width="358"><span class="style45">
                <input name="userid" class="text" id="name" size="30" />
              </span></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><span class="style37 style32">
                <label for="label"><strong>Password (*)</strong></label>
              </span> </td>
              <td><span class="style45">
                <input name="pass" type="password" class="text" id="password" size="30" />
              </span></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><span class="style37 style32">
                <label for="label"><strong>Email-Id  (*)</strong></label>
              </span> </td>
              <td><span class="style45">
                <input name="email" class="text" id="email" size="30" />
              </span></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><span class="style37 style32">
                <label for="label"><strong>Mobile Number (*)</strong></label>
              </span> </td>
              <td><span class="style45">
                <input name="mobile" class="text" id="mobile" size="30" />
              </span></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><span class="style37 style32">
                <label for="label"><strong>Your Address(*)</strong> </label>
              </span></td>
              <td><textarea id="address" name="address" rows="2" cols="28"></textarea></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><span class="style37 style32">
                <label for="gender"><strong>Date of Birth (*)</strong> </label>
              </span></td>
              <td><span class="style45">
                <input name="dob" class="text" id="dob" size="30" />
              </span></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><span class="style37 style32">
                <label for="gender"><strong>Select Gender (*)</strong></label>
              </span> </td>
              <td><span class="style38">
                <select id="s1" name="gender" style="width:224px;" class="text">
                  <option>--Select--</option>
                  <option>MALE</option>
                  <option>FEMALE</option>
                </select>
              </span></td>
            </tr>
            <tr>
              <td bgcolor="#FF0000"><span class="style37 style32">
                <label for="label"><strong>Select Profile  (*)</strong></label>
              </span></td>
              <td><input name="pic" type="file" class="text " id="pic" />              </td>
            </tr>
            <tr>
              <td colspan="2"><div align="center">
                  <input name="submit" type="submit" value="REGISTER" style="width:170px;height:40px;font-weight:bold;background-color:#0099FF;border-radius:10%;" />
              </div></td>
            </tr>
          </table>
          	 <p align="right"><a href="index.html" class="style22 style26 style38">Back</a></p>
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

      