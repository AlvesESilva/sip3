<!-- #include file="../../resources/config.asp"-->
<!-- #include file="../../model/inscricao/SIP3_ReadInscricao.asp"-->
<%

dim retorno(2)

IdInscricao = request.cookies("SIP3")("IdInscricao")

if IdInscricao = "" then ' IdInscricao = ""

    msgErro = "Parâmetros obrigatórios omitidos"
    throwError msgErro, targetErro

else 

    Set rs_SIP3_ReadInscricao = SIP3_ReadInscricao(IdInscricao)

    if rs_SIP3_ReadInscricao.EOF then ' rs_SIP3_ReadInscricao.EOF

        msgErro = "Não foi possível ler a inscrição. Entre em ccontato com o atendimento@oswaldocruz.br"
        throwError msgErro, targetErro

    else 

        IdInscricao = trim(rs_SIP3_ReadInscricao("IdInscricao"))
        IdOpcao = trim(rs_SIP3_ReadInscricao("IdOpcao"))
        IdPlanoPagamento = trim(rs_SIP3_ReadInscricao("IdPlanoPagamento"))
        IdCalendario = trim(rs_SIP3_ReadInscricao("IdCalendario"))
        Nome = trim(rs_SIP3_ReadInscricao("Nome"))
        Email = trim(rs_SIP3_ReadInscricao("Email"))
        Telefone = trim(rs_SIP3_ReadInscricao("Telefone"))
        Celular = trim(rs_SIP3_ReadInscricao("Celular"))
        Genero = trim(rs_SIP3_ReadInscricao("Genero"))
        DataNascimento = trim(rs_SIP3_ReadInscricao("DataNascimento"))
        FormacaoAnterior = trim(rs_SIP3_ReadInscricao("FormacaoAnterior"))
        Cpf = trim(rs_SIP3_ReadInscricao("Cpf"))
        Rg = trim(rs_SIP3_ReadInscricao("Rg"))
        CEP = trim(rs_SIP3_ReadInscricao("CEP"))
        Logradouro = trim(rs_SIP3_ReadInscricao("Logradouro"))
        Complemento = trim(rs_SIP3_ReadInscricao("Complemento"))
        Bairro = trim(rs_SIP3_ReadInscricao("Bairro"))
        Cidade = trim(rs_SIP3_ReadInscricao("Cidade"))
        UF = trim(rs_SIP3_ReadInscricao("UF"))
        WorkFlow = trim(rs_SIP3_ReadInscricao("WorkFlow"))
        DataCad = trim(rs_SIP3_ReadInscricao("DataCad"))
        Ativo = trim(rs_SIP3_ReadInscricao("Ativo"))

        retorno(0) = "{ "& chr(34) & "Inscricao"& chr(34) &": "
        retorno(1) = "{"&  chr(34) &"IdInscricao"& chr(34) &":"& chr(34) & IdInscricao & chr(34) &","&_
                           chr(34) &"IdOpcao"& chr(34) &":"& chr(34) & IdOpcao & chr(34) &","&_  
                           chr(34) &"IdPlanoPagamento"& chr(34) &":"& chr(34) & IdPlanoPagamento & chr(34) &","&_  
                           chr(34) &"IdCalendario"& chr(34) &":"& chr(34) & IdCalendario & chr(34) &","&_  
                           chr(34) &"Nome"& chr(34) &":"& chr(34) & Nome & chr(34) &","&_  
                           chr(34) &"Email"& chr(34) &":"& chr(34) & Email & chr(34) &","&_  
                           chr(34) &"Telefone"& chr(34) &":"& chr(34) & Telefone & chr(34) &","&_  
                           chr(34) &"Celular"& chr(34) &":"& chr(34) & Celular & chr(34) &","&_  
                           chr(34) &"Genero"& chr(34) &":"& chr(34) & Genero & chr(34) &","&_  
                           chr(34) &"DataNascimento"& chr(34) &":"& chr(34) & DataNascimento & chr(34) &","&_  
                           chr(34) &"FormacaoAnterior"& chr(34) &":"& chr(34) & FormacaoAnterior & chr(34) &","&_  
                           chr(34) &"Cpf"& chr(34) &":"& chr(34) & Cpf & chr(34) &","&_  
                           chr(34) &"Rg"& chr(34) &":"& chr(34) & Rg & chr(34) &","&_  
                           chr(34) &"CEP"& chr(34) &":"& chr(34) & CEP & chr(34) &","&_  
                           chr(34) &"Logradouro"& chr(34) &":"& chr(34) & Logradouro & chr(34) &","&_  
                           chr(34) &"Complemento"& chr(34) &":"& chr(34) & Complemento & chr(34) &","&_  
                           chr(34) &"Bairro"& chr(34) &":"& chr(34) & Bairro & chr(34) &","&_  
                           chr(34) &"Cidade"& chr(34) &":"& chr(34) & Cidade & chr(34) &","&_  
                           chr(34) &"UF"& chr(34) &":"& chr(34) & UF & chr(34) &","&_  
                           chr(34) &"WorkFlow"& chr(34) &":"& chr(34) & WorkFlow & chr(34) &","&_  
                           chr(34) &"DataCad"& chr(34) &":"& chr(34) & DataCad & chr(34) &","&_  
                           chr(34) &"Ativo"& chr(34) &":"& chr(34) & Ativo & chr(34) &","&_  
                           chr(34) &"AcessDate"& chr(34) &":"& chr(34) & now() & chr(34) &"}"
        retorno(2) =       "}"

    end if ' rs_SIP3_ReadInscricao.EOF

end if ' IdInscricao = ""

response.write retorno(0) & retorno(1) & retorno(2)
%>