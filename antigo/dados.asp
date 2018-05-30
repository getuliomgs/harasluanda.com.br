<%@ Language=VBScript %>
<% option explicit %>
<html>
<head>
<title>A Lista Request.ServerVariables</title>
</head>
<body>
<h2 align="center">A Lista Request.ServerVariables</h2>
<table width="40%" align="center" border="1" cols="2">
<thead>
	<tr>
		<th>Nome da chave</th>
		<th>Valor</th>
	</tr>
</thead>
<tbody>
<%
Dim V ' for Variant
For Each V in Request.ServerVariables
	With Response
		.Write "<tr>"
		.Write "<td>"
		.Write V 
		.Write "</td>"
		.Write "<td>"
		.Write Request.ServerVariables(V) & "<br>"
		.Write "</td>"
		.Write "</tr>"	
	End With
Next
%>
</tbody>
</table>
</body>
</html>

