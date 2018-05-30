<% 
	if session("status")="online" then 
%>
<!--#include file="../config.asp"-->
<%
set rs=server.createobject ("ADODB.recordset")
rs.open "SELECT * from noticia  order by codigo desc", GetCnx
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
<HEAD>
<TITLE>Incluindo um novo Arquivo</TITLE>
<link href="../estilo.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
body {
	background-color: #666666;
}
.fundo {
	background-image: url(../images/traco.gif);
	background-repeat: repeat-x;
}
.style6 {color: #ECE9D8}
-->
</style>
	<SCRIPT LANGUAGE = "JavaScript">
	
	function verifica(to_be_checked,total_boxes){
	var selecionado = false;
	
	if (total_boxes == 1){
	
		   if (document.forms[0].codigo.checked)
		   selecionado = true;
	}
	 	
		if  (total_boxes != 1)
		{	
					for ( i=0 ; i < total_boxes ; i++ ){		   
							if (document.forms[0].codigo[i].checked)
							selecionado = true;
					} 
		}

			 if (!selecionado)
			{
				alert('Selecione o registro!');
			}
			else
			{
				document.forms[0].submit();
			}
		
	}

	</SCRIPT>
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
                        <td valign="top"><!--#include file="../inc_menu.asp" --></td>
                        <td valign="top" bgcolor="#E1E1E1"><table width="100%" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="3%"><img src="../images/shim.gif" width="17" height="17"></td>
                            <td width="94%"><img src="../images/shim.gif" width="500" height="1"></td>
                            <td width="3%"><img src="../images/shim.gif" width="17" height="17"></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td class="corpo_ver">Excluir Not&iacute;cias </td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td><p class="corpo_lar">&nbsp;</p>                            </td>
                            <td>&nbsp;</td>
                          </tr>
                          
                          <tr>
                            <td><img src="../images/shim.gif" width="1" height="200"></td>
                            <td valign="top"><br>
						                            <form name="form2" method="get" action="excluir_gravar.asp" >

																		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="corpo">
																														<%
																														contador = 0
																															While not Rs.EOF
																																contador = contador  + 1
																																codigo = rs("codigo")
																																titulo = rs("titulo")
																																chamada = rs("chamada")
																																noticia = rs("noticia")
																														%>
																		  <tr>
																			<td width="5%" height="5"></td>
																			<td width="13%"></td>
																			<td width="77%"></td>
																			<td width="5%"></td>
																		  </tr>
																		  <tr>
																			<td valign="top"><input name="codigo" type="checkbox" value="<%=codigo%>"></td>
																			<td valign="top"><strong>Titulo:</strong></td>
																			<td valign="top"><%=titulo%></td>
																			<td><img src="../images/shim.gif" width="1" height="20"></td>
																		  </tr>
																		  <tr>
																			<td height="5"></td>
																			<td></td>
																			<td></td>
																			<td></td>
																		  </tr>
																		  <tr>
																			<td></td>
																			<td valign="top"><strong>Chamada:</strong></td>
																			<td valign="top"><%=chamada%></td>
																			<td><img src="../images/shim.gif" width="1" height="20"></td>
																		  </tr>
																		  <tr>
																			<td height="5"></td>
																			<td></td>
																			<td></td>
																			<td></td>
																		  </tr>
																		  <tr>
																			<td></td>
																			<td valign="top"><strong>Notícia</strong></td>
																			<td valign="top"><%=noticia%></td>
																			<td><img src="../images/shim.gif" width="1" height="20"></td>
																		  </tr>
																		  <tr>
																			<td height="5"></td>
																			<td></td>
																			<td></td>
																			<td></td>
																		  </tr>
																		  <tr bgcolor="#FFFFFF">
																			<td></td>
																			<td></td>
																			<td></td>
																			<td></td>
																		  </tr>
																															<% 
																															Rs.movenext
																															wend
																															%>
																		</table>
<br>
<input name="Excluir" type="image"  src="../images/bot_limpar.gif"class="corpo_lar" id="Excluir" value="Excluir"  onClick="verifica(false,<%=contador%>)">
						                            </form>
							</td>
						  </tr>
                          </table></td>
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
          
        </table></td>
      </tr>
      
      <tr>
        <td bgcolor="#FFFFFF"><!--#include file="../inc/inc_base.asp"--></td>
      </tr>
      
      <tr>
        <td bgcolor="#FFFFFF"><img src="../images/shim.gif" width="1" height="11" /></td>
      </tr>
      <tr>
        <td background="../images/tarja.gif" bgcolor="#FFFFFF"><img src="../images/shim.gif" width="1" height="14" /></td>
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