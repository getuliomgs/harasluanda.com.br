<body bgcolor="#666666">
<%
nome=session("nome")
descricao=session("descricao")
%>
<%

PastaDestino = Server.MapPath("uploads/")

'Determina o tamanho do conteúdo
Tamanho = Request.TotalBytes

'Obtém o conteúdo no formato binário
ConteudoBinario = Request.BinaryRead(Tamanho)

'Transforma o conteúdo binário em string
For Contador = 1 To Tamanho
  ConteudoTexto = ConteudoTexto & Chr(AscB(MidB(ConteudoBinario, Contador, 1)))
Next 

'Determina o delimitador de campos
Delimitador = Left(ConteudoTexto, InStr(ConteudoTexto, vbCrLf) - 1)

'Percorre a String procurando os campos
'identifica os arquivo e grava no disco
Set objFSO = Server.CreateObject("Scripting.FileSystemObject")

Posicao1 = InStr(ConteudoTexto, Delimitador) + Len(Delimitar)

do while True
  ArquivoNome = ""
  Posicao1 = InStr(Posicao1, ConteudoTexto, "filename=")
  if Posicao1 = 0 then
    exit do
  else
   'Determina o nome do arquivo
   Posicao1 = Posicao1 + 10
   Posicao2 = InStr(Posicao1, ConteudoTexto, """")
   For contador = (Posicao2 - 1) to Posicao1 step -1
    if Mid(ConteudoTexto, Contador, 1) <> "\" then '"
      ArquivoNome = Mid(ConteudoTexto, Contador, 1) & ArquivoNome
    else
      exit for
    end if
   next
	
   'Determina o conteúdo do arquivo
   Posicao1 = InStr(Posicao1, ConteudoTexto, vbCrLf & vbCrLf) + 4
   Posicao2 = InStr(Posicao1, ConteudoTexto, Delimitador) - 2
   ArquivoConteudo = Mid(ConteudoTexto, Posicao1, (Posicao2 - Posicao1 + 1))
 
 Set ObjFSO = CreateObject("Scripting.FileSystemObject")
caminho = server.MapPath("uploads/" & ArquivoNome)



		
   'Grava o arquivo
   if ObjFSO.FileExists(caminho) = false then
   


     Set objArquivo = objFSO.CreateTextFile(PastaDestino & "\" & ArquivoNome, true)
     objArquivo.WriteLine ArquivoConteudo
     objArquivo.Close

%>

<!--#include file="../config.asp"-->

<%
' Cria um Recordset do tipo keyset baseado na tabela noticia
Set rs = Server.CreateObject("ADODB.Recordset")
rs.Open "SELECT nome, descricao, ArquivoNome FROM ArquivoNome", GetCnx, 1, 3

' Cria um registro em branco
rs.AddNew

' Recebe os dados do formulário e os atribui aos campos da tabela noticia
rs("nome")= nome
rs("descricao")= descricao
rs("ArquivoNome")= ArquivoNome

' Salva o registro 
rs.Update

rs.Close
GetCnx.Close


response.write "<script>location = 'adicionar.asp';alert('Arquivo enviado com sucesso!')</script>"

Set objArquivo = nothing
else

response.write "<script>location = 'adicionar.asp';alert('Esse Arquivo já foi feito upload, escolha outro!')</script>"

end if
end if
Loop
Set objFSO = nothing
%>



