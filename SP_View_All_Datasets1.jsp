<style type="text/css">
<!--
.style1 {color: #FFFF00}
.style2 {color: #FF0000}
-->
</style>
			<table width="1200" height="129" border="3" align="left"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
        <tr>
         	  
<th height="63" bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">TransactionID</span></th>		
<th height="63" bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">CustomerID</span></th>		
<th height="63" bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">CustomerDOB</span></th>		
<th height="63" bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">CustGender</span></th>		
<th height="63" bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">CustLocation</span></th>		
<th height="63" bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">CustAccountBalance</span></th>		
<th height="63" bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">TransactionDate</span></th>		
<th height="63" bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">TransactionTime</span></th>		
<th height="63" bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">TransactionAmount</span></th>	
<th height="63" bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">Creditscore</span></th>	
<th height="63" bgcolor="#FF0000"><span class="style10 style6 style5 style3 style1">Hashcode</span></th>	

        </tr>
            <%@ include file="connect.jsp" %>
            <%
String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19;
int i=0,rank=0;
try 
{
	String query="select * from datasets"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		s5=rs.getString(6);
		s6=rs.getString(7);
		s7=rs.getString(8);
		s8=rs.getString(9);
		s9=rs.getString(10);
		s10=rs.getString(11);
		s11=rs.getString(12);
		
		
		
			%>
            <tr>
			  
              <td  width="74" height="60" align="center" valign="middle" ><span class="style7 style2">
                <%out.println(s1);%>
              </span></td>
              <td  width="68" height="60" align="center" valign="middle"><span class="style7 style2">
                <%out.println(s2);%>
              </span></td>
              <td  width="66" height="60" align="center" valign="middle"><span class="style7 style2">
                <%out.println(s3);%>
             
              </span></td>
              <td  width="28" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s4);%>
              
              </span></td>
              <td  width="30" height="60" align="center" valign="middle"><span class="style7 style2">
               <%out.println(s5);%>
              </span></td>
              <td  width="37" height="60" align="center" valign="middle"><span class="style7 style2">
                <%out.println(s6);%>
              </span></td>
			  <td  width="41" height="60" align="center" valign="middle"><span class="style7 style2">
                <%out.println(s7);%>
              </span></td>
			  <td  width="95" height="60" align="center" valign="middle"><span class="style7 style2">
                <%out.println(s8);%>
              </span></td>
			  <td  width="95" height="60" align="center" valign="middle"><span class="style7 style2">
                <%out.println(s9);%>
              </span></td>
			  <td  width="95" height="60" align="center" valign="middle"><span class="style7 style2">
                <%out.println(s10);%>
              </span></td>
			  <td  width="95" height="60" align="center" valign="middle"><span class="style7 style2">
                <%out.println(s11);%>
              </span></td>
			 
			 
			 </tr>
            <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
				