<!-- #include file="../../resources/config.asp"-->
<!-- #include file="../../model/Curso/SIP3_InformacoesCurso.asp"-->
<% 

dim retorno(2)

IdCurso = sqlInjectionPrevent(request("IdCurso"))

if IdCurso = "" then ' Parâmetro obrigatório omito

    msgErro = "Parâmetro obrigatório omitido"
    throwError msgErro, targetErro

else 

    Set rs_SIP3_InformacoesCurso = SIP3_InformacoesCurso(IdCurso)

    if rs_SIP3_InformacoesCurso.EOF then ' rs_SIP3_InformacoesCurso.EOF 

        msgErro = "Não foi possível ler o curso"
        throwError msgErro, targetErro

    else 

        retorno(0) = "{"& chr(34) &"InformacoesCurso"& chr(34) &": ["

        while not rs_SIP3_InformacoesCurso.EOF

            'Titulo,
            'Texto,
            'Tipo

            Titulo = trim(rs_SIP3_InformacoesCurso("Titulo"))
            Texto = trim(rs_SIP3_InformacoesCurso("Texto"))
            Tipo = trim(rs_SIP3_InformacoesCurso("Tipo"))
            
            if  retorno(1) = "" then 'retorno(1) = ""

                retorno(1) = "{"& chr(34) &"Titulo"& chr(34) &":"& chr(34) & Titulo & chr(34) &","&_
                                chr(34) &"Texto"& chr(34) &":"& chr(34) & Texto & chr(34) &","&_  
                                chr(34) &"Tipo"& chr(34) &":"& chr(34) & Tipo & chr(34) &","&_  
                                chr(34) &"AcessDate"& chr(34) &":"& chr(34) & now() & chr(34) &"}"

            else 

                retorno(1) = retorno(1) & ",{"& chr(34) &"Titulo"& chr(34) &":"& chr(34) & Titulo & chr(34) &","&_
                                            chr(34) &"Texto"& chr(34) &":"& chr(34) & Texto & chr(34) &","&_  
                                            chr(34) &"Tipo"& chr(34) &":"& chr(34) & Tipo & chr(34) &","&_  
                                            chr(34) &"AcessDate"& chr(34) &":"& chr(34) & now() & chr(34) &"}"

            end if 'retorno(1) = ""

            rs_SIP3_InformacoesCurso.MoveNext()
        wend    
        
        retorno(2) = "]}"

    end if 'rs_SIP3_InformacoesCurso.EOF

        rs_SIP3_InformacoesCurso.Close()
    Set rs_SIP3_InformacoesCurso = Nothing

end if ' Parâmetro obrigatório omito

response.write retorno(0) & retorno(1) & retorno(2)

%> 