<%
if session("status")="online" then
session("msg" )= ""
%>

<!--#include file="config.asp" -->

<html>
<head>
<title>Painel de Controle</title>

<style type="text/css">
<!--
.style3 {color: #FF0000}
.style4 {	color: #FF6600;
	font-weight: bold;
}
-->
</style>
<link href="estilo.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	background-color: #666666;
}
a:link {
	text-decoration: none;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
-->
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>
<body>
<table width="787" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="767"><img src="images/shim.gif" width="755" height="1" /></td>
    <td width="20"><img src="images/shim.gif" width="20" height="1" /></td>
  </tr>
  <tr>
    <td><table width="755" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td><img src="images/shim.gif" width="755" height="1" /></td>
      </tr>
      <tr>
        <td background="images/tarja.gif"><img src="images/shim.gif" width="1" height="14" /></td>
      </tr>
      <tr>
        <td height="17" bgcolor="#FFFFFF"><img src="images/shim.gif" width="1" height="17" /></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="2%"><img src="images/shim.gif" width="17" height="1" /></td>
            <td width="8%"><img src="images/ico_pai.jpg" width="57" height="50" /></td>
            <td width="53%"><img src="images/painel.jpg" width="393" height="65" /></td>
            <td width="34%"><img src="images/shim.gif" width="225" height="1" /></td>
            <td width="1%"><a href="../index.asp"><img src="images/sair.jpg" width="58" height="57" border="0" /></a></td>
            <td width="2%"><img src="images/shim.gif" width="17" height="1" /></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td height="15" background="images/traco.gif" bgcolor="#FFFFFF"><img src="images/shim.gif" width="1" height="15" /></td>
      </tr>
      <tr>
        <td bgcolor="#FFFFFF" class="corpo"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="9%"><img src="images/shim.gif" width="66" height="1" /></td>
            <td width="91%" class="corpo">Website: <label class="corpo_lar"><strong><%=website%></strong></label></td>
          </tr>
          <tr>
            <td>&nbsp;</td>
            <td class="corpo">Ol&aacute; <strong>

<% response.Write session("usuario") %>
            </strong> seja bem vindo." </td>
          </tr>
          
        </table></td>
      </tr>
      <tr>
        <td height="25" bgcolor="#FFFFFF"><img src="images/shim.gif" width="1" height="57" /></td>
      </tr>
      <tr>
        <td align="center" bgcolor="#FFFFFF">
		
		
		    <table width="0" border="0" cellpadding="0" cellspacing="0" align="center">
		      <tr>
			  
				<%if exis_arq = "sim" then%>

			  
		        <td width="120" valign="top"><table width="120" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="120" align="center"><a href="arquivo/adicionar.asp"><img src="images/arquivos.gif" width="77" height="72" border="0" /></a></td>
                  </tr>
                  <tr>
                    <td align="center"><span class="corpo_cla"><a href="arquivo/adicionar.asp">Clique aqui para Adicionar e <br />
excluir Arquivos. </a></span></td>
                  </tr>
                </table></td>
				<%end if%>

			    <td width="10"></td>
				
			    <%if exis_not = "sim" then%>
				
                <td width="120" valign="top"><table width="120" border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td width="120" align="center"><a href="noticia/adicionar.asp"><img src="images/noticias.gif" width="77" height="72" border="0" /></a></td>
                  </tr>
                  <tr>
                    <td align="center"><span class="corpo_cla"><a href="noticia/adicionar.asp">Clique aqui para Editar<br />
e Substituir Not&iacute;cias<br />
no site.</a></span></td>
                  </tr>
                </table></td>
				
				<%end if%>
				
				
				
				
		      </tr>
	        </table>
		  </td>
      </tr>
      
      <tr>
        <td height="115" align="center" bgcolor="#FFFFFF">&nbsp;</td>
      </tr>
      <tr>
        <td align="center" bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="center" bgcolor="#FFFFFF"><a href="http://www.versite.com.br"><img src="images/versite.gif" width="110" height="25" border="0" /></a></td>
          </tr>
          <tr>
            <td align="center" bgcolor="#FFFFFF" class="corpo">&copy; Sistema VERSiTE Interactive | <a href="http://www.versite.com.br/index.php?i=fale_conosco.php" target="_blank">Ajuda? Clique Aqui. </a></td>
          </tr>
        </table></td>
      </tr>
      
      <tr>
        <td align="center" bgcolor="#FFFFFF"><img src="images/shim.gif" width="1" height="11" /></td>
      </tr>
      <tr>
        <td align="center" background="images/tarja.gif" bgcolor="#FFFFFF"><img src="images/shim.gif" width="1" height="14" /></td>
      </tr>
    </table></td>
    <td background="images/sombra.jpg"><img src="images/shim.gif" width="1" height="1" /></td>
  </tr>
  <tr>
    <td background="images/sombra2.jpg">&nbsp;</td>
    <td background="images/sombra3.jpg">&nbsp;</td>
  </tr>
</table>
</body>
</html>
<%
else
session("msg")="Você precisa logar-se novamente"
Response.Redirect "off-line.asp"
end if
%>