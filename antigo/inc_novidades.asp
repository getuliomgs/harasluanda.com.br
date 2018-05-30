<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/shim.gif" width="10" height="1"></td>
    <td><img src="images/shim.gif" width="200" height="1"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td bgcolor="#1E8284"><img src="images/novidades.jpg" width="149" height="23"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
       <td><img src="images/shim.gif" width="124" height="1"></td>
      </tr>
      <tr>
        <td valign="top" class="corpo">
			
              <%
			  	set rs=server.createobject ("ADODB.recordset")
			  
				consulta = "SELECT TOP 1 * FROM noticia ORDER BY codigo DESC"
				executaConsulta rs, consulta, GetCnx
				if not rs.eof then
			%>
            	 
                <span class="corpo_branco_pq">
                <a href="noticias.asp?id=<%= rs("codigo") %>">
                <strong><%= cortaPalavras(rs("titulo"), 60, "...") %></strong><br> <%= cortaPalavras(rs("chamada"), 60, "...") %><br><br />
                <div align="right">[ Clique aqui ]</div>
                </a>
                </span>
                
            <% else %>    
				 <span class="corpo_branco_pq">
                <br> Não há notícias cadastradas<br><br />
                </span>
    		<% end if %>
            
           
        
        
        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td align="center" valign="top"><p class="linha"><strong>..................................................</strong></p></td>
  </tr>
  
  
</table>
