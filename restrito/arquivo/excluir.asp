<% 
	' Teste de sessão
	if session("status")="online" then 
%>
<!--#include file="../config.asp"-->
<%
set rs=server.createobject ("ADODB.recordset")
rs.open "SELECT * from ArquivoNome order by cod_arquivo desc", GetCnx
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
<HEAD>
<TITLE>Incluindo um novo Arquivo</TITLE>
<link href="../estilo.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body {
	background-color: #666666;
}
.fundo {
	background-image: url(../images/traco.gif);
	background-repeat: repeat-x;
}
.style6 {color: #ECE9D8}
.style8 {color: #666666}
-->
</style>
<script language="JavaScript">
function critica(form){
		if (form.nome.value.length<1){
			alert("Favor preencher o campo Nome do Arquivo!");
			form.nome.focus();
			return false;
		}
	if (form.descricao.value.length<1){
		alert("Favor preencher o campo Descrição!");
		form.descricao.focus();
		return false;
	}
					form.submit();
}
 </script>
 <script language="javascript">

var Aberto = ""
var Fechado = ""

function mostra(item){
if (item.style.display=='none'){
item.style.display=''
}
else{
item.style.display='none'
}
}

function sinal(item){
if (item.style.display=='none'){
item.style.display=''
}
else{
item.style.display='none'
}
}

</script>
<script language="javascript">
  function confirmaExclusao(aURL) {
    if(confirm('Você tem certeza que deseja excluir?')) {
      location.href = aURL;
    }
  }
</script>
</HEAD>
<BODY class="corpo">
<table width="775" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="765"><img src="../images/shim.gif" width="755" height="1" /></td>
    <td width="56"><img src="../images/shim.gif" width="20" height="1" /></td>
  </tr>
  <tr>
    <td><table width="755" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="755"><img src="../images/shim.gif" width="755" height="1" /></td>
      </tr>
      <tr>
        <td background="../images/tarja.gif"><img src="../images/shim.gif" width="1" height="14" /></td>
      </tr>
      <tr>
        <td height="17" bgcolor="#FFFFFF"><table width="99%" border="0" cellspacing="0" cellpadding="0">
          
          <tr>
            <td><img src="../images/shim.gif" width="17" height="17"></td>
            <td><img src="../images/shim.gif" width="721" height="1"></td>
            <td><img src="../images/shim.gif" width="17" height="1"></td>
            </tr>
          <tr>
            <td width="2%"><img src="../images/shim.gif" width="17" height="1"></td>
            <td width="95%"><!--#include file="../inc/inc_topo.asp"-->
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td><img src="../images/shim.gif" width="57" height="1"></td>
                    <td><img src="../images/shim.gif" width="664" height="1"></td>
                  </tr>
                <tr>
                  <td width="8%"><a href="../menu.asp"><img src="../images/voltar.jpg" width="49" height="49" border="0"></a></td>
                    <td width="92%"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr class="fundo">
                        <td valign="top">&nbsp;</td>
                      </tr>
                      <tr>
                      <td valign="top" class="corpo">Website: <label class="corpo_lar"><strong><%=website%></strong></label></td>
                      </tr>
                      <tr>
                        <td valign="top" class="corpo">&nbsp;</td>
                      </tr>
                      </table>                    </td>
                  </tr>
                
                <tr>
                  <td>&nbsp;</td>
                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td width="21%"><img src="../images/shim.gif" width="140" height="1"></td>
                        <td width="79%"><img src="../images/shim.gif" width="140" height="1"></td>
                      </tr>
                      <tr>
                        <td valign="top"><!--#include file="../inc_menu.asp"--></td>
                        <td valign="top" bgcolor="#E1E1E1"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="3%"><img src="../images/shim.gif" width="17" height="17"></td>
                            <td width="94%"><img src="../images/shim.gif" width="500" height="1"></td>
                            <td width="3%"><img src="../images/shim.gif" width="17" height="17"></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td class="corpo_ver">Excluir Arquivos </td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td><p class="corpo_lar">&nbsp;</p>                            </td>
                            <td>&nbsp;</td>
                          </tr>
                          
                          <tr>
                            <td><img src="../images/shim.gif" width="1" height="200"></td>
                            <td valign="top"><span class="corpo_ver">
                              <%
if not Rs.EOF then
intrec=1
While intrec <= Rs.PageSize and not Rs.EOF

cod_arquivo=rs("cod_arquivo")
nome=rs("nome")
descricao=rs("descricao")
ArquivoNome=rs("ArquivoNome")

%>
                              </span>
                              <table width="84%" height="76" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td><img src="../images/shim.gif" width="1" height="5"></td>
                                <td class="corpo"><img src="../images/shim.gif" width="1" height="5"></td>
                                <td class="corpo"><img src="../images/shim.gif" width="1" height="5"></td>
                              </tr>
                                <tr>
                                  <td width="13%" valign="top"><p class="corpo"><strong>Nome:</strong></p>                                </td>
                                <td width="87%" height="20" valign="top" class="corpo"><%=nome%></td>
                                <td width="87%" class="corpo">&nbsp;</td>
                              </tr>
                                <tr>
                                  <tr>
                                    <td valign="top"><img src="../images/shim.gif" width="1" height="5"></td>
                                <td valign="top" class="corpo"><img src="../images/shim.gif" width="1" height="5"></td>
                                <td class="corpo"><img src="../images/shim.gif" width="1" height="5"></td>
                              </tr>
                                <tr>
                                  <td valign="top"><p class="corpo"><strong>Descri&ccedil;&atilde;o:</strong></p>                                </td>
                                <td height="20" valign="top" class="corpo"><%=descricao%> </td>
                                <td class="corpo">&nbsp;</td>
                              </tr>
                                
                                <tr>
                                  <td><img src="../images/shim.gif" width="1" height="5"></td>
                                <td valign="top"><img src="../images/shim.gif" width="1" height="5"></td>
                                <td><img src="../images/shim.gif" width="1" height="5"></td>
                              </tr>
                                <tr>
                                  <td><p class="corpo"><strong>Arquivo:</strong></p>                                </td>
                                <td class="corpo"><%=ArquivoNome%> </td>
                                <td><a href="javascript:confirmaExclusao('excluir_gravar.asp?cod_arquivo=<%=cod_Arquivo%>&ArquivoNome=<%=ArquivoNome%>')" class="corpo"><img src="../images/excluir.jpg" width="66" height="15" border="0"></a></td>
                              </tr>
                                <tr>
                                  <td><img src="../images/shim.gif" width="1" height="5"></td>
                                <td><img src="../images/shim.gif" width="1" height="5"></td>
                                <td><img src="../images/shim.gif" width="1" height="5"></td>
                              </tr>
                                <tr>
                                  <td bgcolor="#FFFFFF"><img src="../images/shim.gif" width="62" height="1"></td>
                                <td bgcolor="#FFFFFF"><img src="../images/shim.gif" width="372" height="1"></td>
                                <td bgcolor="#FFFFFF"><img src="../images/shim.gif" width="66" height="1"></td>
                              </tr>
                                </table>
  <% 
intrec= intrec+1
Rs.movenext
wend
end if
%>
  <p>&nbsp;</p></td>
  </tr>
                          
                          </table></td>
                      </tr>
                      <tr>
                        <td valign="top"></td>
                        <td></td>
                      </tr>
                      </table></td>
                  </tr>
              </table></td><td width="3%"></td>
            </tr>
          
        </table></td>
      </tr>
      
      <tr>
        <td align="center" bgcolor="#FFFFFF"><!--#include file="../inc/inc_base.asp"--></td>
      </tr>
      
      <tr>
        <td align="center" bgcolor="#FFFFFF"><img src="../images/shim.gif" width="1" height="11" /></td>
      </tr>
      <tr>
        <td align="center" background="../images/tarja.gif" bgcolor="#FFFFFF"><img src="../images/shim.gif" width="1" height="14" /></td>
      </tr>
    </table></td>
    <td background="../images/sombra.jpg"><img src="../images/shim.gif" width="1" height="1" /></td>
  </tr>
  <tr>
    <td background="../images/sombra2.jpg">&nbsp;</td>
    <td background="../images/sombra3.jpg">&nbsp;</td>
  </tr>
</table>
</BODY>
</HTML>
<%
' Redirect caso sessão espirada
else
Response.redirect "off-line.asp"
end if
%>