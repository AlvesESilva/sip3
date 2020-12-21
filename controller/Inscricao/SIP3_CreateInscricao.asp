<!-- #include file="../../resources/config.asp"-->
<!-- #include file="../../model/inscricao/SIP3_CreateInscricao.asp"-->
<%
response.cookies("SIP3")("IDINSCRICAO") = "" 'Zero o cookie de inscrição

dim retorno(2)

WorkFlow = sqlInjectionPrevent(request("WorkFlow"))

IdOpcao = sqlInjectionPrevent(request("IdOpcao"))
IdPlanoPagamento = sqlInjectionPrevent(request("IdPlanoPagamento"))
IdCalendario = sqlInjectionPrevent(request("IdCalendario"))
Nome = sqlInjectionPrevent(request("Nome"))
Email = sqlInjectionPrevent(request("Email"))
Telefone = sqlInjectionPrevent(request("Telefone"))
Celular = sqlInjectionPrevent(request("Celular"))
Genero = sqlInjectionPrevent(request("Genero"))
DataNascimento = sqlInjectionPrevent(request("DataNascimento"))
FormacaoAnterior = sqlInjectionPrevent(request("FormacaoAnterior"))
Cpf = sqlInjectionPrevent(request("Cpf"))
Rg = sqlInjectionPrevent(request("Rg"))
CEP = sqlInjectionPrevent(request("CEP"))
Logradouro = sqlInjectionPrevent(request("Logradouro"))
Complemento = sqlInjectionPrevent(request("Complemento"))
Bairro = sqlInjectionPrevent(request("Bairro"))
Cidade = sqlInjectionPrevent(request("Cidade"))
UF = sqlInjectionPrevent(request("UF"))
WorkFlow = sqlInjectionPrevent(request("WorkFlow"))

if IdOpcao = "" or Nome = "" or Celular = "" or FormacaoAnterior = "" then ' Parâmetros obrigatórios omitos

    msgErro = "Parâmetros obrigatórios omitidos"
    throwError msgErro, targetErro

else 

    IdInscricao = SIP3_CreateInscricao(IdOpcao,IdPlanoPagamento,IdCalendario,Nome,Email,Telefone,Celular,Genero,DataNascimento,FormacaoAnterior,Cpf,Rg,CEP,Logradouro,Complemento,Bairro,Cidade,UF,WorkFlow)

    if IdInscricao = "" then ' IdInscricao = ""

        msgErro = "Não foi possível gravar a inscrição. Tente novamente ou entre em contato com atendimento@oswaldocruz.br"
        throwError msgErro, targetErro

    else 

        response.cookies("SIP3")("IDINSCRICAO") = IdInscricao
        retorno(0) = "{ "& chr(34) & "Inscricao"& chr(34) &":"
        retorno(1) = "{"& chr(34) &"IdInscricao"& chr(34) &":"& chr(34) & IdInscricao & chr(34) &","&_
                          chr(34) &"DataAcess"& chr(34) &":"& chr(34) & now() & chr(34) &"}"
        retorno(2) = "}"

    end if ' IdInscricao = ""

end if ' Parâmetros obrigatórios omitidos

response.write retorno(0) & retorno(1) & retorno(2)
%>