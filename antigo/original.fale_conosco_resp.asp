<html>
<head>
<title>:::: HARAS LUANDA ::::</title>
<link href="estilo.css" rel="stylesheet" type="text/css">
<script src="Scripts/AC_RunActiveContent.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
a:link {
	text-decoration: none;
	color: #006699;
}
a:visited {
	text-decoration: none;
	color: #006699;
}
a:hover {
	text-decoration: none;
	color: #006699;
}
a:active {
	text-decoration: none;
	color: #006699;
}
-->
</style></head>

<body leftmargin="0" topmargin="0">
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
                    <td valign="top"><!--#include file="inc_novidades.asp"--></td>
                    <td background="images/linha_menu.gif"><img src="images/shim.gif" width="1" height="1"></td>
                    <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><img src="images/tit_fale_conosco.gif" width="320" height="41"></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="right"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="5%"><img src="images/shim.gif" width="18" height="1"></td>
                            <td width="54%"><img src="images/shim.gif" width="270" height="1"></td>
                            <td width="36%"><img src="images/shim.gif" width="230" height="1"></td>
                            <td width="5%"><img src="images/shim.gif" width="18" height="1"></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td><div align="center" class="corpo2"><strong>
                              <%
nome= Request.QueryString("nome")
email= Request.QueryString("email")
telefone= Request.QueryString("telefone")
celular= Request.QueryString("celular")
endereco= Request.QueryString("endereco")
cidade= Request.QueryString("cidade")
estado= Request.QueryString("estado")
comentario= Request.QueryString("comentario")
para="paulo@versite.com.br"

    Dim MailBody
    Dim objMail
	
		
	Set objMail = Server.CreateObject("CDONTS.NewMail")
	
	
	objMail.From= email
    objMail.To= "pcqrocha@gmail.com"
    objMail.Subject="Contato Haras Luanda" 
	objMail.BodyFormat= 0
	objMail.MailFormat= 0
	MailBody ="<html><body>" &_
 					 "<table width='100%' border='1' bordercolor='#CCCCCC'>" &_
					 "<tr><td><p align='center'><font color='#0099CC' face='Verdana, Arial, Helvetica, sans-serif' size='2'><b>::: Haras Luanda :::</b></font></p></td></tr>" &_
					 "<tr><td><p><font face='Verdana, Arial, Helvetica, sans-serif' size='2'><b>&nbsp;</b></font></p></td></tr>" &_
 					 "<tr><td><p><font face='Verdana, Arial, Helvetica, sans-serif' size='2'><b>Nome:</b> "& nome &"</font></p></td></tr>" &_
					 "<tr><td><p><font face='Verdana, Arial, Helvetica, sans-serif' size='2'><b>E-Mail:</b> "& email &"</font></p></td></tr>" &_
					 "<tr><td><p><font face='Verdana, Arial, Helvetica, sans-serif' size='2'><b>Telefone:</b> "& telefone &"</font></p></td></tr>" &_
					 "<tr><td><p><font face='Verdana, Arial, Helvetica, sans-serif' size='2'><b>Celular:</b> "& celular &"</font></p></td></tr>" &_
					 "<tr><td><p><font face='Verdana, Arial, Helvetica, sans-serif' size='2'><b>Endereço:</b> "& endereco &"</font></p></td></tr>" &_
					 "<tr><td><p><font face='Verdana, Arial, Helvetica, sans-serif' size='2'><b>Cidade:</b> " & cidade & "</font></p></td></tr>" &_
					 "<tr><td><p><font face='Verdana, Arial, Helvetica, sans-serif' size='2'><b>Estado:</b> " & estado &  "</font></p></td></tr>" &_
					 "<tr><td><p><font face='Verdana, Arial, Helvetica, sans-serif' size='2'><b>Comentário:</b> " & comentario & "</font></p></td></tr>" &_
					 "<tr><td><p align='center'><font color='#0099CC' face='Verdana, Arial, Helvetica, sans-serif' size='1'>&copy; Copyright 2007 <b>::: Haras Luanda :::</b> - Powered by: Versite.Net </font></p></td></tr></table>" &_
					 "</body></html>"

    objMail.Body= MailBody
	MailBody=MailBody2
	
	if objMail.Send then
 Response.Write "Erro ao enviar a mensagem!<br>Tente novamente mais tarde."
else
  Response.Write "Sua mensagem foi enviada com sucesso!"
end if

    set objMail=nothing
%>
                            </strong><strong>
                            <%
		
	Set objMail = Server.CreateObject("CDONTS.NewMail")
	
	
	objMail.From= email
    objMail.To= "pcqrocha@ig.com.br"
    objMail.Subject="Contato Haras Luanda" 
	objMail.BodyFormat= 0
	objMail.MailFormat= 0
	MailBody2 = MailBody2

    objMail.Body= MailBody
	
	if objMail.Send then
 Response.Write ""
else
  Response.Write ""
end if

    set objMail=nothing
%>
                            </strong></div></td>
                            <td valign="top"><p class="corpo_branco_pq"><STRONG><br>
                              TELEFONES PARA CONTATO:</STRONG><BR>
                              IDE&Iacute;DES (GERENTE) - (71) 9943-1688<BR>
                              FAX: (71) 2104-0466<BR>
                              <BR>
                              <STRONG>ENDERE&Ccedil;O PARA CORRESPOND&Ecirc;NCIA:</STRONG><BR>
                              Av. ACM, 4009 - S/ 302<br>
                              Salvador/BA
                              <br>
                              CEP:40.280-000</p>
                              <p class="corpo_branco_pq">&nbsp;</p>
                              <p class="corpo_branco_pq">&nbsp;</p>
                              <p align="justify" class="corpo_branco">&nbsp;</p></td>
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
