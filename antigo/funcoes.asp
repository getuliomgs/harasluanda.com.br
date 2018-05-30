<%

	Function trataAspas(texto)
		Dim retorno
		texto = texto & " "
		retorno = replace(texto, "'", "\'")	
		trataAspas = retorno
	End Function


	Function removeHTML(strText)
		Dim RegEx
		Set RegEx = New RegExp
		RegEx.Pattern = "<[^>]*>"
		RegEx.Global = True
		strText = Replace(strText, "<br>", chr(10))
		removeHTML = RegEx.Replace(strText, "")
	End Function


	Function cortaPalavras(strToTrim, desiredLength, caractereFim)
		strToTrim =    strToTrim & " "
		if len( strToTrim ) < desiredLength + 1 then
			cortaPalavras = strToTrim
			exit function
		else
			if inStrRev( strToTrim, " ", desiredLength ) = 0 then
				strToTrim = left( strToTrim, desiredLength - 1 ) & caractereFim
			 else
				strToTrim = left( strToTrim, inStrRev( strToTrim, " ", desiredLength - 1 ) -1 ) & caractereFim 
			end if
		end if
		cortaPalavras = trim( strToTrim )
	End Function	
	

	Function FiltroQryString(QryString)
		codigo_filtro = 0
		
		if Request.QueryString(QryString) <> "" then
			if IsNumeric(Request.QueryString(QryString)) then
				codigo_filtro =  CInt(Request.QueryString(QryString)) 
			end if
		end if
		
		FiltroQryString = codigo_filtro
	End Function


	Function abreConexao()
		conn.Open conexaoBanco
	End Function
	
	
	Function fechaConexao()
		conn.close		
	End Function
	
	
	Function executaConsulta(recSet, consultaSql, conexao) 
		
		'Executa a conexao SQL
		recSet.open consultaSql, conexao
		
	End Function
	
	Function converteASCIIParaTexto(texto)
	Dim retorno
	
	texto = replace(texto,"&iexcl;","�")
	texto = replace(texto,"&cent;","�")
	texto = replace(texto,"&pound;","�")
	texto = replace(texto,"&curren;","�")
	texto = replace(texto,"&yen;","�")
	texto = replace(texto,"&brvbar;","�")
	texto = replace(texto,"&sect;","�")
	texto = replace(texto,"&uml;","�")
	texto = replace(texto,"&copy;","�")
	texto = replace(texto,"&ordf;","�")
	texto = replace(texto,"&laquo;","�")
	texto = replace(texto,"&not;","�")
	texto = replace(texto,"&shy;","�")
	texto = replace(texto,"&reg;","�")
	texto = replace(texto,"&macr;","�")
	texto = replace(texto,"&deg;","�")
	texto = replace(texto,"&plusmn;","�")
	texto = replace(texto,"&sup2;","�")
	texto = replace(texto,"&sup3;","�")
	texto = replace(texto,"&acute;","�")
	texto = replace(texto,"&micro;","�")
	texto = replace(texto,"&para;","�")
	texto = replace(texto,"&middot;","�")
	texto = replace(texto,"&cedil;","�")
	texto = replace(texto,"&sup1;","�")
	texto = replace(texto,"&ordm;","�")
	texto = replace(texto,"&raquo;","�")
	texto = replace(texto,"&frac14;","�")
	texto = replace(texto,"&frac12;","�")
	texto = replace(texto,"&frac34;","�")
	texto = replace(texto,"&iquest;","�")
	texto = replace(texto,"&Agrave;","�")
	texto = replace(texto,"&Aacute;","�")
	texto = replace(texto,"&Acirc;","�")
	texto = replace(texto,"&Atilde;","�")
	texto = replace(texto,"&Auml;","�")
	texto = replace(texto,"&Aring;","�")
	texto = replace(texto,"&AElig;","�")
	texto = replace(texto,"&Ccedil;","�")
	texto = replace(texto,"&Egrave;","�")
	texto = replace(texto,"&Eacute;","�")
	texto = replace(texto,"&Ecirc;","�")
	texto = replace(texto,"&Euml;","�")
	texto = replace(texto,"&Igrave;","�")
	texto = replace(texto,"&Iacute;","�")
	texto = replace(texto,"&Icirc;","�")
	texto = replace(texto,"&Iuml;","�")
	texto = replace(texto,"&ETH;","�")
	texto = replace(texto,"&Ntilde;","�")
	texto = replace(texto,"&Ograve;","�")
	texto = replace(texto,"&Oacute;","�")
	texto = replace(texto,"&Ocirc;","�")
	texto = replace(texto,"&Otilde;","�")
	texto = replace(texto,"&Ouml;","�")
	texto = replace(texto,"&times;","�")
	texto = replace(texto,"&Oslash;","�")
	texto = replace(texto,"&Ugrave;","�")
	texto = replace(texto,"&Uacute;","�")
	texto = replace(texto,"&Ucirc;","�")
	texto = replace(texto,"&Uuml;","�")
	texto = replace(texto,"&Yacute;","�")
	texto = replace(texto,"&THORN;","�")
	texto = replace(texto,"&szlig;","�")
	texto = replace(texto,"&agrave;","�")
	texto = replace(texto,"&aacute;","�")
	texto = replace(texto,"&acirc;","�")
	texto = replace(texto,"&atilde;","�")
	texto = replace(texto,"&auml;","�")
	texto = replace(texto,"&aring;","�")
	texto = replace(texto,"&aelig;","�")
	texto = replace(texto,"&ccedil;","�")
	texto = replace(texto,"&egrave;","�")
	texto = replace(texto,"&eacute;","�")
	texto = replace(texto,"&ecirc;","�")
	texto = replace(texto,"&euml;","�")
	texto = replace(texto,"&igrave;","�")
	texto = replace(texto,"&iacute;","�")
	texto = replace(texto,"&icirc;","�")
	texto = replace(texto,"&iuml;","�")
	texto = replace(texto,"&eth;","�")
	texto = replace(texto,"&ntilde;","�")
	texto = replace(texto,"&ograve;","�")
	texto = replace(texto,"&oacute;","�")
	texto = replace(texto,"&ocirc;","�")
	texto = replace(texto,"&otilde;","�")
	texto = replace(texto,"&ouml;","�")
	texto = replace(texto,"&divide;","�")
	texto = replace(texto,"&oslash;","�")
	texto = replace(texto,"&ugrave;","�")
	texto = replace(texto,"&uacute;","�")
	texto = replace(texto,"&ucirc;","�")
	texto = replace(texto,"&uuml;","�")
	texto = replace(texto,"&yacute;","�")
	texto = replace(texto,"&thorn;","�")
	texto = replace(texto,"&yuml;","�")
	texto = replace(texto,"&euro;","�")	
	texto = replace(texto,"&ldquo;","""")	
	texto = replace(texto,"&rdquo;","""")	
	texto = replace(texto,"&ndash;","-")	
	

	converteASCIIParaTexto = texto
	
	End Function
		
%>
