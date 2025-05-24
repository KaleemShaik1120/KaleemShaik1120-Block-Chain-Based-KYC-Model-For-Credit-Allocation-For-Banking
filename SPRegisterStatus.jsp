
	
	           
          <h2 align="left" class="style11"><span class="title"><a href="#"><span class="style29">Service Provider  Registration Status..</span></a></span></h2>
        
          <div class="span8">
          <%@ include file="connect.jsp" %>
        <%@ page import="java.io.*" %>
        <%@ page import="java.util.*" %>
        <%@ page import="com.oreilly.servlet.*" %>
        <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,uname=null,pass=null,email=null,mno=null,addr=null,dob=null,gender=null,pincode=null,location=null,image=null,cloud=null,bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("userid"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pass"))
							{
								pass=multi.getParameter(paramname);
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
						
						
						if(uname.equals("")||pass.equals("")||email.equals("")||mno.equals("")||addr.equals("")||gender.equals("--Select--")|dob.equals(""))
{			
		  %>
        <br/>
        <br/>
        <p align="center" class="style32 style18 style44 style43 style48"><strong>Please enter all the details..</strong></p>
        <span class="style46"><br/>
        </span>
        <p align="center"><span class="style51"><a href="SP_Register.jsp" class="style49">Back</a></span></p>
        <%
}
else
{
						
			 			String query1="select * from sp_user where username='"+uname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
							<br/>
        <p align="center" class="style24 style31">User Name Already Exist..</p>
        <p align="center"><span class="style51"><a href="SP_Register.jsp" class="style49">Back</a></span></p>
        <p align="center">
          <%
				
					   }
					   else
					   {
					   
					  String status = "Waiting";
					  String user_kind = "Normal";
PreparedStatement ps=connection.prepareStatement("insert into sp_user(username,password,email,mobile,address,dob,gender,status,image) values(?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,pass);
						ps.setString(3,email);	
						ps.setString(4,mno);
						ps.setString(5,addr);
						ps.setString(6,dob);
						ps.setString(7,gender);
						ps.setString(8,status);
				
						ps.setBinaryStream(9, (InputStream)fs, (int)(file1.length()));	
				       
						
						if(f == 0)
							ps.setObject(9,null);
						else if(f == 12)
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
        <p align="center"><a href="SP_Register.jsp" class="style10 style52">Back..</a><a href="SP_Login.jsp" style="margin-left:15px;" class="style10 style52">Login..</a></p>
        <%
			
					}}}}
					catch (Exception e) 
					{
						out.println(e);
					}
			%>
       