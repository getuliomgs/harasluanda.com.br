<% 
	if session("status")="online" then 
%>

<!--#include file="../config.asp" -->

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
.style7 {
	color: #FF6600;
	font-weight: bold;
}
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
</HEAD>
<BODY class="corpo">
<table width="775" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><img src="../images/shim.gif" width="755" height="1" /></td>
    <td><img src="../images/shim.gif" width="20" height="1" /></td>
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
            <td width="95%">
			<!--#include file="../inc/inc_topo.asp" -->
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
                          <td class="corpo_ver">Incluindo Arquivos </td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td>&nbsp;</td>
                          <td class="corpo_ver">&nbsp;</td>
                          <td>&nbsp;</td>
                        </tr>
                        <tr>
                          <td><img src="../images/shim.gif" width="1" height="200"></td>
                          <td valign="top"><FORM METHOD="post" ACTION="adicionar_arquivo.asp" onSubmit="return critica(this)">
                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td class="corpo"><strong>Nome do Arquivo:</strong></td>
                                </tr>
                                <tr>
                                  <td><input name="nome" class="corpo" id="nome" size=40></td>
                                </tr>
                                <tr>
                                  <td class="corpo">&nbsp;</td>
                                </tr>
                                <tr>
                                  <td bgcolor="#E1E1E1" class="corpo"><strong>Descri&ccedil;&atilde;o:</strong></td>
                                </tr>
                                <tr>
                                  <td><textarea name="descricao" cols="80" rows="8" class="corpo" id="descricao"></textarea></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                </tr>
                                <tr>
                                  <td><input name="SUBMIT" type="image"  src="../images/bot_salvar.gif" value="Salvar Registro"></td>
                                </tr>
                              </table>
                          </FORM></td>
                        </tr>
                        
                      </table></td>
                    </tr>
                    <tr>
                      <td valign="top">&nbsp;</td>
                      <td>&nbsp;</td>
                    </tr>
                  </table></td>
                </tr>
              </table></td>
            <td width="3%">&nbsp;</td>
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