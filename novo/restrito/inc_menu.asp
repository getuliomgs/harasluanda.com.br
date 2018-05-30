<%

	 http = request.ServerVariables("HTTP_HOST") & request.ServerVariables("SCRIPT_NAME")
	 caminho = split(http,"/")

	 for cont = 0 to Ubound(caminho) - 2
		url = url & caminho(cont) & "/" 
	 next
	 
	 caminho_site = "http://" &  url

%>

<script language="javascript">
function mostra(item){
	if (item.style.display=='none'){
	item.style.display=''
}
	else{
	item.style.display='none'
}
}

function getCookie(cookieName) {
	var allCookies = document.cookie;
	var indexStr = allCookies.indexOf(cookieName + "=");
	if (indexStr == -1) return "";
	indexStr = allCookies.indexOf("=", indexStr) + 1;
	var endStr = allCookies.indexOf(";", indexStr);
	if (endStr == -1) endStr = allCookies.length;
	return unescape(allCookies.substring(indexStr, endStr));
}

function pega_menu() {
	var menu_ativo = String(getCookie("menu"));
	return menu_ativo;
}

function grava_menu(menu){
	document.cookie = 'menu=' + menu;
}
</script>
<table width="0" border="0" cellpadding="0" cellspacing="0" class="corpo">
      <tr>
        <td height="20"></td>
        <td></td>
      </tr>
      <tr>
        <td><img src="../images/base.gif" width="19" height="18" /></td>
        <td>Navegue abaixo</td>
      </tr>
      <tr>
        <td></td>
        <td>
		
		<!--1 Bloco-->
		
			<%if exis_arq = "sim" then%>

		<table width="100%" border="0" cellspacing="0" cellpadding="0">
		
			<% menu = "menu1"%>
        
		  <tr>
            <td width="18"><img src="../images/folder.gif" width="18" height="18" border="0" /></td>
            <td><a href="javascript:grava_menu('<%= menu %>')" onClick="mostra(<%= menu %>);">Arquivos</a></td>
          </tr>
          <tr id="<%= menu %>" style="display:none">
            <td></td>
            <td><table width="100%" border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                  <td>
				  
				  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                      <tr>
                        <td><img src="../images/page.gif" width="18" height="18" border="0" /></td>
                        <td><a href="<%=caminho_site%>arquivo/adicionar.asp" onclick="javascript:grava_menu('<%= menu %>')">Adicionar</a></td>
                      </tr>
                      <tr>
                        <td><img src="../images/page.gif" width="18" height="18" border="0" /></td>
                        <td><a href="<%=caminho_site%>arquivo/visualizar.asp" onclick="javascript:grava_menu('<%= menu %>')">Visualizar</a></td>
                      </tr>
                      <tr>
                        <td><img src="../images/page.gif" width="18" height="18" border="0" /></td>
                        <td><a href="<%=caminho_site%>arquivo/excluir.asp" onclick="javascript:grava_menu('<%= menu %>')">Excluir</a></td>
                      </tr>
                  </table>				  </td>
                </tr>
              </table></td>
          </tr >
        </table>
		
			<%end if%>
		
		<!--Fim do 1 Bloco-->		</td>
      </tr>
      <tr>
        <td></td>
        <td><!--2 Bloco-->
            <%if exis_not = "sim" then%>
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
              <% menu = "menu2"%>
              <tr>
                <td width="18"><img src="../images/folder.gif" width="18" height="18" /></td>
                <td><a href="javascript:grava_menu('menu2')" onclick="mostra(<%= menu %>);">Not&iacute;cias</a></td>
              </tr>
              <tr id="<%= menu %>" style="display:none">
                <td></td>
                <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td><img src="../images/page.gif" width="18" height="18" border="0" /></td>
                      <td><a href="<%=caminho_site%>noticia/adicionar.asp" onclick="javascript:grava_menu('<%= menu %>')">Adicionar</a></td>
                    </tr>
                    <tr>
                      <td><img src="../images/page.gif" width="18" height="18" border="0" /></td>
                      <td><a href="<%=caminho_site%>noticia/alterar.asp" onclick="javascript:grava_menu('<%= menu %>')">Alterar</a></td>
                    </tr>
                    <tr>
                      <td><img src="../images/page.gif" width="18" height="18" border="0" /></td>
                      <td><a href="<%=caminho_site%>noticia/excluir.asp" onclick="javascript:grava_menu('<%= menu %>')">Excluir</a></td>
                    </tr>
                </table></td>
              </tr>
            </table>
          <%end if%>
            <!--Fim do 2 Bloco-->        </td>
      </tr>
    </table>
	
	<script language="javascript">
	var menu = document.getElementById(pega_menu());
	menu.style.display = 'block';
	</script>