
          
		 <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>  




          <h2 class="style3">&nbsp;</h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of Blockchain 
						
						 String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,hsign,s111;
						int i=0,j=1,k=0,rank=0;
												
						try 
						{
						String str1 = " select distinct(Country_hashcode) from datasets ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						    hsign = rs1.getString(1);
						   	String query="select * from datasets  where Country_hashcode='"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while (rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							
							s111=rs.getString(4);
							
							
							String keys = "ef50a0ef2c3e3a5f";
						byte[] keyValue1 = keys.getBytes();
      					Key key1 = new SecretKeySpec(keyValue1,"AES");
      					Cipher c1 = Cipher.getInstance("AES");
      					c1.init(Cipher.DECRYPT_MODE, key1);
							
							
							
							String decryptedValue1 = new String(Base64.decode(s111.getBytes()));
							
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
         </style>
				 
		
		<table width="650" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
 <td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11">
   <div align="center"><strong> Did</strong></strong></div>
 </div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11">
  <div align="center"><strong>DDate</strong></strong></div>
</div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11">
  <div align="center"><strong>Country</strong></strong></div>
</div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11">
  <div align="center"><strong>City</strong></strong></div>
</div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11">
  <div align="center"><strong>Killed</strong></strong></div>
</div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11">
  <div align="center"><strong>Injured</strong></strong></div>
</div></td>	
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11">
  <div align="center"><strong>Description</strong></strong></div>
</div></td>
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11">
  <div align="center"><strong>Country_hashcode</strong></strong></div>
</div></td>
<td  width="47" height="45"  valign="middle" bgcolor="#FFFF00" ><div align="center" class="style1 style12 style11">
  <div align="center"><strong>City_hashcode</strong></strong></div>
</div></td>
            </tr>
		 
         <h3 align="center">
<p align="center" class="style1"><span class="style1">View Country Name--->::</span> <%=decryptedValue1%><br>
			    <span class="style1">Country Name Hash Code --->::</span><%=hsign%></p>
	     </h3>
			<div align="center">
			  <%
							
							}
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
							
					%>
	      </div>  
			
               <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <%out.println(s1);%>
              </div></td>
             
              <td height="41" align="center"  valign="middle"><div align="center" class="style4">
                <strong><%out.println(s2);%></strong>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s3);%>
              </div></td>
              <td height="41" align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s4);%>
              </div></td>
			   <td height="41" align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s5);%>
              </div></td> <td height="41" align="center"  valign="middle"><div align="center" class="style4">
                <%out.println(s6);%>
              </div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <textarea><%out.println(s7);%></textarea>
              </div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <%out.println(s8);%>
              </div></td>
			  <td height="41" align="center"  valign="middle"><div align="center" class="style4">
               <%out.println(s9);%>
              </div></td>
			 
            </tr>
 	
	    <%
					 
			   }
			   
			    }
					 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>  
		  
		  
        