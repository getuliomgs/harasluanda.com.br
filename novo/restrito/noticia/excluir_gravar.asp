<link href="../estilo.css" rel="stylesheet" type="text/css">
<BODY class="bg">

<!--#include file="../config.asp"-->

<%

	vet=split(Request.QueryString("codigo"),",")									  
				for a=0 to ubound(vet)
				
							SQL = "DELETE FROM noticia where codigo=" & vet(a)
							GetCnx.Execute SQL
							
				Next
	Response.Redirect  "excluir.asp"

%>