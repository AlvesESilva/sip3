<!-- #include file="../../resources/config.asp"-->
<!-- #include file="../../model/Curso/SIP3_ReadCoordenador.asp"-->
<% 

dim retorno(2)

IdCurso = sqlInjectionPrevent(request("IdCurso"))

if IdCurso = "" then ' Parâmetro obrigatório omito

    msgErro = "Parâmetro obrigatório omitido"
    throwError msgErro, targetErro

else 

    Set rs_SIP3_ReadCoordenador = SIP3_ReadCoordenador(IdCurso)

    if rs_SIP3_ReadCoordenador.EOF then ' rs_SIP3_ReadCoordenador.EOF 

        msgErro = "Não foi possível ler o curso"
        throwError msgErro, targetErro

    else 

        retorno(0) = "{"& chr(34) &"Coordenador"& chr(34) &": ["

        while not rs_SIP3_ReadCoordenador.EOF

            'U.ID_USUARIO AS IdUsuario,
            'U.nome_usuario AS Coordenador,
            'U.email_usuario as EmailCoodenador,
            'U.curriculum_usuario AS CurriculoCoordenador

            IdUsuario = trim(rs_SIP3_ReadCoordenador("IdUsuario"))
            Coordenador = trim(rs_SIP3_ReadCoordenador("Coordenador"))
            EmailCoodenador = trim(rs_SIP3_ReadCoordenador("EmailCoodenador"))
            CurriculoCoordenador = trim(rs_SIP3_ReadCoordenador("CurriculoCoordenador"))

            if  retorno(1) = "" then 'retorno(1) = ""

                retorno(1) = "{"& chr(34) &"IdUsuario"& chr(34) &":"& chr(34) & IdUsuario & chr(34) &","&_
                                chr(34) &"Coordenador"& chr(34) &":"& chr(34) & Coordenador & chr(34) &","&_  
                                chr(34) &"EmailCoodenador"& chr(34) &":"& chr(34) & EmailCoodenador & chr(34) &","&_  
                                chr(34) &"CurriculoCoordenador"& chr(34) &":"& chr(34) & CurriculoCoordenador & chr(34) &","&_  
                                chr(34) &"AcessDate"& chr(34) &":"& chr(34) & now() & chr(34) &"}"

            else 

                retorno(1) = retorno(1) & ",{"& chr(34) &"IdUsuario"& chr(34) &":"& chr(34) & IdUsuario & chr(34) &","&_
                                                chr(34) &"Coordenador"& chr(34) &":"& chr(34) & Coordenador & chr(34) &","&_  
                                                chr(34) &"EmailCoodenador"& chr(34) &":"& chr(34) & EmailCoodenador & chr(34) &","&_  
                                                chr(34) &"CurriculoCoordenador"& chr(34) &":"& chr(34) & CurriculoCoordenador & chr(34) &","&_  
                                                chr(34) &"AcessDate"& chr(34) &":"& chr(34) & now() & chr(34) &"}"

            end if 'retorno(1) = ""

            rs_SIP3_ReadCoordenador.MoveNext()
        wend    
        
        retorno(2) = "]}"

    end if 'rs_SIP3_ReadCoordenador.EOF

        rs_SIP3_ReadCoordenador.Close()
    Set rs_SIP3_ReadCoordenador = Nothing

end if ' Parâmetro obrigatório omito

response.write retorno(0) & retorno(1) & retorno(2)

Function getImagemCurso(IdCurso)

    dim fs
    set fs=Server.CreateObject("Scripting.FileSystemObject")
    if fs.FileExists("D:\WebApps\Portal\pos\images\imgCurso\imgCurso_"& IdCurso &".jpg") then

        getImagemCurso = "https://www.oswaldocruz.br/pos/images/imgcurso/imgCurso_"& IdCurso &".jpg"
    
    else

        getImagemCurso = "https://www.oswaldocruz.br/pos/images/imgcurso/imgCurso_.jpeg"
    
    end if
    set fs=nothing

End Function

%> 