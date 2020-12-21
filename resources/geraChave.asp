<%
Function geraChave(n)
	Randomize
	c = "0123456789abcdefghijklmnopqrstuvxwyzABCDEFGHIJKLMNOPQRSTUVXWYZ"
	for x = 1 to n
		chave = chave & mid(c,int((rnd()*len(c))+1),1)
    next
	
    geraChave = chave

End Function
%>