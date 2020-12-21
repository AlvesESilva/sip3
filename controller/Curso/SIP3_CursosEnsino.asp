<!-- #include file="../../resources/config.asp"-->
<!-- #include file="../../model/Curso/SIP3_CursosEnsino.asp"-->
<%
dim retorno(2)

idEnsino = sqlInjectionPrevent(request("idEnsino"))

if idEnsino = "" then 'idEnsino = ""

    msgErro = "Parâmetro obrigatório omitido: IdEnsino"
    throwError msgErro, targetErro

else

    Set rs_SIP3_CursosEnsino = SIP3_CursosEnsino(IdEnsino)

    if rs_SIP3_CursosEnsino.EOF then 'rs_SIP3_CursosEnsino.EOF'

        msgErro = "Nunhum registro encontrado"
        throwError msgErro, targetErro

    else

        retorno(0) = "{ "& chr(34) & "Cursos"& chr(34) &":["

        while not rs_SIP3_CursosEnsino.EOF
    
            'C.IdCurso
            ',C.CodCurso
            ',C.Nome
            ',A.Area
            ',C.CargaHoraria
            ',E.Nivel

            IdCurso = trim(rs_SIP3_CursosEnsino("IdCurso"))
            CodCurso = trim(rs_SIP3_CursosEnsino("CodCurso"))
            Nome = trim(rs_SIP3_CursosEnsino("Nome"))
            Area = trim(rs_SIP3_CursosEnsino("Area"))
            CargaHoraria = trim(rs_SIP3_CursosEnsino("CargaHoraria"))
            Nivel = trim(rs_SIP3_CursosEnsino("Nivel"))

            if retorno(1) = "" then

                retorno(1) = "{"& chr(34) &"IdCurso"& chr(34) &":"& chr(34) & IdCurso & chr(34) &","&_
                                  chr(34) &"CodCurso"& chr(34) &":"& chr(34) & CodCurso & chr(34) &","&_  
                                  chr(34) &"Nome"& chr(34) &":"& chr(34) & Nome & chr(34) &","&_  
                                  chr(34) &"Area"& chr(34) &":"& chr(34) & Area & chr(34) &","&_  
                                  chr(34) &"CargaHoraria"& chr(34) &":"& chr(34) & CargaHoraria & chr(34) &","&_  
                                  chr(34) &"Nivel"& chr(34) &":"& chr(34) & Nivel & chr(34) &","&_  
                                  chr(34) &"DataAcess"& chr(34) &":"& chr(34) & now() & chr(34) &"}"
            else

                retorno(1) = retorno(1) & ",{"& chr(34) &"IdCurso"& chr(34) &":"& chr(34) & IdCurso & chr(34) &","&_
                                                chr(34) &"CodCurso"& chr(34) &":"& chr(34) & CodCurso & chr(34) &","&_  
                                                chr(34) &"Nome"& chr(34) &":"& chr(34) & Nome & chr(34) &","&_  
                                                chr(34) &"Area"& chr(34) &":"& chr(34) & Area & chr(34) &","&_  
                                                chr(34) &"CargaHoraria"& chr(34) &":"& chr(34) & CargaHoraria & chr(34) &","&_  
                                                chr(34) &"Nivel"& chr(34) &":"& chr(34) & Nivel & chr(34) &","&_  
                                                chr(34) &"DataAcess"& chr(34) &":"& chr(34) & now() & chr(34) &"}"
            end if ' retorno(1) = ""

            rs_SIP3_CursosEnsino.MoveNext()
        wend

        retorno(2) = "]}"

    end if 'rs_SIP3_CursosEnsino.EOF'

    Set rs_SIP3_CursosEnsino = Nothing

end if 'idEnsino = ""

response.write retorno(0) & retorno(1) & retorno(2)
%>
