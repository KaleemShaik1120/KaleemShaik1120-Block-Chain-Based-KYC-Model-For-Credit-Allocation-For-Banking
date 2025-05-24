
	           	
                <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Service Provider Main</title>
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
.style34 {color: #009900;
	font-weight: bold;
}
.style35 {
	font-size: 30px;
	color: #0000FF;
}
.style36 {
	font-weight: bold;
	color: #FF0000;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="searchform"></div>
      <div class="logo">
        <h1 class="style1"><br />
        </h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
		 <li><a href=""></a></li>
          <li><a href=""></a></li> 
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="SP_Login.jsp">Service Provider </a></li>
          <li><a href="AdminLogin.jsp">Admin </a></li>
         
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
          <h2><span class="style2"><span class="style35">Welcome Service Provider :: </span> <span class="style34"><%=(String)application.getAttribute("spname")%></span> !!</span></h2>
          <form id="form1" name="form1" method="post" action="UserAuthentication.jsp">
            <table width="200" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td><img src="images/Service_Provider.jpg" alt="Image" width="624" height="253" class="image_wrapper image_fr" /></td>
              </tr>
            </table>
            <p align="right">&nbsp;</p>
          </form>
          <div class="clr"></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>SP</span> Menu</h2>
          <div class="clr"></div>
         
   	      <li><a href="SP_Main.jsp" class="style10"><strong>Reload</strong></a><br />
   	        <br />
   	      </li>
                  <li><a href="SPProfile.jsp" class="style10">My Profile </a><br />
                   
                    </p></li>
					 <li><a href="SP_Upload_Datasets.jsp" class="style10">Upload Datasets </a><br />
                   
                    </p></li>
					 <li><a href="SP_View_All_Datasets.jsp" class="style10">View Uploaded Datasets </a><br />
                   
                    </p></li>
					
              
                  <li><a href="index.html" class="style10"></a><a href="index.html">Log Out</a></li><br />
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
