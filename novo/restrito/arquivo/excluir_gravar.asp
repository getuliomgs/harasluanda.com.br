<% 
	if session("status")="online" then 
%>
<%
response.buffer = true
%>
<!--#include file="../config.asp"-->
<style type="text/css">
<!--
body {
	background-color: #666666;
}
-->
</style>
<%
cod_arquivo = request.QueryString("cod_arquivo")
ArquivoNome = request.QueryString("ArquivoNome")

'primeiro crie o objeto fso...
Set Fso = Server.CreateObject("Scripting.FileSystemObject")

'Declare o caminho da pasta onde estão os arquivos, no caso coloquei o MapPath mas você pode colocar o caminho físico tambem se quiser
Caminho = Server.MapPath("uploads/")

'Verifica se o arquivo existe.. caso sim, deleta o mesmo
If Fso.FileExists(Caminho&"\"&ArquivoNome) Then
   Fso.DeleteFile(Caminho&"\"&ArquivoNome)
  
End If

'destrói o objeto fso que foi criado...
Set Fso = Nothing

SQL = "DELETE FROM ArquivoNome where cod_arquivo="&cod_arquivo
GetCnx.Execute SQL

Response.Redirect "excluir.asp"

else
Response.Redirect "off-line.asp"
end if
%>