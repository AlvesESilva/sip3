<!-- #include file="../../resources/config.asp"-->
<!-- #include file="../../model/opcao/SIP3_ReadOpcao.asp"-->
<% 

dim retorno(2)

IdOpcao = sqlInjectionPrevent(request("IdOpcao"))

if IdOpcao = "" then ' Parâmetro obrigatório omito

    msgErro = "Parâmetro obrigatório omitido"
    throwError msgErro, targetErro

else 

    Set rs_SIP3_ReadOpcao = SIP3_ReadOpcao(IdOpcao)

    if rs_SIP3_ReadOpcao.EOF then ' rs_SIP3_ReadOpcao.EOF 

        msgErro = "Não foi possível ler o curso"
        throwError msgErro, targetErro

    else 

        retorno(0) = "{"& chr(34) &"OpcaoCurso"& chr(34) &": ["

        'SO.IdOpcao,
        'SO.Modelo,
        'SO.Tipo,
        'SO.Cidade,

        IdOpcao = trim(rs_SIP3_ReadOpcao("IdOpcao"))
        Modelo = trim(rs_SIP3_ReadOpcao("Modelo"))
        Tipo = trim(rs_SIP3_ReadOpcao("Tipo"))
        Cidade = trim(rs_SIP3_ReadOpcao("Cidade"))
        
            retorno(1) = "{"& chr(34) &"IdOpcao"& chr(34) &":"& chr(34) & IdOpcao & chr(34) &","&_
                            chr(34) &"Modelo"& chr(34) &":"& chr(34) & Modelo & chr(34) &","&_  
                            chr(34) &"Tipo"& chr(34) &":"& chr(34) & Tipo & chr(34) &","&_  
                            chr(34) &"Cidade"& chr(34) &":"& chr(34) & Cidade & chr(34) &","&_  
                            chr(34) &"AcessDate"& chr(34) &":"& chr(34) & now() & chr(34) &"}"
        
        retorno(2) = "]}"

    end if 'rs_SIP3_ReadOpcao.EOF

        rs_SIP3_ReadOpcao.Close()
    Set rs_SIP3_ReadOpcao = Nothing

end if ' Parâmetro obrigatório omito

response.write retorno(0) & retorno(1) & retorno(2)

%> 