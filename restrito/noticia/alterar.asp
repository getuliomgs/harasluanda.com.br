<% 
	if session("status")="online" then 
%>

<!--#include file="../config.asp"-->

<%
set rs=server.createobject ("ADODB.recordset")
rs.open "SELECT * from noticia order by codigo desc", GetCnx
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
<HEAD>
<TITLE>Incluindo um novo Arquivo</TITLE>
<link href="../estilo.css" rel="stylesheet" type="text/css">
</HEAD>
<BODY class="bg">
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
                      <tr background="../images/traco.gif">
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                      <td valign="top" class="corpo">Website: <label class="corpo_lar"><strong><%=website%></strong></label></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      </table>
					  </td>
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
                        <td valign="top" bgcolor="#E1E1E1"><form action="alterar_home.asp" method="post">
                          <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="3%"><img src="../images/shim.gif" width="17" height="17"></td>
                            <td width="94%"><img src="../images/shim.gif" width="500" height="1"></td>
                            <td width="3%"><img src="../images/shim.gif" width="17" height="17"></td>
                          </tr>
                            
                            
                            
                            <tr>
                              <td>&nbsp;</td>
                            <td><p class="corpo_ver">Alterar Not&iacute;cias</p>                            </td>
                          </tr>
                            <tr>
                              <td>&nbsp;</td>
                            <td><p class="corpo_lar"><strong>*Clique no Titulo para Alterar </strong></p>                            </td>
                          </tr>
                            <tr>
                              <td><img src="../images/shim.gif" width="1" height="200"></td>
                            <td valign="top">
<br><%
While not Rs.EOF
	codigo=rs("codigo")
	titulo=rs("titulo")
	chamada=rs("chamada")
	noticia=rs("noticia")
%>
                              <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <td><img src="../images/shim.gif" width="1" height="5"></td>
                                  <td></td>
                                  <td></td>
                                </tr>
                                <tr>
                                  <td width="62" valign="top" class="corpo"><strong>Titulo:</strong></td>
                                  <td width="400" height="20" valign="top" class="corpo"><a href="alterar_noticia.asp?codigo=<%=codigo%>"><%=titulo%></a></td>
                                  <td width="38"></td>
                                </tr>
                                <tr>
                                  <tr>
									<td><img src="../images/shim.gif" width="1" height="5"></td>
									<td></td>
									<td></td>
                                </tr>
                                <tr>
                                  <td valign="top" class="corpo"><strong>Chamada:</strong></td>
                                  <td height="20" valign="top" class="corpo"><%=chamada%></td>
                                  <td></td>
                                </tr>
                                
                                <tr>
                                  <td><img src="../images/shim.gif" width="1" height="5"></td>
                                  <td></td>
                                  <td></td>
                                </tr>
                                <tr class="corpo">
                                  <td valign="top"><strong>Not&iacute;cia:</strong></td>
                                  <td valign="top"><%=noticia%></td>
                                  <td></td>
                                </tr>
                                <tr>
                                  <td><img src="../images/shim.gif" width="1" height="5"></td>
                                  <td></td>
                                  <td></td>
                                </tr>
                                <tr>
                                  <td bgcolor="#FFFFFF"><img src="../images/shim.gif" width="62" height="1"></td>
                                  <td bgcolor="#FFFFFF"><img src="../images/shim.gif" width="310" height="1"></td>
                                  <td bgcolor="#FFFFFF"><img src="../images/shim.gif" width="38" height="1"></td>
                                </tr>
                                </table>
<% 
Rs.movenext
wend
%>
</td>
                          </tr>
                            </table>
					    </form>	
						</td>
                      </tr>
                      <tr>
                        <td></td>
                        <td></td>
                      </tr>
                      </table></td>
                  </tr>
              </table>
			  </td>
			  <td>
			  </td>
            </tr>
          
        </table>
		</td>
      </tr>
      <tr>
        <td><!--#include file="../inc/inc_base.asp"--></td>
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
else
Response.redirect "../off-line.asp"
end if
%>