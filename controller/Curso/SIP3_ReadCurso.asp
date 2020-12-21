<!-- #include file="../../resources/config.asp"-->
<!-- #include file="../../model/Curso/SIP3_ReadCurso.asp"-->
<% 

dim retorno(2)

IdCurso = sqlInjectionPrevent(request("IdCurso"))

if IdCurso = "" then ' Parâmetro obrigatório omito

    msgErro = "Parâmetro obrigatório omitido"
    throwError msgErro, targetErro

else 

    Set rs_SIP3_ReadCurso = SIP3_ReadCurso(IdCurso)

    if rs_SIP3_ReadCurso.EOF then ' rs_SIP3_ReadCurso.EOF 

        msgErro = "Não foi possível ler o curso"
        throwError msgErro, targetErro

    else 

        'am.ID_AREA_MERCADO AS IdArea,
        'am.AREA_MERCADO AS Area,
        'C.ID_CURSO AS IdCurso,
        'C.nome_curso AS Curso,
        'C.carga_horaria_curso AS CargaHoraria

        IdArea = trim(rs_SIP3_ReadCurso("IdArea"))
        Area = trim(rs_SIP3_ReadCurso("Area"))
        IdCurso = trim(rs_SIP3_ReadCurso("IdCurso"))
        Curso = trim(rs_SIP3_ReadCurso("Curso"))
        CargaHoraria = trim(rs_SIP3_ReadCurso("CargaHoraria"))
        ImagemCurso = getImagemCurso(IdCurso)

        retorno(0) = "{"& chr(34) &"Curso"& chr(34) &": "
        retorno(1) = "{"& chr(34) &"IdArea"& chr(34) &":"& chr(34) & IdArea & chr(34) &","&_
                          chr(34) &"Area"& chr(34) &":"& chr(34) & Area & chr(34) &","&_  
                          chr(34) &"IdCurso"& chr(34) &":"& chr(34) & IdCurso & chr(34) &","&_  
                          chr(34) &"Curso"& chr(34) &":"& chr(34) & Curso & chr(34) &","&_  
                          chr(34) &"ImagemCurso"& chr(34) &":"& chr(34) & ImagemCurso & chr(34) &","&_  
                          chr(34) &"CargaHoraria"& chr(34) &":"& chr(34) & CargaHoraria & chr(34) &","&_  
                          chr(34) &"AcessDate"& chr(34) &":"& chr(34) & now() & chr(34) &"}"
        retorno(2) = "}"

    end if 'rs_SIP3_ReadCurso.EOF

        rs_SIP3_ReadCurso.Close()
    Set rs_SIP3_ReadCurso = Nothing

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