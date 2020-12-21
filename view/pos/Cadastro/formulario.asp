<!doctype html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Metadados OG Twitter -->
    <meta name="twitter:card" content="summary" />
    <meta name="twitter:site" content="https://oswaldocruz.br/pos" />
    <meta name="twitter:creator" content="@oswaldocruz1914" />

    <!-- Open Graph Metadados (Facebook e Twitter e Linkedin)-->
    <meta property='og:url' content='https://oswaldocruz.br/pos' />
    <meta property='og:type' content='website' />
    <meta property='og:title' content='Centro de Pós-Graduação e Pesquisa Oswaldo Cruz' />
    <!-- Título Facebook/Linkedin -->
    <meta property='og:description'
        content='Em funcionamento desde 1992, o Centro de Pós-Graduação e Pesquisa Oswaldo Cruz contribui para o aperfeiçoamento de líderes em todo pais, são mais de 25.000 especialistas formados. Seja um deles você também.' />
    <!-- Descrição do Facebook -->
    <meta property="og:image" content="https://oswaldocruz.br/pos/assets/img/predioFaculdadeOswaldoCruz.png" />
    <!--
		<link rel="icon" href="/sip3/assets/img/favicon.jpeg">
	-->


    <title>Centro de Pós-Graduação e Pesquisa Oswaldo Cruz</title>

    <link href="/sip3/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="/sip3/assets/css/landing-page.min.css" rel="stylesheet">
    <link href="/sip3/assets/css/pos.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    
    <script src="/sip3/assets/css/all.min.js"></script>
    <script src="/sip3/assets/js/dist/httpRequest.js"></script>
    <script src="/sip3/assets/js/app/Config.js"></script>
 
</head>

