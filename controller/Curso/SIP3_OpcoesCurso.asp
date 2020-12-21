<!-- #include file="../../resources/config.asp"-->
<!-- #include file="../../model/Curso/SIP3_OpcoesCurso.asp"-->
<% 

dim retorno(2)

IdCurso = sqlInjectionPrevent(request("IdCurso"))

if IdCurso = "" then ' Parâmetro obrigatório omito

    msgErro = "Parâmetro obrigatório omitido"
    throwError msgErro, targetErro

else 

    Set rs_SIP3_OpcoesCurso = SIP3_OpcoesCurso(IdCurso)

    if rs_SIP3_OpcoesCurso.EOF then ' rs_SIP3_OpcoesCurso.EOF 

        msgErro = "Não foi possível ler o curso"
        throwError msgErro, targetErro

    else 

        retorno(0) = "{"& chr(34) &"OpcoesCurso"& chr(34) &": ["

        while not rs_SIP3_OpcoesCurso.EOF

            'SO.IdOpcao,
            'SO.Modelo,
            'SO.Tipo,
            'SO.Cidade,

            IdOpcao = trim(rs_SIP3_OpcoesCurso("IdOpcao"))
            Modelo = trim(rs_SIP3_OpcoesCurso("Modelo"))
            Tipo = trim(rs_SIP3_OpcoesCurso("Tipo"))
            Cidade = trim(rs_SIP3_OpcoesCurso("Cidade"))
            
            if  retorno(1) = "" then 'retorno(1) = ""

                retorno(1) = "{"& chr(34) &"IdOpcao"& chr(34) &":"& chr(34) & IdOpcao & chr(34) &","&_
                                chr(34) &"Modelo"& chr(34) &":"& chr(34) & Modelo & chr(34) &","&_  
                                chr(34) &"Tipo"& chr(34) &":"& chr(34) & Tipo & chr(34) &","&_  
                                chr(34) &"Cidade"& chr(34) &":"& chr(34) & Cidade & chr(34) &","&_  
                                chr(34) &"AcessDate"& chr(34) &":"& chr(34) & now() & chr(34) &"}"

            else 

                retorno(1) = retorno(1) & ",{"& chr(34) &"IdOpcao"& chr(34) &":"& chr(34) & IdOpcao & chr(34) &","&_
                                            chr(34) &"Modelo"& chr(34) &":"& chr(34) & Modelo & chr(34) &","&_  
                                            chr(34) &"Tipo"& chr(34) &":"& chr(34) & Tipo & chr(34) &","&_  
                                            chr(34) &"Cidade"& chr(34) &":"& chr(34) & Cidade & chr(34) &","&_  
                                            chr(34) &"AcessDate"& chr(34) &":"& chr(34) & now() & chr(34) &"}"

            end if 'retorno(1) = ""

            rs_SIP3_OpcoesCurso.MoveNext()
        wend    
        
        retorno(2) = "]}"

    end if 'rs_SIP3_OpcoesCurso.EOF

        rs_SIP3_OpcoesCurso.Close()
    Set rs_SIP3_OpcoesCurso = Nothing

end if ' Parâmetro obrigatório omito

response.write retorno(0) & retorno(1) & retorno(2)

%> 