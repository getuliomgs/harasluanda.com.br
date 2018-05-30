<link href="../estilo.css" rel="stylesheet" type="text/css">
<BODY class="bg">

<!--#include file="../config.asp"-->

<%
codigo = Request.Form("codigo")
Set rs = Server.CreateObject("ADODB.Recordset")
SQL = "SELECT * FROM noticia where codigo =" & codigo
rs.Open SQL, GetCnx, 1, 3

		rs("titulo") = Request.Form("titulo")
		rs("chamada") = Request.Form("chamada")
		rs("noticia") = Request.Form("noticia")
	
	rs.Update

response.write "<script>location = 'alterar.asp';alert('Notícia Alterada com sucesso!')</script>"

rs.Close
GetCnx.Close
%>