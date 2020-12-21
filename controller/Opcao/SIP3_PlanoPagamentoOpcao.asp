<!-- #include file="../../resources/config.asp"-->
<!-- #include file="../../model/Opcao/SIP3_PlanoPagamentoOpcao.asp"-->
<% 

dim retorno(2)

IdOpcao = sqlInjectionPrevent(request("IdOpcao"))

if IdOpcao = "" then ' Parâmetro obrigatório omito

    msgErro = "Parâmetro obrigatório omitido"
    throwError msgErro, targetErro

else 

    Set rs_SIP3_PlanoPagamentoOpcao = SIP3_PlanoPagamentoOpcao(IdOpcao)

    if rs_SIP3_PlanoPagamentoOpcao.EOF then ' rs_SIP3_PlanoPagamentoOpcao.EOF 

        IdPlanoPagamento = 0
        IdOpcao = IdOpcao
        NumParcelas = 0
        ValorParcela = 0

        retorno(0) = "{"& chr(34) &"PlanoPagamentoOpcao"& chr(34) &": ["
        retorno(1) = "{"& chr(34) &"IdPlanoPagamento"& chr(34) &":"& chr(34) & IdPlanoPagamento & chr(34) &","&_
                        chr(34) &"IdOpcao"& chr(34) &":"& chr(34) & IdOpcao & chr(34) &","&_  
                        chr(34) &"NumParcelas"& chr(34) &":"& chr(34) & NumParcelas & chr(34) &","&_  
                        chr(34) &"ValorParcela"& chr(34) &":"& chr(34) & ValorParcela & chr(34) &","&_  
                        chr(34) &"AcessDate"& chr(34) &":"& chr(34) & now() & chr(34) &"}"
        retorno(2) = "]}"

    else 

        retorno(0) = "{"& chr(34) &"PlanoPagamentoOpcao"& chr(34) &": ["

        while not rs_SIP3_PlanoPagamentoOpcao.EOF
        
        'OPP.IdPlanoPagamento,
        'OPP.IdOpcao,
        'PP.NumParcelas,
        'PP.ValorParcela

            IdPlanoPagamento = trim(rs_SIP3_PlanoPagamentoOpcao("IdPlanoPagamento"))
            IdOpcao = trim(rs_SIP3_PlanoPagamentoOpcao("IdOpcao"))
            NumParcelas = trim(rs_SIP3_PlanoPagamentoOpcao("NumParcelas"))
            ValorParcela = trim(rs_SIP3_PlanoPagamentoOpcao("ValorParcela"))
            
            if  retorno(1) = "" then 'retorno(1) = ""

                retorno(1) = "{"& chr(34) &"IdPlanoPagamento"& chr(34) &":"& chr(34) & IdPlanoPagamento & chr(34) &","&_
                                chr(34) &"IdOpcao"& chr(34) &":"& chr(34) & IdOpcao & chr(34) &","&_  
                                chr(34) &"NumParcelas"& chr(34) &":"& chr(34) & NumParcelas & chr(34) &","&_  
                                chr(34) &"ValorParcela"& chr(34) &":"& chr(34) & ValorParcela & chr(34) &","&_  
                                chr(34) &"AcessDate"& chr(34) &":"& chr(34) & now() & chr(34) &"}"

            else 

                retorno(1) = retorno(1) & ",{"& chr(34) &"IdPlanoPagamento"& chr(34) &":"& chr(34) & IdPlanoPagamento & chr(34) &","&_
                                    chr(34) &"IdOpcao"& chr(34) &":"& chr(34) & IdOpcao & chr(34) &","&_  
                                    chr(34) &"NumParcelas"& chr(34) &":"& chr(34) & NumParcelas & chr(34) &","&_  
                                    chr(34) &"ValorParcela"& chr(34) &":"& chr(34) & ValorParcela & chr(34) &","&_  
                                    chr(34) &"AcessDate"& chr(34) &":"& chr(34) & now() & chr(34) &"}"

            end if 'retorno(1) = ""

            rs_SIP3_PlanoPagamentoOpcao.MoveNext()
        wend    
        
        retorno(2) = "]}"

    end if 'rs_SIP3_PlanoPagamentoOpcao.EOF

        rs_SIP3_PlanoPagamentoOpcao.Close()
    Set rs_SIP3_PlanoPagamentoOpcao = Nothing

end if ' Parâmetro obrigatório omito

response.write retorno(0) & retorno(1) & retorno(2)

%> 