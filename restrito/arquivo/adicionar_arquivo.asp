<% 
	if session("status")="online" then 
%>

<%

if request.form <> "" then
nome=request.Form("nome")
descricao=request.Form("descricao")

session("nome") = nome
session("descricao") = descricao

end if
%>
<!--#include file="../config.asp"-->
<%
set rs=server.createobject ("ADODB.recordset")
rs.open "SELECT * from ArquivoNome  order by cod_arquivo desc", GetCnx
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
.style7 {
	color: #FF6600;
	font-weight: bold;
}
.style8 {color: #666666}
-->
</style>
<script language="JavaScript">
function critica(form){
		if (form.browser.value.length<1){
			alert("Procure o arquivo para fazer o Upload!");
			form.browser.focus();
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
                        <td valign="top">
                          <!--#include file="../inc_menu.asp"--></td>
                        <td valign="top" bgcolor="#E1E1E1"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="3%"><img src="../images/shim.gif" width="17" height="17"></td>
                            <td width="94%"><img src="../images/shim.gif" width="500" height="1"></td>
                            <td width="3%"><img src="../images/shim.gif" width="17" height="17"></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td class="corpo_ver">Adicionando Arquivos</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td class="corpo_ver">&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td><img src="../images/shim.gif" width="1" height="200"></td>
                            <td align="center" valign="top"><FORM ACTION="adicionar_upload.asp" METHOD="post" enctype="multipart/form-data" onSubmit="return critica(this)">
                              <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td align="left" valign="bottom"><p class="corpo">Arquivo:</p>                                  </td>
                                </tr>
                                <tr>
                                  <td width="85%" height="20" align="left" valign="middle"><input name="browser" type="file" class="corpo" id="browser" size="40">                                </td>
                                </tr>
                                <tr>
                                  <td height="20" align="left" valign="top"><span class="corpo style7">*N&atilde;o inserir arquivos com o mesmo nome</span></td>
                                </tr>
                                
                                <tr>
                                  <td height="20" align="left" valign="top"><input name="enviar" type="image" id="enviar" value="Salvar Registro"  src="../images/bot_salvar.gif"></td>
                                </tr>
                                <tr>
                                  <td height="20" align="left" valign="top">&nbsp;</td>
                                </tr>
                                <tr>
                                  <td height="20" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td width="26%"><p class="corpo"><strong>Arquivos já anexo:</strong></p></td>
                                      <td width="74%" class="corpo">
  <%
if not Rs.EOF then
intrec=1
While intrec <= Rs.PageSize and not Rs.EOF

ArquivoNome=rs("ArquivoNome")

%>
  <%
response.Write rs ("ArquivoNome")

%></td>
                                    </tr>
                                    <tr>
                                      <td></td>
                                      <td class="corpo"><% 
intrec= intrec+1
Rs.movenext
wend
end if
%>                                    </td>
                                    </tr>
                                    </table></td>
                                </tr>
                                </table>
                              
                              </FORM></td>
                          </tr>
                          
                          </table>                        </td>
                      </tr>
                      <tr>
                        <td valign="top"></td>
                        <td></td>
                      </tr>
                      </table></td>
                  </tr>
              </table></td><td width="3%">&nbsp;</td>
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