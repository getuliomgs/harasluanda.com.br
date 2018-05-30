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
	
	texto = replace(texto,"&iexcl;","¡")
	texto = replace(texto,"&cent;","¢")
	texto = replace(texto,"&pound;","£")
	texto = replace(texto,"&curren;","¤")
	texto = replace(texto,"&yen;","¥")
	texto = replace(texto,"&brvbar;","¦")
	texto = replace(texto,"&sect;","§")
	texto = replace(texto,"&uml;","¨")
	texto = replace(texto,"&copy;","©")
	texto = replace(texto,"&ordf;","ª")
	texto = replace(texto,"&laquo;","«")
	texto = replace(texto,"&not;","¬")
	texto = replace(texto,"&shy;","­")
	texto = replace(texto,"&reg;","®")
	texto = replace(texto,"&macr;","¯")
	texto = replace(texto,"&deg;","°")
	texto = replace(texto,"&plusmn;","±")
	texto = replace(texto,"&sup2;","²")
	texto = replace(texto,"&sup3;","³")
	texto = replace(texto,"&acute;","´")
	texto = replace(texto,"&micro;","µ")
	texto = replace(texto,"&para;","¶")
	texto = replace(texto,"&middot;","·")
	texto = replace(texto,"&cedil;","¸")
	texto = replace(texto,"&sup1;","¹")
	texto = replace(texto,"&ordm;","º")
	texto = replace(texto,"&raquo;","»")
	texto = replace(texto,"&frac14;","¼")
	texto = replace(texto,"&frac12;","½")
	texto = replace(texto,"&frac34;","¾")
	texto = replace(texto,"&iquest;","¿")
	texto = replace(texto,"&Agrave;","À")
	texto = replace(texto,"&Aacute;","Á")
	texto = replace(texto,"&Acirc;","Â")
	texto = replace(texto,"&Atilde;","Ã")
	texto = replace(texto,"&Auml;","Ä")
	texto = replace(texto,"&Aring;","Å")
	texto = replace(texto,"&AElig;","Æ")
	texto = replace(texto,"&Ccedil;","Ç")
	texto = replace(texto,"&Egrave;","È")
	texto = replace(texto,"&Eacute;","É")
	texto = replace(texto,"&Ecirc;","Ê")
	texto = replace(texto,"&Euml;","Ë")
	texto = replace(texto,"&Igrave;","Ì")
	texto = replace(texto,"&Iacute;","Í")
	texto = replace(texto,"&Icirc;","Î")
	texto = replace(texto,"&Iuml;","Ï")
	texto = replace(texto,"&ETH;","Ð")
	texto = replace(texto,"&Ntilde;","Ñ")
	texto = replace(texto,"&Ograve;","Ò")
	texto = replace(texto,"&Oacute;","Ó")
	texto = replace(texto,"&Ocirc;","Ô")
	texto = replace(texto,"&Otilde;","Õ")
	texto = replace(texto,"&Ouml;","Ö")
	texto = replace(texto,"&times;","×")
	texto = replace(texto,"&Oslash;","Ø")
	texto = replace(texto,"&Ugrave;","Ù")
	texto = replace(texto,"&Uacute;","Ú")
	texto = replace(texto,"&Ucirc;","Û")
	texto = replace(texto,"&Uuml;","Ü")
	texto = replace(texto,"&Yacute;","Ý")
	texto = replace(texto,"&THORN;","Þ")
	texto = replace(texto,"&szlig;","ß")
	texto = replace(texto,"&agrave;","à")
	texto = replace(texto,"&aacute;","á")
	texto = replace(texto,"&acirc;","â")
	texto = replace(texto,"&atilde;","ã")
	texto = replace(texto,"&auml;","ä")
	texto = replace(texto,"&aring;","å")
	texto = replace(texto,"&aelig;","æ")
	texto = replace(texto,"&ccedil;","ç")
	texto = replace(texto,"&egrave;","è")
	texto = replace(texto,"&eacute;","é")
	texto = replace(texto,"&ecirc;","ê")
	texto = replace(texto,"&euml;","ë")
	texto = replace(texto,"&igrave;","ì")
	texto = replace(texto,"&iacute;","í")
	texto = replace(texto,"&icirc;","î")
	texto = replace(texto,"&iuml;","ï")
	texto = replace(texto,"&eth;","ð")
	texto = replace(texto,"&ntilde;","ñ")
	texto = replace(texto,"&ograve;","ò")
	texto = replace(texto,"&oacute;","ó")
	texto = replace(texto,"&ocirc;","ô")
	texto = replace(texto,"&otilde;","õ")
	texto = replace(texto,"&ouml;","ö")
	texto = replace(texto,"&divide;","÷")
	texto = replace(texto,"&oslash;","ø")
	texto = replace(texto,"&ugrave;","ù")
	texto = replace(texto,"&uacute;","ú")
	texto = replace(texto,"&ucirc;","û")
	texto = replace(texto,"&uuml;","ü")
	texto = replace(texto,"&yacute;","ý")
	texto = replace(texto,"&thorn;","þ")
	texto = replace(texto,"&yuml;","ÿ")
	texto = replace(texto,"&euro;","€")	
	texto = replace(texto,"&ldquo;","""")	
	texto = replace(texto,"&rdquo;","""")	
	texto = replace(texto,"&ndash;","-")	
	

	converteASCIIParaTexto = texto
	
	End Function
		
%>
