

	           	<li><a href="index.html">Home</a></li>
                <li class="active"><a href="UserLogin.jsp">Users</a></li>
                <li><a href="AdminLogin.jsp">Admin</a></li>
	  
          <h2 align="left" class="style11"><a href="#"><span class="style27"><span class="style28">Invalid Login Details, Please Try Again!!</span>..</span></a></h2>
        </div> 
        <div class="span8">
		<br/>
          <form id="form1" name="form1" method="post" action="Authentication.jsp?value=<%="userlogin"%>">
            <table width="443" align="center" cellpadding="0" cellspacing="2">
              <tr>
                <td width="168" height="60"align="center"><div align="center" class="style19 style24">
                    <div align="left">User Name (required)</div>
                </div></td>
                <td><input id="name" name="userid" type="text" /></td>
              </tr>
              <tr>
                <td height="62" align="center"><div align="center" class="style25">
                    <div align="left">Password (required)</div>
                </div></td>
                <td><input type="password" id="pass" name="pass" class="text" /></td>
              </tr>

              <tr>
                <td height="57">&nbsp;</td>
                <td><span class="style19">
                  <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" style="width:80px;height:40px;font-weight:bold;color:green;border-radius:20%;"/>
                  New User?</span><a href="UserRegister.jsp" class="style20"> Register </a></td>
              </tr>
            </table>
          	 <p align="right"><a href="index.html" class="style22 style26">Back</a></p>
          </form>
      