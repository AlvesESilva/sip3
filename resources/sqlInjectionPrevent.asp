<%
'**********************************************************************************
'|	SQLInjectionPrevent
'|	Descrição:			Função que verifica o texto passado por parâmetro e retorna
'|						o mesmo com a substituição de algumas palavras chaves para
'|						que não ocorra SQL Injection.
'|	Data Criação:		--/--/----
'|	Autor Criação:		----------
'|	Data Alteração: 	05/10/2015
'|	Autor Alteração:	Vanderlei Alvarenga Jr.
'**********************************************************************************

Function sqlInjectionPrevent(texto)
	dim tmp
	dim lixo
    dim textoOK

	tmp = replace(texto,"""","&#34;")
	tmp = replace(tmp,"'","&#39;")
	tmp = replace(tmp,"--","&#45;&#45;")
	tmp = replace(tmp,vbCrlf,"<br />")
    lixo = array ( "declare ", "DECLARE ", "exec ", "EXEC " , "select ", "SELECT ", "alter ", "ALTER ", "drop ", "DROP ", "insert ", "INSERT ", "update ", "UPDATE ", "delete ", "DELETE ", "xp_" , "XP_", "sp_" , "SP_")
    textoOK = tmp
    for i = 0 to uBound(lixo)
        textoOK = replace( textoOK ,  lixo(i) , "")
    next
    sqlInjectionPrevent = textoOK
End Function
%>