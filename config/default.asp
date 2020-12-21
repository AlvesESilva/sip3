<% 
Response.ContentType    = "application/json" 
Response.CodePage       = 65001
Response.CharSet        = "UTF-8"
versao = "3.0"
autor = "Pedro Silva"
licenca = "Grupo Educacional Oswaldo Cruz"

config =    "{"&_
            chr(34) &"SIP"& chr(34) &":{"&_
            chr(34) &"versao"& chr(34) &":"& chr(34) & versao & chr(34) &","&_
            chr(34) &"autor"& chr(34) &":"& chr(34) & autor & chr(34) &","&_
            chr(34) &"licenca"& chr(34) &":"& chr(34) & licenca & chr(34) &_
            ","&_
            chr(34) &"area"& chr(34) &":["&_
                chr(34) &"Comunicação"& chr(34) &","&_
                chr(34) &"Cosmética"& chr(34) &","&_
                chr(34) &"Educação"& chr(34) &","&_
                chr(34) &"Engenharia"& chr(34) &","&_
                chr(34) &"MBA"& chr(34) &","&_
                chr(34) &"Meio Ambiente"& chr(34) &","&_
                chr(34) &"Negócios"& chr(34) &","&_
                chr(34) &"Química e Meio Ambiente"& chr(34) &","&_
                chr(34) &"Saúde"& chr(34) &","&_
                chr(34) &"Tecnologia"& chr(34) &_
            "],"&_
            chr(34) &"opcao"& chr(34) &":{"&_
                chr(34) &"tipo"& chr(34) &":[{"&_
                    chr(34) &"nome"& chr(34) &":"& chr(34) &"Matrícula"& chr(34) &","&_
                    chr(34) &"workflow"& chr(34) &":"& chr(34) &"Candidato preenche ficha completa e dá aceite no contrato online"& chr(34) &_
                    "},{"&_
                    chr(34) &"nome"& chr(34) &":"& chr(34) &"Inscrição"& chr(34) &","&_
                    chr(34) &"workflow"& chr(34) &":"& chr(34) &"Candidato preenche ficha simplificada"& chr(34) &_
                    "},{"&_
                    chr(34) &"nome"& chr(34) &":"& chr(34) &"Fora da Sede"& chr(34) &","&_
                    chr(34) &"workflow"& chr(34) &":"& chr(34) &"Candidato preenche ficha simplificada e efetua matrícula no parceiro local"& chr(34) &_
                    "}],"&_
                chr(34) &"modelo"& chr(34) &":["&_
                    chr(34) &"Às segundas e quartas-feiras"& chr(34) &","&_
                    chr(34) &"Às terças e quintas-feitas"& chr(34) &","&_
                    chr(34) &"Um sábado por mês"& chr(34) &","&_
                    chr(34) &"Aos finais de semana"& chr(34) &_
                "],"&_
            chr(34) &"cidade"& chr(34) &":["&_
                chr(34) &"São Paulo"& chr(34) &","&_
                chr(34) &"Belém"& chr(34) &","&_
                chr(34) &"Belo Horizonte"& chr(34) &","&_
                chr(34) &"Brasília"& chr(34) &","&_
                chr(34) &"Campinas"& chr(34) &","&_
                chr(34) &"Goiânia"& chr(34) &","&_
                chr(34) &"Manaus"& chr(34) &","&_
                chr(34) &"Pouso Alegre"& chr(34) &","&_
                chr(34) &"Rio de Janeiro"& chr(34) &","&_
                chr(34) &"Salvador"& chr(34) &"],"&_
                chr(34) &"novo"& chr(34) &":["& chr(34) &"Não"& chr(34) &","& chr(34) &"Sim"& chr(34) &_
                "]},"&_
            chr(34) &"inscricao"& chr(34) &_
            ":{"&_
                chr(34) &"genero"& chr(34) &_
                ":["&_
                    chr(34) &"Masculino"& chr(34) &","&_
                    chr(34) &"Feminino"& chr(34) &","&_
                    chr(34) &"Não binário"& chr(34) &_
                    "],"&_
                chr(34) &"provedor"& chr(34) &_
                ":["&_
                    chr(34) &"oswaldocruz.br"& chr(34) &","&_
                    chr(34) &"alunofoc.com.br"& chr(34) &","&_
                    chr(34) &"gmail.com"& chr(34) &","&_
                    chr(34) &"hotmail.com"& chr(34) &","&_
                    chr(34) &"hotmail.com.br"& chr(34) &","&_
                    chr(34) &"outlook.com"& chr(34) &","&_
                    chr(34) &"outlook.com.br"& chr(34) &","&_
                    chr(34) &"icloud.com"& chr(34) &","&_
                    chr(34) &"uol.com.br"& chr(34) &","&_
                    chr(34) &"terra.com.br"& chr(34) &","&_
                    chr(34) &"globo.com"& chr(34) &","&_
                    chr(34) &"ig.com.br"& chr(34) &","&_
                    chr(34) &"msn.com"& chr(34) &","&_
                    chr(34) &"msn.com.br"& chr(34) &"],"&_
                chr(34) &"status"& chr(34) &":["&_
                    chr(34) &"Consultoria"& chr(34) &","&_
                    chr(34) &"Inscrito"& chr(34) &","&_
                    chr(34) &"Matriculado"& chr(34) &","&_
                    chr(34) &"Cancelado"& chr(34) &","&_
                    chr(34) &"Perdido"& chr(34) &"]},"&_
            chr(34) &"relacionamento"& chr(34) &":{"&_
                chr(34) &"tipo"& chr(34) &":["&_
                    chr(34) &"Contato"& chr(34) &","&_
                    chr(34) &"Informação"& chr(34) &","&_
                    chr(34) &"Ajuste"& chr(34) &","&_
                    chr(34) &"Pagamento"& chr(34) &","&_
                    chr(34) &"Contrato"& chr(34) &","&_
                    chr(34) &"Matrícula"& chr(34) &","&_
                    chr(34) &"Cancelamento"& chr(34) &"],"&_
                chr(34) &"meio"& chr(34) &":["&_
                    chr(34) &"Automático"& chr(34) &","&_
                    chr(34) &"Telefone"& chr(34) &","&_
                    chr(34) &"WhatsApp"& chr(34) &","&_
                    chr(34) &"RDStation"& chr(34) &","&_
                    chr(34) &"Facebook"& chr(34) &","&_
                    chr(34) &"Instagram"& chr(34) &","&_
                    chr(34) &"Twitter"& chr(34) &","&_
                    chr(34) &"E-mail"& chr(34) &","&_
                    chr(34) &"Pessoalmente"& chr(34) &","&_
                    chr(34) &"Outro"& chr(34) &"]},"&_
            chr(34) &"financeiro"& chr(34) &":{"&_
                chr(34) &"transacao"& chr(34) &":["&_
                    chr(34) &"Matrícula"& chr(34) &","&_
                    chr(34) &"Mensalidade"& chr(34) &","&_
                    chr(34) &"Taxa"& chr(34) &","&_
                    chr(34) &"Módulo"& chr(34) &","&_
                    chr(34) &"Semestralidade"& chr(34) &","&_
                    chr(34) &"Anuidade"& chr(34) &"],"&_
                chr(34) &"pagamento"& chr(34) &":{"&_
                    chr(34) &"meio"& chr(34) &":["&_
                        chr(34) &"Cartão de crédito"& chr(34) &","&_
                        chr(34) &"Cartão de débito"& chr(34) &","&_
                        chr(34) &"Boleto bancário"& chr(34) &","&_
                        chr(34) &"Internet Banking"& chr(34) &","&_
                        chr(34) &"Dinheiro"& chr(34) &"],"&_
                    chr(34) &"status"& chr(34) &":["&_
                        chr(34) &"Emitido"& chr(34) &","&_
                        chr(34) &"Pago"& chr(34) &","&_
                        chr(34) &"Vencido"& chr(34) &","&_
                        chr(34) &"Estornado"& chr(34) &","&_
                        chr(34) &"Cancelado"& chr(34) &_
            "]}}}"&_
        "}"

response.write config

%> 