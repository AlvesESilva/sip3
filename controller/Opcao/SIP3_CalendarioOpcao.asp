<!-- #include file="../../resources/config.asp"-->
<!-- #include file="../../model/Opcao/SIP3_CalendarioOpcao.asp"-->
<% 

dim retorno(2)

IdOpcao = sqlInjectionPrevent(request("IdOpcao"))

if IdOpcao = "" then ' Parâmetro obrigatório omito

    msgErro = "Parâmetro obrigatório omitido"
    throwError msgErro, targetErro

else 

    Set rs_SIP3_CalendarioOpcao = SIP3_CalendarioOpcao(IdOpcao)

    if rs_SIP3_CalendarioOpcao.EOF then ' rs_SIP3_CalendarioOpcao.EOF 

        DataInicioAulas = "Turmas em formação"
        DataInicioMatriculas = "Aguarde"
        DataLimiteMatriculas = "Aguarde"

        retorno(0) = "{"& chr(34) &"CalendarioOpcao"& chr(34) &": ["
        retorno(1) = "{"& chr(34) &"IdCalendario"& chr(34) &":"& chr(34) & 0 & chr(34) &","&_
                        chr(34) &"IdOpcao"& chr(34) &":"& chr(34) & IdOpcao & chr(34) &","&_  
                        chr(34) &"DataInicioAulas"& chr(34) &":"& chr(34) & DataInicioAulas & chr(34) &","&_  
                        chr(34) &"DataInicioMatriculas"& chr(34) &":"& chr(34) & DataInicioMatriculas & chr(34) &","&_  
                        chr(34) &"DataLimiteMatriculas"& chr(34) &":"& chr(34) & DataLimiteMatriculas & chr(34) &","&_  
                        chr(34) &"AcessDate"& chr(34) &":"& chr(34) & now() & chr(34) &"}"
        retorno(2) = "]}"

    else 

        retorno(0) = "{"& chr(34) &"CalendarioOpcao"& chr(34) &": ["

        while not rs_SIP3_CalendarioOpcao.EOF
        
            'IdCalendario,
            'IdOpcao,
            'DataInicioAulas,
            'DataInicioMatriculas,
            'DataLimiteMatriculas

            IdCalendario = trim(rs_SIP3_CalendarioOpcao("IdCalendario"))
            IdOpcao = trim(rs_SIP3_CalendarioOpcao("IdOpcao"))
            DataInicioAulas = trim(rs_SIP3_CalendarioOpcao("DataInicioAulas"))
            DataInicioMatriculas = trim(rs_SIP3_CalendarioOpcao("DataInicioMatriculas"))
            DataLimiteMatriculas = trim(rs_SIP3_CalendarioOpcao("DataLimiteMatriculas"))
            
            if  retorno(1) = "" then 'retorno(1) = ""

                retorno(1) = "{"& chr(34) &"IdCalendario"& chr(34) &":"& chr(34) & IdCalendario & chr(34) &","&_
                                chr(34) &"IdOpcao"& chr(34) &":"& chr(34) & IdOpcao & chr(34) &","&_  
                                chr(34) &"DataInicioAulas"& chr(34) &":"& chr(34) & DataInicioAulas & chr(34) &","&_  
                                chr(34) &"DataInicioMatriculas"& chr(34) &":"& chr(34) & DataInicioMatriculas & chr(34) &","&_  
                                chr(34) &"DataLimiteMatriculas"& chr(34) &":"& chr(34) & DataLimiteMatriculas & chr(34) &","&_  
                                chr(34) &"AcessDate"& chr(34) &":"& chr(34) & now() & chr(34) &"}"

            else 

                retorno(1) = retorno(1) & ",{"& chr(34) &"IdCalendario"& chr(34) &":"& chr(34) & IdCalendario & chr(34) &","&_
                                chr(34) &"IdOpcao"& chr(34) &":"& chr(34) & IdOpcao & chr(34) &","&_  
                                chr(34) &"DataInicioAulas"& chr(34) &":"& chr(34) & DataInicioAulas & chr(34) &","&_  
                                chr(34) &"DataInicioMatriculas"& chr(34) &":"& chr(34) & DataInicioMatriculas & chr(34) &","&_  
                                chr(34) &"DataLimiteMatriculas"& chr(34) &":"& chr(34) & DataLimiteMatriculas & chr(34) &","&_  
                                chr(34) &"AcessDate"& chr(34) &":"& chr(34) & now() & chr(34) &"}"

            end if 'retorno(1) = ""

            rs_SIP3_CalendarioOpcao.MoveNext()
        wend    
        
        retorno(2) = "]}"

    end if 'rs_SIP3_CalendarioOpcao.EOF

        rs_SIP3_CalendarioOpcao.Close()
    Set rs_SIP3_CalendarioOpcao = Nothing

end if ' Parâmetro obrigatório omito

response.write retorno(0) & retorno(1) & retorno(2)

%> 