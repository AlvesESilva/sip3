<!-- #include virtual="/sip3/resources/config.asp"-->
<!-- #include virtual="/sip3/model/curso/SIP3_ReadNomeCurso.asp"-->
<%
Response.AddHeader "Content-Type", "text/html;charset=UTF-8"
Response.CodePage = 65001
Response.CharSet = "UTF-8"

IdCurso = sqlInjectionPrevent(request("IdCurso"))

Set rs_SIP3_ReadNomeCurso = SIP3_ReadNomeCurso(IdCurso)

    if not rs_SIP3_ReadNomeCurso.EOF then
        Nome = replace(replace(rs_SIP3_ReadNomeCurso("Nome"),"-",""),"  "," ")
    else
        Nome = ""
    end if

    rs_SIP3_ReadNomeCurso.Close()
Set rs_SIP3_ReadNomeCurso = nothing

if not Nome = "" then

    pathCurso = getPath(Nome)
    pathRoot = "/pos/curso/"

    urlCurso = server.MapPath(pathRoot & pathCurso)

    dim fs
    set fs = Server.CreateObject("Scripting.FileSystemObject")
    if fs.FolderExists(urlCurso) = false then
        
        fs.CreateFolder(urlCurso)

        set tfile = fs.CreateTextFile("D:\WebApps\Portal\pos\curso\"& pathCurso &"\config.asp")
        tfile.WriteLine("<"& chr(37) &"IdCurso="& IdCurso &chr(37) &">")
        tfile.close

        set tfile = fs.CreateTextFile("D:\WebApps\Portal\pos\curso\"& pathCurso &"\default.asp")
        tfile.WriteLine("<!--#include virtual="& chr(34) &"/pos/curso/"& pathCurso &"/config.asp"& chr(34) &"-->")
        tfile.WriteLine("<!--#include virtual="& chr(34) &"/sip3/view/pos/curso/template.asp"& chr(34) &"-->")
        tfile.close

        set tfile = nothing
        set fs = nothing

    end if

else

    pathRoot = "/pos/"
    pathCurso = ""

end if

response.redirect("http://www.oswaldocruz.br/"& pathRoot & pathCurso)

Function getPath(Nome)

    nomeCurso = lCase(Nome)
    nomeCurso = replace(nomeCurso," ","-")
    nomeCurso = replace(nomeCurso,"à","a")
    nomeCurso = replace(nomeCurso,"á","a")
    nomeCurso = replace(nomeCurso,"ã","a")
    nomeCurso = replace(nomeCurso,"â","a")
    nomeCurso = replace(nomeCurso,"é","e")
    nomeCurso = replace(nomeCurso,"ê","e")
    nomeCurso = replace(nomeCurso,"í","i")
    nomeCurso = replace(nomeCurso,"î","i")
    nomeCurso = replace(nomeCurso,"ì","i")
    nomeCurso = replace(nomeCurso,"ï","i")
    nomeCurso = replace(nomeCurso,"ó","o")
    nomeCurso = replace(nomeCurso,"ô","o")
    nomeCurso = replace(nomeCurso,"õ","o")
    nomeCurso = replace(nomeCurso,"ú","u")
    nomeCurso = replace(nomeCurso,"ü","u")
    nomeCurso = replace(nomeCurso,"ç","c")
    caracteresPermitidos = "abcdefghijklmnopqrstuvwxyz0123456789-"

    for i = 1 to len(nomeCurso)

        thisChar = mid(nomeCurso,i,1)
        if inStr(caracteresPermitidos,thisChar) = 0 then    
            nomeCurso = replace(nomeCurso,thisChar,"")
        end if

    next

    getPath = nomeCurso

End Function
%>

