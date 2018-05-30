<%

        Set Upload = Server.CreateObject("Persits.Upload.1") 

		'Salva o arquivo
		pasta_upload = server.MapPath("uploads/")
    	Upload.Save pasta_upload
		
%>