<body>

    <header class="mb-5">
        <nav class="navbar navbar-expand-md navbar-dark fixed-top mb-5"
            style="background-color: #1b2034; border-bottom: 1px solid #ffbb00;">
            <a class="text-white" href="/pos/sip3/"><span class="h3"><i
                        class="fas fa-chart-line"></i>&nbsp;Pós-Graduação</span></a>
        </nav>
    </header>
    <div class="container mt-5 mb-5" id="divErro"></div>
    <div id="masterHeadCurso"></div>
    <main role="main">
        <div class="mb-3">
            <div class="container mt-4">
                <div class="container p-1 mb-1 text-right" style="font-size: 0.9rem; border-bottom: 1px solid;" id="Area"></div>
                <div class="h1 text-left mb-5" id="nomeCurso"></div>
                <div id="divWorkFlow"></div> 
                <div id="divOpcao"></div>
                <p class="text-secondary h4"><i class="fas fa-user-edit"></i>&nbsp;Informe seus dados</p>
                <div class="container mt-3 pt-3 mb-5" style="border: 1px solid; border-radius: 7px;" id="divCadastro"></div>
    </main>

    <footer class="page-footer p-5 bg-warning"
        style="color: #1b2034; font-size: .8rem;">
        <div class="row">
            <div class="col-12 col-md">
                <img class="mb-2" src="/sip3/assets/img/brasao.png" alt="" width="142" height="194">
                <small class="d-block mb-3 text-muted">&copy; 1914-2020</small>
            </div>
            <div class="col-6 col-md">
                <h6><i class="fas fa-user-alt"></i>&nbsp;Secretaria</h6>
                <p>
                    <div class="dropdown">
                        <button class="btn btn-sm btn-danger dropdown-toggle mr-1 dropleft" type="button"
                            id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">
                            Serviços
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item"
                                href="http://sistema.oswaldocruz.br:9000/UniversusNet/Seguro/Login.aspx?ReturnUrl=%2fUniversusNet%2fdefault.aspx">Central
                                do Aluno</a>
                                <a class="dropdown-item"
                                href=" javascript: showFichaFinanceira();">Ficha Financeira Aluno</a>
                                <div class="dropdown-divider"></div>
                            <a class="dropdown-item"
                            href="https://www.oswaldocruz.br/adm/default.asp">Área Administrativa</a>
                            <a class="dropdown-item"
                                href="http://sistema.oswaldocruz.br:9000/UniversusNet/Seguro/Login.aspx?ReturnUrl=%2funiversusnet%2fdefault.aspx">Central
                                do Professor</a>
                            
                        </div>
                    </div>
                </p>
                <ul class="text-small list-unstyled">
                    <li><a style="color: #1b2034; font-size: .8rem;" href="mailto: pos@oswaldocruz.br">pos@oswaldocruz.br</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;" href="#">11 3824-3660 ramais 3970 ou 3971</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;" href="#">Atendimento de segunda a sexta das 14h às 20h</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;" ></a>
                    </li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h6><i class="far fa-calendar-alt"></i>&nbsp;Calendários</h6>
                <ul class="text-small list-unstyled">
                    <li><a style="color: #1b2034; font-size: .8rem;" href="https://www.oswaldocruz.br/download/arquivos/40471.pdf">Calendário
                            TCC - finais de semana</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;" href="https://www.oswaldocruz.br/download/arquivos/43585.pdf">Calendário
                            2019 - MTC</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;" href="https://www.oswaldocruz.br/download/arquivos/44430.pdf">Calendário
                            2020</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;" href="https://www.oswaldocruz.br/download/arquivos/44656.pdf">Calendário
                            2020 - área de gestão e negócios</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;" href="https://www.oswaldocruz.br/download/arquivos/48407.pdf">Calendário
                            2021 - finais de semana</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h6><i class="far fa-file-pdf"></i>&nbsp;Documentos</h6>
                <ul class="text-small list-unstyled">
                    <li><a style="color: #1b2034; font-size: .8rem;" href="http://www.oswaldocruz.br/download/arquivos/45399.pdf">Manual do
                            Aluno</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;"
                            href="https://www.oswaldocruz.br/pos/MetodologiaTrabalhoCientifico.asp">Trabalho de
                            Conclusão de Curso</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;" href="http://www.oswaldocruz.br/download/arquivos/45398.pdf">Resolução CPG
                            número 02/2019</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;" href="http://www.oswaldocruz.br/download/arquivos/45397.pdf">Resolução CPG
                            número 01/2020</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;" href="http://www.oswaldocruz.br/download/arquivos/45396.pdf">Ato número
                            1/2019</a></li>
                    <!--<li><a style="color: #1b2034; font-size: .8rem;" href="#">Política de Privacidade</a></li>-->
                </ul>
            </div>
        </div>
    </footer>
    <form>
        <input type="hidden" id="IdCurso" value="<%=request("IdCurso")%>">
        <input type="hidden" id="IdOpcao" value="<%=request("IdOpcao")%>">
        <input type="hidden" id="WorkFlow" value="<%=request("WorkFlow")%>">
        <input type="hidden" id="Config">
    </form>
    
    <script src="/sip3/assets/js/dist/jquery.slim.min.js"></script>
    <script src="/sip3/assets/js/dist/popper.min.js"></script>
    <script src="/sip3/assets/js/dist/bootstrap.bundle.min.js"></script>
    <script src="/sip3/assets/js/app/Cadastro.js"></script>

    <!-- Modal Contrato -->
        <div class="modal fade text-secondary" id="modalContrato" tabindex="-1" role="dialog" aria-labelledby="modalContratoLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                <h5 class="modal-title" id="modalContratoLabel"><strong>Contrato de Matrícula On-Line</strong></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body" id="bodyModalContrato">
                    <p class="text-justify">Este contrato estabelece os direitos e obrigações do candidato a preenchimento de uma vaga em qualquer um dos cursos do Centro de Pós-Graduação e Pesquisa Oswaldo Cruz e está restrito à utilização no site oficial da instituição (www.oswaldocruz.br/pos).</p>
                    <p class="text-justify">Clausula 1ª – O candidato ao preenchimento de vaga, doravante tratado como ALUNO e o Centro de Pós-Graduação e Pesquisa Oswaldo Cruz doravante tratado como INSTITUIÇÃO assinam de comum acordo este contrato no estrito objetivo de estabelecer as regras que garantirão ao ALUNO a confirmação posterior de sua matrícula.</p>
                    <p class="text-justify">Clausula 2ª – O ALUNO é o único responsável pelas informações fornecidas no formulário de Matrícula preenchido ao lado e compromete-se a comprová-las por intermédio da apresentação da documentação correspondente.</p>
                    <p class="text-justify">Clausula 3ª – Fica estabelecido que será reservada uma vaga no curso / opção escolhidos pelo ALUNO, desde que o mesmo compareça à secretaria da INSTITUIÇÃO até o início das aulas.</p>
                    <p class="text-justify">Clausula 4ª – Para a confirmação da matrícula, será necessário o comparecimento do ALUNO à secretaria da INSTITUIÇÃO, munido dos documentos abaixo e posterior assinatura do contrato de prestação de serviços educacionais:</p>
                    <p>
                    <ul>
                        <li>Cópia simples do RG</li>
                        <li>Cópia simples do CPF</li>
                        <li>Cópia autenticada do diploma de Curso Superior (caso ainda não tenha o diploma disponível, no ato da matrícula poderá apresentar cópia simples da declaração e/ou certificado de conclusão da Graduação)</li>
                        <li>Cópia simples do Histórico Escolar</li>
                        <li>Curriculum Vitae ou Lattes</li>
                        <li>Cópia simples do comprovante de residência</li>
                        <li>Uma foto 3x4 (recente)</li>
                    </ul>
                    </p>    
                    <p class="text-justify">Clausula 5ª – O ALUNO poderá, a qualquer momento, desistir deste contrato sem qualquer ônus até o dia anterior ao início das aulas, bastando para tal formalizar sua desistência por intermédio de e-mail dirigido ao endereço pos@oswaldocruz.br.</p>
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                </div>
            </div>
            </div>
        </div>
    <!-- Modal Contrato -->

</body>

</html>