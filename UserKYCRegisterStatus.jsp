
	
	           
          <h2 align="left" class="style11"><span class="title"><a href="#"><span class="style29">User KYC Registration Status..</span></a></span></h2>
        
          <div class="span8">
          <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
 <%@ page import ="java.security.Key" %>
 
 <%@ page import ="javax.crypto.Cipher" %> 
 
 <%@ page import ="java.math.BigInteger" %>
 
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>
 
 
    <%@ page import ="java.io.FileNotFoundException" %>  
    <%@ page import ="java.io.IOException" %>  
    <%@ page import ="java.util.Iterator" %>  
    <%@ page import ="java.util.ArrayList" %> 
        <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,uname=null,aadhaarid=null,pan="",location="",bank="",email=null,mno=null,addr=null,dob=null,gender=null,pincode=null,image=null,cloud=null,bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("username"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("aadhaarid"))
							{
								aadhaarid=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pan"))
							{
								pan=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("location"))
							{
								location=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dob=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("bank"))
							{
								bank=multi.getParameter(paramname);
							}
							
						}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) 
								{
									if (i != -1)
									 {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
							
						                }
									}	
									
								}
								
							}		
						}
						
						
		
						FileInputStream fs1 = null;
						
						
						if(uname.equals("")||location.equals("")||email.equals("")||mno.equals("")||addr.equals("")||gender.equals("--Select--")|dob.equals(""))
{			
		  %>
        <br/>
        <br/>
        <p align="center" class="style32 style18 style44 style43 style48"><strong>Please enter all the details..</strong></p>
        <span class="style46"><br/>
        </span>
        <p align="center"><span class="style51"><a href="UserRegister.jsp" class="style49">Back</a></span></p>
        <%
}
else
{
						
			 			String query1="select * from userkyc  where username='"+uname+"' and aadhaarid='"+aadhaarid+"' and pan='"+pan+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
							<br/>
        <p align="center" class="style24 style31">User Name or aadhaar id or PAN ID Already Exist..</p>
        <p align="center"><span class="style51"><a href="UserKYC.jsp" class="style49">Back</a></span></p>
        <p align="center">
          <%
				
					   }
					   else
					   {
					   
					   
					   String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(bank));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1= bi1.toString(16);
					   
					   
					  String status = "Waiting";
					  String user_kind = "Normal";
PreparedStatement ps=connection.prepareStatement("insert into userkyc(username,aadhaarid,pan,location,email,mobile,address,dob,gender,status,image,hashcode,bank) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,aadhaarid);
						ps.setString(3,pan);
						ps.setString(4,location);
						ps.setString(5,email);	
						ps.setString(6,mno);
						ps.setString(7,addr);
						ps.setString(8,dob);
						ps.setString(9,gender);
						ps.setString(10,status);
						ps.setBinaryStream(11, (InputStream)fs, (int)(file1.length()));	
						ps.setString(12,h1);
						ps.setString(13,bank);
				       
						
						if(f == 0)
							ps.setObject(11,null);
						else if(f == 11)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(9,fs1,fs1.available());
						}	
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
        </p><br/>
        <p align="center" class="style42 style25 style32">Registration Successful..</p>
        <p align="center"><a href="UserKYC.jsp" class="style10 style52">Back..</a></p>
        <%
			
					}}}}
					catch (Exception e) 
					{
						out.println(e);
					}
			%>
       