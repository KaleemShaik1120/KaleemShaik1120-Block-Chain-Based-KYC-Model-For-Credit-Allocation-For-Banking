<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Search Topic Page</title>
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
.style4 {color: #D64F14}
.style5 {color: #000000}
.style6 {color: #D64F14; font-weight: bold; }
.style8 {color:#006666}
.style17 {font-size: 24px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style17">Blockchain Based KYC Model for Credit Allocation in Banking </a><a href="index.html"></a></h1>
      </div>
      <div class="searchform"></div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
         
          
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /><span><big>Blockchain Based KYC Model for Credit Allocation in Banking </big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /><span><big>Blockchain Based KYC Model for Credit Allocation in Banking </big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /><span><big>Blockchain Based KYC Model for Credit Allocation in Banking </big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>Search Datasets.</span></h2>          
          <div class="clr"></div>          
		  <p>&nbsp;</p>
		  <form name="s" action="U_Search.jsp" method="post" onSubmit="return valid()"  ons target="_top">   
                <div style="width:600px;">
                  <Table align="center" style="margin:0 0 0 30px;">
                    <tr>
                      <td width="174"><div align="center">
                        <div align="right" class="style12">
                          <div align="center" class="style6">Enter Keyword</div>
                        </div>
                      </div></td>
                      <td width="152">
                      <div align="left"><INPUT TYPE="text" name="keyword" /></div></TD>
					  <td width="155"><INPUT name="submit" TYPE="submit" STYLE="width:50px; height:25px;" VALUE="GO"/></td>
                    </tr>
                    <tr>
                      <td COLSPAN="3"><div class="style2">
                        <div align="center" class="style13 style5">( Searching Datasets Based on TID,CID,Customer Location)</div>
                      </div></td>
                    </tr>
                  </Table>
               </div>
                <P>&nbsp; </P>
        </FORM>
			
			
				 <p><%
	  					
	 				 try
						{
								String s1="",keyword="",s2="",s3="",s4="",s5="",s6="",up_Name="";
								String strDate="",strTime="",dt="";
								int score=0,i=0;
								double found=0,total=0,ratio=0;
								
							    String	input= request.getParameter("keyword");	
								keyword = input.toLowerCase();
								
								
								String sql8="select * from datasets";
								Statement st8=connection.createStatement();
								ResultSet rs8=st8.executeQuery(sql8);
								while(rs8.next())
										{
									
								    s1 = rs8.getString(3); // Cid
									s2 = rs8.getString("tid"); 
									s3 = rs8.getString("cid"); 
									s4 = rs8.getString("cl"); 
									
					
								String t=s2.toLowerCase();
								String t1=s3.toLowerCase();
								String t2=s4.toLowerCase();
								
					
								if ( (t.contains(keyword))||(t1.contains(keyword)) ||(t2.contains(keyword)) )
									{
										
										 found++ ;
								
				
									%>
          </P>
 </p>
            
               <p class="style4"> 
               <div align="center" ><strong><span class="style5">CID :</span> <span class="style8"><%=s1%></span> </strong>
                 </p>
</div>
             
                <p><div align="center" class="style5"><strong>View <a href="U_Search1.jsp?cid=<%=s1%>">View Details</a></strong></div>
                </p>
                <p></p>
				<div>
				  <div align="center">--------------------------------------------------------</div>
				</div>
				 <p></p>
				<%
								}
						  	}
						
					if(found==0){out.print("No Topics Found For Keyword "+keyword);}
					%>
			
			<p>&nbsp;</p>
						
				<%	}
					
					catch(Exception e)
					{						  
						e.printStackTrace();
					}
					%>	  
	  
	  </p>        
                  <div align="right"><a href="UserMain.jsp">Back</a></div>
		  
		  
		  
		  
		  
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="UserMain.jsp">Home</a></li>
			<li><a href="UserLogin.jsp">Logout</a></li>
            
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer"></div>
</div>
</body>
</html>
