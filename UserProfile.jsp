
	   
	   
	   
	   <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Review Status</title>
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
.style50 {	color: #0000FF;
	font-size: 28px;
}
.style55 {color: #FF0000}
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
          <li  class="active"><a href="UserLogin.jsp">User </a></li>
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
          <p class="infopost">&nbsp;</p>
          		 

  
                <h2 align="left" class="style11"><span class="title"><span class="style36 style35 style22 style3 style52">User<span class="style43"> <%=(String)application.getAttribute("uname")%></span>'s Profile..</span></span></h2>
        </div> 
   <div class="span8">
             <br/>  <table width="581" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            <%@ include file="connect.jsp" %>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%
						
						String user=(String )application.getAttribute("uname");
						
						String s1,s2,s3,s4,s5;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s5=rs.getString(7);
								s4=rs.getString(9);
								
								
								
								
								
								
					%>
            <tr>
              <td width="150" rowspan="6" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="images.jsp?value=<%="user"%>&amp;id=<%=i%>" style="width:200px; height:200px;" />
              </a></strong></div></td>
            </tr>
            <tr>
              <td  width="136" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style3 style42 style26"><strong>E-Mail</strong></div></td>
              <td  width="148" valign="middle" style="color:#000000;"><div align="left" class="style40 style10 style55"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="136" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style3 style42 style26"><strong>Mobile</strong></div></td>
              <td  width="148" valign="middle" ><div align="left" class="style40 style10 style55"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="136" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style3 style42 style26"><strong>Address</strong></div></td>
              <td  width="148" align="left" valign="middle"><div align="left" class="style40 style10 style55"><strong>
                  <%out.println(s3);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="136" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style3 style42 style26"><strong>Date of Birth</strong></div></td>
              <td  width="148" align="left" valign="middle" ><div align="left" class="style40 style10 style55"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
            </tr>
            <tr>
              <td   width="136" align="left" valign="middle" style="color: #2c83b0;"><div align="left" class="style15 style3 style42 style26"><strong>Status</strong></div                        ></td>
              <td  width="148" align="left" valign="middle" style="color: #2c83b0;"><div align="left">
                  <div align="left" class="style10 style55"><strong>
                    <%out.println(s4);%>
              </strong></div></td>
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
		          <br/><p align="center"><a href="UserMain.jsp" class="style10 style53 style54">Back</a></p>

  
		
	
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

	