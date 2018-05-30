<?php


if (isset($_POST['email']) and !empty($_POST['email'])){ 


        //Variaveis de POST, Alterar somente se necessário 
        //====================================================
        //$nome = $_POST['nome'];
		$email = $_POST['email'];
		
		
        //====================================================
 
 
        //Configurações do email, ajustar conforme necessidade 
        //====================================================
        $email_destinatario = "rodrigov133@gmail.com"; // qualquer email pode receber os dados
        $email_assunto = "Contato Site - Cadastro Site";
        //====================================================
 
 
        //Monta o Corpo da Mensagem
        //====================================================
        $email_conteudo =  "<b>DADOS PESSOAIS \n";
		//$email_conteudo .= "Nome: ".$nome."\n";
		$email_conteudo .= "Email: ".$email."\n";
		$email_conteudo .= "Mensagem.: ".$email."\n";
		
		
				
        //====================================================
 
 
        //Seta os Headers (Alerar somente caso necessario)
        //====================================================
        
			// To send HTML mail, the Content-type header must be set
		$email_headers  = 'MIME-Version: 1.0' . "\r\n";
		$email_headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		
		// Additional headers
		$email_headers .=  "To: Cadastro site <getulio.sena.junior@gmai.com> \r\n";
		$email_headers .= 'From: Contato site <getulio.sena.junior@gmail.com>' . "\r\n";
		$email_headers .= "Reply-To: ".$_POST['email']." \r\n";
		//$email_headers .= "Return-Path: comercial@admtransparene.com  \r\n";
		//$email_headers .= 'Cc: jorgeitamarargollo@hotmail.com ' . "\r\n";
	//	$email_headers .= 'Bcc: birthdaycheck@example.com' . "\r\n";

	
		//$email_headers = implode ( "\n",array ( "From: $email_remetente", "Reply-To: $email_reply", "Subject: $email_assunto","Return-Path:  $email_remetente","MIME-Version: 1.0","X-Priority: 3","Content-Type: text/html; charset=UTF-8" ) ); */
        //====================================================
 
 
        //Enviando o email
        //====================================================
	
		
        if (mail ($email_destinatario, $email_assunto, nl2br($email_conteudo), $email_headers) and (@$_POST['codigo1'] == @$_POST['codigo'])){
                 
?>
<script language="javascript">
	alert("Email cadastrado com sucesso!");
	
</script>
<?php
	}
	else
	{
?>
<script language="javascript">
	alert("Email não pode ser cadastrado!");
</script>
<?php
	}
	
}

header("Location: http://www.harasluanda.com.br/")
?> 