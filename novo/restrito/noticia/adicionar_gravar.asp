<link href="../estilo.css" rel="stylesheet" type="text/css">
<BODY class="bg">

<!--#include file="../config.asp"-->

<%
Set rs = Server.CreateObject("ADODB.Recordset")
rs.Open "SELECT * FROM noticia", GetCnx, 1, 3

	rs.AddNew
		rs("titulo")= Request.Form("titulo")
		rs("chamada")= Request.Form("chamada")
		rs("noticia")= Request.Form("noticia")
	rs.Update

response.write "<script>location = 'adicionar.asp';alert('Notícia Incluida com sucesso!')</script>"

rs.Close
GetCnx.Close
%>
</BODY>