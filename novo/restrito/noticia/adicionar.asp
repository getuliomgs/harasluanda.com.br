<!-- #INCLUDE file="fckeditor/fckeditor.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
<HEAD>
<% 
	if session("status")="online" then 
%>
<!--#include file="../config.asp"-->


<TITLE>Incluindo um novo Arquivo</TITLE>
<link href="../estilo.css" rel="stylesheet" type="text/css">
						<script language="JavaScript">
						function critica(form){
								if (form.titulo.value.length<1){
									alert("Favor preencher o campo 'Titulo da Notícia'!");
									form.titulo.focus();
									return false;
								}
								if (form.chamada.value.length<1){
									alert("Favor preencher o campo 'Chamada da Notícia'!");
									form.chamada.focus();
									return false;
								}
											return true;
						}
						 </script>
</HEAD>
<BODY class="bg">
<table width="785" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="765"><img src="../images/shim.gif" width="755" height="1" /></td>
    <td width="20"><img src="../images/shim.gif" width="20" height="1" /></td>
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
                      <tr>
                        <td valign="top" background="../images/traco.gif">&nbsp;</td>
                      </tr>
                      <tr>
                      <td valign="top" class="corpo">Website: <label class="corpo_lar"><strong><%=website%></strong></label></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
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
                        <td valign="top"><!--#include file="../inc_menu.asp" --></td>
                        <td valign="top" bgcolor="#E1E1E1"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="3%"><img src="../images/shim.gif" width="17" height="17"></td>
                            <td width="94%"><img src="../images/shim.gif" width="500" height="1"></td>
                            <td width="3%"><img src="../images/shim.gif" width="17" height="17"></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td class="corpo_ver">Incluindo Noticias</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td class="corpo_ver">&nbsp;</td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td><form method="post" action="adicionar_gravar.asp" onsubmit="return critica(this)">
                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td class="corpo"><strong>Titulo:                                  </strong></td>
                                </tr>
                                <tr>
                                  <td><input name="titulo" class="corpo" id="titulo" size="30" maxlength="<%=quant_titulo%>" />
                                      <br />
                                      <span class="corpo_ver_pq"><%=quant_titulo%> caracteres</span></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                </tr>
                                <tr>
                                  <td bgcolor="#E1E1E1"><p class="corpo"><strong>Chamada da Not&iacute;cia:</strong></p></td>
                                </tr>
                               
                                <tr>
                                  <td bgcolor="#E1E1E1"><p>
                                      <input name="chamada" class="corpo" id="chamada" size="69" maxlength="<%=quant_chamada%>" />
                                      <br />
                                      <span class="corpo_ver_pq"><%=quant_chamada%> caracteres</span></p></td>
                                </tr>
                                <tr>
                                  <td bgcolor="#E1E1E1">&nbsp;</td>
                                </tr>
                                
                                <tr>
                                  <td bgcolor="#E1E1E1"><p class="corpo"><strong>Not&iacute;cia:</strong></p></td>
                                </tr>
                                <tr>
                                  <td>
									  	<%
									Dim sBasePath
									sBasePath = Request.ServerVariables("PATH_INFO")
									sBasePath = Left( sBasePath, InStrRev( sBasePath, "/" ) )
									sBasePath = sBasePath + "fckeditor/"
									
									Dim oFCKeditor
									Set oFCKeditor = New FCKeditor
									oFCKeditor.BasePath = sBasePath
									oFCKeditor.Config("SkinPath") = sBasePath + "editor/skins/silver/"
									
									oFCKeditor.Create "noticia"
									%>							  
								  </td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                </tr>
                                <tr>
                                  <td><input name="image" type="image" value="Salvar Registro"  src="../images/bot_salvar.gif" /></td>
                                </tr>
                              </table>
                            </form></td>
                          </tr>
                          
                          </table></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
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
    <td height="20" background="../images/sombra2.jpg">&nbsp;</td>
    <td background="../images/sombra3.jpg">&nbsp;</td>
  </tr>
</table>
</BODY>
</HTML>
<%
else
Response.redirect "../off-line.asp"
end if
%>