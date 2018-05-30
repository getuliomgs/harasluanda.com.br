<!--#include file="restrito/config.asp"-->
<!--#include file="funcoes.asp"-->
<html>
<head>
<title>:::: HARAS LUANDA ::::</title>
<link href="estilo.css" rel="stylesheet" type="text/css">
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<script type="text/javascript" src="Scripts/lightbox.js"></script>
<link href="css/lightbox.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
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
#Layer1 {
	position:absolute;
	width:629px;
	height:324px;
	z-index:1;
	visibility: visible;
	left: 464px;
}
-->
</style></head>

<body leftmargin="0" topmargin="0" bgcolor="#A8D8FE">
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="bg_int">
  <tr>
    <td align="center"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td align="center"><table width="775" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td><script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0','width','775','height','65','src','swf/menu','quality','high','pluginspage','http://www.macromedia.com/go/getflashplayer','wmode','transparent','movie','swf/menu' ); //end AC code
    </script>
                  <noscript>
                  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="775" height="65">
                    <param name="movie" value="swf/menu.swf">
                    <param name="quality" value="high">
                    <param name="wmode" value="transparent">
                    <embed src="swf/menu.swf" width="775" height="65" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
                  </object>
                </noscript></td>
            </tr>
            <tr>
              <td><script type="text/javascript">
AC_FL_RunContent( 'codebase','http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0','width','775','height','200','src','swf/topo','quality','high','pluginspage','http://www.macromedia.com/go/getflashplayer','wmode','transparent','movie','swf/topo' ); //end AC code
    </script>
                  <noscript>
                  <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="775" height="200">
                    <param name="movie" value="swf/topo.swf">
                    <param name="quality" value="high">
                    <param name="wmode" value="transparent">
                    <embed src="swf/topo.swf" width="775" height="200" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" wmode="transparent"></embed>
                  </object>
                  </noscript>              </td>
            </tr>
            <tr>
              <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td><img src="images/shim.gif" width="210" height="1"></td>
                    <td><img src="images/shim.gif" width="11" height="1"></td>
                    <td><img src="images/shim.gif" width="554" height="1"></td>
                  </tr>
                  <tr>
                    <td valign="top"><p>&nbsp;</p>
                      <p>&nbsp;</p>
                      <p><a href="images/exposicoes/01.jpg" rel="lightbox" title="Absoluto do Campo Novo Campeão de Marcha da Copa Baiana 2005"><img src="images/exposicoes/01_pq.jpg" width="208" height="92" border="0"></a></p></td>
                    <td background="images/linha_menu.gif"><img src="images/shim.gif" width="1" height="1"></td>
                    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><img src="images/tit_noticias.gif" width="320" height="41"></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td><img src="images/shim.gif" width="18" height="1"></td>
                            <td><img src="images/shim.gif" width="518" height="1"></td>
                            <td><img src="images/shim.gif" width="18" height="1"></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td class="corpo_branco_pq">
                            
                            
                            
                            
                            
                            
                            
                            
                            
                            
               
					<%
					
						set rs=server.createobject ("ADODB.recordset")
						
						Dim idNoticia
						Dim consulta
						
						Dim fotoNoticia
						Dim tituloNoticia
						Dim textoNoticia
						
						
						idNoticia = FiltroQryString("id")
						
						if idNoticia = 0 then
							consulta = "SELECT TOP 1 * FROM noticia ORDER BY codigo DESC"
						else
							consulta = "SELECT * FROM noticia WHERE codigo = " & idNoticia
						end if	
					
						executaConsulta rs, consulta, GetCnx
						if not rs.eof then
							
							idNoticia = rs("codigo")
							tituloNoticia = rs("titulo")
							chamadaNoticia = rs("chamada")
							textoNoticia = rs("noticia")
						
						else
							textoNoticia = "Não há notícias cadastradas"
						end if
						
						rs.close
					%>
					
				
					
                    <span class="corpo2"><strong><%= tituloNoticia %></strong></span><br>
					
                    <!-- Texto -->
                    <div style="text-align: justify">  
					<%= textoNoticia %>
                    </div>
	
                             
                             <%
							 	consulta = "SELECT * FROM noticia WHERE codigo <> " & idNoticia & " ORDER BY codigo DESC"
							 	executaConsulta rs, consulta, GetCnx
								
								if not rs.eof then
							%>
                            	<br><p align="justify"><span class="corpo2"><strong>Mais Novidades:</strong></span><br></p>
                            <%	
									while not rs.eof
									%>
								  		<a href="?id=<%= rs("codigo") %>" class="corpo2" title="Veja mais"><%= rs("titulo") %></a> <br /><br />
									<%
									rs.movenext
									wend
								
								end if
							 %>
                                   
                              <blockquote>
                                <p class="corpo_branco_pq">&nbsp;</p>
                                </blockquote>
                              <p align="justify" class="corpo_branco_pq">&nbsp;</p>                              </td>
                            <td>&nbsp;</td>
                          </tr>
                        </table></td>
                      </tr>
                      <tr>
                        <td align="right"><blockquote><img src="images/home_topo.gif" width="117" height="20" border="0" usemap="#Map"></blockquote></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                    </table>
                      <map name="Map">
                        <area shape="rect" coords="2,1,60,19" href="index.asp">
                        <area shape="rect" coords="65,1,133,20" href="#">
                      </map></td>
                  </tr>
              </table></td>
            </tr>
            <tr>
              <td height="20" align="right">&nbsp;</td>
            </tr>
        </table></td>
      </tr>
      
    </table></td>
  </tr>
  <tr>
    <td height="20" align="center" bgcolor="#FFFFFF"><!--#include file="inc_base.asp"--></td>
  </tr>
</table>
</body>
</html>
