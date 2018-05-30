<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
<HEAD>
<TITLE>Incluindo um novo Arquivo</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
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
	




<%





Class FCKeditor

	private sBasePath
	private sInstanceName
	private sWidth
	private sHeight
	private sToolbarSet
	private sValue

	private oConfig

	Private Sub Class_Initialize()
		sBasePath		= "/fckeditor/"
		sWidth			= "100%"
		sHeight			= "200"
		sToolbarSet		= "Default"
		sValue			= ""

		Set oConfig = CreateObject("Scripting.Dictionary")
	End Sub

	Public Property Let BasePath( basePathValue )
		sBasePath = basePathValue
	End Property

	Public Property Let InstanceName( instanceNameValue )
		sInstanceName = instanceNameValue
	End Property

	Public Property Let Width( widthValue )
		sWidth = widthValue
	End Property

	Public Property Let Height( heightValue )
		sHeight = heightValue
	End Property

	Public Property Let ToolbarSet( toolbarSetValue )
		sToolbarSet = toolbarSetValue
	End Property

	Public Property Let Value( newValue )
		If ( IsNull( newValue ) OR IsEmpty( newValue ) ) Then
			sValue = ""
		Else
			sValue = newValue
		End If
	End Property

	Public Property Let Config( configKey, configValue )
		oConfig.Add configKey, configValue
	End Property

	Public Function Create( instanceName )

		Response.Write "<div>"

		If IsCompatible() Then

			Dim sFile
			If Request.QueryString( "fcksource" ) = "true" Then
				sFile = "fckeditor.original.html"
			Else
				sFile = "fckeditor.html"
			End If

			Dim sLink
			sLink = sBasePath & "editor/" & sFile & "?InstanceName=" + instanceName

			If (sToolbarSet & "") <> "" Then
				sLink = sLink + "&amp;Toolbar=" & sToolbarSet
			End If

			' Render the linked hidden field.
			Response.Write "<input type=""hidden"" id=""" & instanceName & """ name=""" & instanceName & """ value=""" & Server.HTMLEncode( sValue ) & """ style=""display:none"" />"

			' Render the configurations hidden field.
			Response.Write "<input type=""hidden"" id=""" & instanceName & "___Config"" value=""" & GetConfigFieldString() & """ style=""display:none"" />"

			' Render the editor IFRAME.
			Response.Write "<iframe id=""" & instanceName & "___Frame"" src=""" & sLink & """ width=""" & sWidth & """ height=""" & sHeight & """ frameborder=""0"" scrolling=""no""></iframe>"

		Else

			Dim sWidthCSS, sHeightCSS

			If InStr( sWidth, "%" ) > 0  Then
				sWidthCSS = sWidth
			Else
				sWidthCSS = sWidth & "px"
			End If

			If InStr( sHeight, "%" ) > 0  Then
				sHeightCSS = sHeight
			Else
				sHeightCSS = sHeight & "px"
			End If

			Response.Write "<textarea name=""" & instanceName & """ rows=""4"" cols=""40"" style=""width: " & sWidthCSS & "; height: " & sHeightCSS & """>" & Server.HTMLEncode( sValue ) & "</textarea>"

		End If

		Response.Write "</div>"

	End Function

	Private Function IsCompatible()

		Dim sAgent
		sAgent = Request.ServerVariables("HTTP_USER_AGENT")

		Dim iVersion

		If InStr(sAgent, "MSIE") > 0 AND InStr(sAgent, "mac") <= 0  AND InStr(sAgent, "Opera") <= 0 Then
			iVersion = CInt( ToNumericFormat( Mid(sAgent, InStr(sAgent, "MSIE") + 5, 3) ) )
			IsCompatible = ( iVersion >= 5.5 )
		ElseIf InStr(sAgent, "Gecko/") > 0 Then
			iVersion = CLng( Mid( sAgent, InStr( sAgent, "Gecko/" ) + 6, 8 ) )
			IsCompatible = ( iVersion >= 20030210 )
		Else
			IsCompatible = False
		End If

	End Function

	' By Agrotic
	' On ASP, when converting string to numbers, the number decimal separator is localized
	' so 5.5 will not work on systems were the separator is "," and vice versa.
	Private Function ToNumericFormat( numberStr )

		If IsNumeric( "5.5" ) Then
			ToNumericFormat = Replace( numberStr, ",", ".")
		Else
			ToNumericFormat = Replace( numberStr, ".", ",")
		End If

	End Function

	Private Function GetConfigFieldString()

		Dim sParams

		Dim bFirst
		bFirst = True

		Dim sKey
		For Each sKey in oConfig

			If bFirst = False Then
				sParams = sParams & "&amp;"
			Else
				bFirst = False
			End If

			sParams = sParams & EncodeConfig( sKey ) & "=" & EncodeConfig( oConfig(sKey) )

		Next

		GetConfigFieldString = sParams

	End Function

	Private Function EncodeConfig( valueToEncode )
		' The locale of the asp server makes the conversion of a boolean to string different to "true" or "false"
		' so we must do it manually
    If vartype(valueToEncode) = vbBoolean then 
			If valueToEncode=True Then
				EncodeConfig="True"
			Else
				EncodeConfig="False"
			End If 
		Else
			EncodeConfig = Replace( valueToEncode, "&", "%26" )
			EncodeConfig = Replace( EncodeConfig , "=", "%3D" )
			EncodeConfig = Replace( EncodeConfig , """", "%22" )
		End if                           

	End Function

End Class




%>












	
	
	<% 
		if session("status")="online" then 
		codigo=request.QueryString("codigo")
	%>


	<!--#include file="../config.asp"-->

	<%
	Set rs = Server.CreateObject("ADODB.Recordset")
	rs.Open "SELECT * FROM noticia where codigo=" & codigo, GetCnx, 1, 3
	%>

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
                      <tr>
                        <td background="../images/traco.gif">&nbsp;</td>
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
                            <td class="corpo_ver">Alterando Noticias </td>
                            <td>&nbsp;</td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td></td>
                            <td></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td><FORM METHOD="post" ACTION="alterar_gravar.asp" onSubmit="return critica(this)">
                              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                  <td class="corpo"><strong>Titulo:
                                    <input name="codigo" type="hidden" id="codigo" value="<%=rs("codigo")%>">
                                  </strong></td>
                                  </tr>
                                <tr>
                                  <td><input name="titulo" class="corpo" id="titulo" value="<%= rs("titulo")%>" size=30 maxlength="<%=quant_titulo%>">
                                    <br>
                                    <span class="corpo_ver_pq"><%=quant_titulo%> caracteres</span></td>
                                  </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  </tr>
                                <tr>
                                  <td bgcolor="#E1E1E1"><p class="corpo"><strong>Chamada da Not&iacute;cia:</strong></p>                                    </td>
                                  </tr>
                                <tr>
                                  <td bgcolor="#E1E1E1"><p>
                                    <input name="chamada" class="corpo" id="chamada" value="<%=rs("chamada")%>" size=69 maxlength="<%=quant_chamada%>">
                                    <br>
                                    <span class="corpo_ver_pq"><%=quant_chamada%> caracteres</span></p>                                    </td>
                                  </tr>
                                <tr>
                                  <td bgcolor="#E1E1E1">&nbsp;</td>
                                  </tr>
                                <tr>
                                  <td bgcolor="#E1E1E1"><p class="corpo"><strong>Not&iacute;cia:</strong></p>                                    </td>
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
									
									oFCKeditor.Value = rs("noticia")
									oFCKeditor.Create "noticia"
									%>								  
								  
								  </td>
                                  </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  </tr>
                                <tr>
                                  <td><input type="image"  src="../images/bot_salvar.gif" value="Salvar Registro"></td>
                                  </tr>
                                </table>
                            </FORM></td>
                          </tr>
                          
                          </table></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      </table></td>
                  </tr>
              </table></td><td>&nbsp;</td>
            </tr>
          
        </table></td>
      </tr>
      
      <tr>
        <td><!--#include file="../inc/inc_base.asp"--></td>
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