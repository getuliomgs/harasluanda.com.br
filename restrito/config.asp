<%
'--------CONEวรO---------- 
		
					set GetCnx= Server.CreateObject("ADODB.Connection")
					
					nomeServidor = request.ServerVariables("SERVER_NAME")
					
					if nomeServidor = "localhost" or nomeServidor = "servidor" or nomeServidor = "10.0.0.14" then
						caminhoBanco = "D:\Sites\haras\restrito\banco\dados.mdb"
					else
						caminhoBanco = "D:\Webs\harasl\restrito\banco\dados.mdb"
					end if
					
					
					GetCnx.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & caminhoBanco & ";"
					
					
					

'--------WEB SITE---------- 
		
					Const  website = "www.HARASLUANDA.com.br"   	 	 'Nome do site onde o sistema esta implantado

'--------ARQUIVO---------- 

					Const  exis_arq = "nใo"			  			 'Para ativar Arquivos "sim", Para desativar "nใo"

'--------NOTICIA---------- 
		
					Const  exis_not = "sim"			  			 'Para ativar noticias "sim", Para desativar "nใo"
					Const  quant_titulo = 250   					 'Quantidade maxima de caracteres para o titulo
					Const  quant_chamada = 250			  		 'Quantidade maxima de caracteres para a chamada

%>