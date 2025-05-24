
  
 
	
	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SP_AuthorizeUsers</title>
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
.style54 {color: #FF0000}
.style55 {color: #FFFFFF}
.style56 {font-weight: bold}
.style57 {font-weight: bold}
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
          <li><a href="AdminLogin.jsp">User </a></li>
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
          <h2 class="style2"><span class="style50">View SP and Authorize  !!! </span></h2>
          <p class="infopost">&nbsp;</p>
          		 
			
	
		  <table width="749" align="center"  cellpadding="0" cellspacing="0">
            <tr>
			<td width="42" height="37" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style57 style27 style100 style55">ID</div></td>
			<td width="165" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style57 style27 style100 style55">User Image</div></td>
			<td width="122" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style57 style27 style100 style55">User Name</div></td>
			<td width="80" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style57 style27 style100 style55">Email</div></td>
			<td width="90" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style57 style27 style100 style55">Mobile</div></td>
			<td width="100" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style57 style27 style100 style55">Address</div></td>
			<td width="89" valign="middle" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style27 style57 style100 style55">Status</div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from sp_user"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s5=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(9);
								
					%>
            <tr>
              <td height="122" align="center"  valign="middle"><div align="center" class="style54 style97 style86 style37 style5"><strong>
                  <%out.println(i);%>
              </strong></div></td>
              <td  rowspan="1" align="center" valign="middle" ><div class="style54 style97 style86 style37 style5" style="margin:10px 13px 10px 13px;" ><strong>
                  <input  name="image" type="image" src="images.jsp?value=<%="spuser"%>&amp;id=<%=i%>" style="width:120px; height:100px;" />
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style54 style97 style86 style37 style20 style5"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style54 style97 style86 style37 style20 style5"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
              <td align="center"  valign="middle"><div align="center" class="style54 style97 style86 style37 style20 style5"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
              <td  align="center"  valign="middle"><div align="center" class="style54 style97 style86 style37 style20 style5"><strong>
                  <%out.println(s3);%>
              </strong></div></td>
              <%
						if(s4.equalsIgnoreCase("waiting"))
						{
						
						%>
              <td valign="middle"  style="color:#000000;"align="center"><div align="center" class="style20 style30 style37 style86 style97 style54 style56">
                  <div align="center"><a href="Authentication.jsp?value=<%="spstatus"%>&amp;id=<%=i%>" class="style29 style98">waiting</a></div>
              </div></td>
              <%
						}
						else
						{
						%>
              <td width="59" align="center"  valign="middle"><div align="center" class="style54 style101 style58 style37 style20 style5"><strong>
                  <%out.println(s4);%>
              </strong></div></td>
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
		 <br>
  <p align="center"><a href="AdminMain.jsp">Back</a></p>
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

	
