<%
flag=request.form("flag")

if flag="1" then %>

<!--#include file="config.asp" -->

<%
nome_u=Replace(UCase(Trim(request.form("r-nome"))),"'","''")
senha_u=Replace(UCase(Trim(request.form("r-senha"))),"'","''")

			set Rs = server.createobject("adodb.recordset")
			SQL="select * from usuarios where usuario='" & nome_u & "'"
			Rs.open SQL, GetCnx

if Rs.eof then
	session("msg")="Login ou senha de acesso inexistente!"
	Response.Redirect "index.asp"
else
	If UCase(Rs("senha"))=senha_u then
		session("status")="online"
		session("usuario")= Rs ("nome")
		response.Redirect "menu.asp"
   		GetCnx.close
   		Set GetCnx = Nothing
	else
		session("msg")="Login ou senha de acesso inexistente!"
		Response.Redirect "index.asp"
	end if
end if
end if

%>
<link href="estilo.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
body {
	background-color: #666666;
}
.style3 {color: #FF0000}
-->
</style>
<title>Acesso Somente para pessoas autorizadas.</title>
<table width="775" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="images/shim.gif" width="755" height="1" /></td>
    <td><img src="images/shim.gif" width="20" height="1" /></td>
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
        <td height="17" align="right" bgcolor="#FFFFFF"><span class="corpo">Vers&atilde;o 2.5</span></td>
      </tr>
      
      <tr>
        <td bgcolor="#FFFFFF"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td width="3%">&nbsp;</td>
              <td width="97%"><img src="images/sistema.gif" width="520" height="70" /></td>
            </tr>
        </table></td>
      </tr>
      <tr>
        <td height="50" bgcolor="#FFFFFF">&nbsp;</td>
      </tr>
      <tr>
        <td align="center" bgcolor="#FFFFFF" class="corpo">Website: <label class="corpo_lar"><strong><%=website%></strong></label></td>
      </tr>
      <tr>
        <td height="25" bgcolor="#FFFFFF">&nbsp;</td>
      </tr>
      <tr>
        <td align="center" bgcolor="#FFFFFF"><form action="index.asp" method="post" name="form" id="form">
            <table width="25%" height="0%" border="0" align="center">
              
              <tr align="center">
                <td width="19%" height="21" align="right"><span class="tittxtcapa"><span class="corpo">Login</span></span></td>
                <td width="81%" align="left"><input name="r-nome" type="text" class="corp_form" id="r-nome2" size="20" maxlength="15" /></td>
              </tr>
              
              <tr align="center">
                <td height="12"><img src="images/shim.gif" width="1" height="10" /></td>
                <td height="10"><img src="images/shim.gif" width="1" height="10" /></td>
              </tr>
              <tr align="center">
                <td height="21" align="right"><span class="corpo">Senha</span></td>
                <td align="left"><input name="r-senha" type="password" class="corp_form" id="r-senha2" size="20" maxlength="15" /></td>
              </tr>
              
              <tr align="center">
                <td height="34" align="right"><input name="flag" type="hidden" id="flag2" value="1" /></td>
                <td align="right"><input name="Submit2" value="conectar..." type="image" src="images/conectar.gif" javascript:submete(document.form,3)="javascript:submete(document.form,3)" /></td>
              </tr>
            </table>
            <span class="corpo style3"><strong><%=session("msg")%></strong></span>
        </form></td>
      </tr>
      <tr>
        <td height="40" align="center" bgcolor="#FFFFFF"><p>&nbsp;</p>
          <p>&nbsp;</p></td>
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
