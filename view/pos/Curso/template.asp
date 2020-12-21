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
                <div class="container p-1 mb-1 text-right" style="font-size: 0.9rem; border-bottom: 1px solid;"
                    id="Area"></div>
                <div class="h1 text-left" id="nomeCurso"></div>
                <div class="container mt-4 alert alert-warning alert-dismissible fade show" role="alert">
                    <p class="text-primary h6"><i class="fas fa-laptop-code"></i>&nbsp;<strong>Atividade Pedagógica
                            Remota</strong></p>
                    <small>Curso presencial temporariamente em atividade pedagógica remota em virtude do isolamento
                        social. Utilizamos a plataforma <a href="https://zoom.us/download"
                            target="_blank">Zoom.us</a></small>
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="container mt-4 pt-3 mb-5" style="border: 1px solid; border-radius: 7px;" id="divCurso"><i
                        class="fas fa-spinner fa-pulse"></i></div>
                <div class="h4 text-secondary mt-5 mb-3"><i class="fas fa-tags"></i>&nbsp;Opções de Oferta</div>
                <div id="divOpcoes"><i class="fas fa-spinner fa-pulse"></i></div>

                <div class="container mt-5">
                    <h4 class="text-secondary"><i class="far fa-handshake"></i>&nbsp;Parceiros</h4>
                </div>
                <hr class="bg-secondary">
                <div class="container">
                    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="carousel-item h1 active">
                                <a style="color: #dcdcdc;" href="https://www.sbtox.org/" target="_blank"><img
                                        class="img-fluid"
                                        src="/pos/images/parceria/sbtox_logo.jpg">&nbsp;&nbsp;Sbtox</a>
                            </div>
                            <div class="carousel-item h1">
                                <a style="color: #dcdcdc;" href="http://www.citral.com.br/" target="_blank"><img
                                        class="img-fluid"
                                        src="/pos/images/parceria/citral_logo.jpg">&nbsp;&nbsp;Citral</a>
                            </div>
                            <div class="carousel-item h1">
                                <a style="color: #dcdcdc;" href="http://www.mane.com/" target="_blank"><img
                                        class="img-fluid" src="/pos/images/parceria/mane_logo.jpg">&nbsp;&nbsp;Mane</a>
                            </div>
                            <div class="carousel-item h3">
                                <a style="color: #dcdcdc;" href="http://www.raiingredients.com.br/" target="_blank"><img
                                        class="img-fluid"
                                        src="/pos/images/parceria/rai_logo.jpg">&nbsp;&nbsp;Raiingredients</a>
                            </div>
                            <div class="carousel-item h3">
                                <a style="color: #dcdcdc;" href="http://www.perkinelmer.com.br/" target="_blank"><img
                                        class="img-fluid"
                                        src="/pos/images/parceria/perkinelmer_logo.jpg">&nbsp;&nbsp;Perkinelmer</a>
                            </div>
                            <div class="carousel-item h1">
                                <a style="color: #dcdcdc;" href="http://aqia.net/" target="_blank"><img
                                        class="img-fluid" src="/pos/images/parceria/aqia_logo.jpg">&nbsp;&nbsp;Aqia</a>
                            </div>
                            <div class="carousel-item h1">
                                <a style="color: #dcdcdc;" href="https://www.symrise.com/" target="_blank">
                                    <img class="img-fluid"
                                        src="/pos/images/parceria/symrise_logo.jpg">&nbsp;&nbsp;Symrise</a>
                            </div>
                            <div class="carousel-item h1">
                                <a style="color: #dcdcdc;" href="http://www.iff.com/" target="_blank"><img
                                        class="img-fluid" src="/pos/images/parceria/iff.jpg">&nbsp;&nbsp;Iff</a>
                            </div>
                            <div class="carousel-item h1">
                                <a style="color: #dcdcdc;" href="http://www.wnf.com.br/" target="_blank"><img
                                        class="img-fluid" src="/pos/images/parceria/wnf_logo.jpg">&nbsp;&nbsp;Wnf</a>
                            </div>
                            <div class="carousel-item h1">
                                <a style="color: #dcdcdc;" href="http://www.kopiehaus.com.br/" target="_blank"><img
                                        class="img-fluid"
                                        src="/pos/images/parceria/kopiehaus_logo.jpg">&nbsp;&nbsp;Kopiehaus</a>
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="bg-secondary">

                <div class="container mt-5 mb-5">
                    <h4 class="text-secondary"><i class="fas fa-stopwatch"></i>&nbsp;Cursos de Curta Duração</h4>
                    <hr class="bg-secondary">
                    <p>Conheça a Universidade Livre Oswaldo Cruz - <a
                            href="https://www.unilivreoswaldocruz.com.br">unilivreoswaldocruz.com.br</a>. Criada para
                        atender às
                        recentes dinâmicas do mercado de trabalho, que exigem dos profissionais uma constante
                        atualização e
                        ampliação de competências.</p>
                    <p><a href="https://www.unilivreoswaldocruz.com.br"><img
                                src="/sip3/assets/img/banner_unilivre_portal.jpg" class="img-fluid shadow"
                                style="border-color: #1b2034; border-radius: 10px;"></a></p>
                </div>

    </main>

    <footer class="page-footer p-5 bg-warning" style="color: #1b2034; font-size: .8rem;">
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
                        id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Serviços
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item"
                            href="http://sistema.oswaldocruz.br:9000/UniversusNet/Seguro/Login.aspx?ReturnUrl=%2fUniversusNet%2fdefault.aspx">Central
                            do Aluno</a>
                        <a class="dropdown-item" href=" javascript: showFichaFinanceira();">Ficha Financeira Aluno</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="https://www.oswaldocruz.br/adm/default.asp">Área
                            Administrativa</a>
                        <a class="dropdown-item"
                            href="http://sistema.oswaldocruz.br:9000/UniversusNet/Seguro/Login.aspx?ReturnUrl=%2funiversusnet%2fdefault.aspx">Central
                            do Professor</a>

                    </div>
                </div>
                </p>
                <ul class="text-small list-unstyled">
                    <li><a style="color: #1b2034; font-size: .8rem;"
                            href="mailto: pos@oswaldocruz.br">pos@oswaldocruz.br</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;" href="#">11 3824-3660 ramais 3970 ou 3971</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;" href="#">Atendimento de segunda a sexta das 14h às
                            20h</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;"></a>
                    </li>
                </ul>
            </div>
            <div class="col-6 col-md">
                <h6><i class="far fa-calendar-alt"></i>&nbsp;Calendários</h6>
                <ul class="text-small list-unstyled">
                    <li><a style="color: #1b2034; font-size: .8rem;"
                            href="https://www.oswaldocruz.br/download/arquivos/40471.pdf">Calendário
                            TCC - finais de semana</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;"
                            href="https://www.oswaldocruz.br/download/arquivos/43585.pdf">Calendário
                            2019 - MTC</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;"
                            href="https://www.oswaldocruz.br/download/arquivos/44430.pdf">Calendário
                            2020</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;"
                            href="https://www.oswaldocruz.br/download/arquivos/44656.pdf">Calendário
                            2020 - área de gestão e negócios</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;"
                            href="https://www.oswaldocruz.br/download/arquivos/48407.pdf">Calendário
                            2021 - finais de semana</a></li>
                </ul>
            </div>
            <div class="col-6 col-md">z+

                <h6><i class="far fa-file-pdf"></i>&nbsp;Documentos</h6>
                <ul class="text-small list-unstyled">
                    <li><a style="color: #1b2034; font-size: .8rem;"
                            href="http://www.oswaldocruz.br/download/arquivos/45399.pdf">Manual do
                            Aluno</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;"
                            href="https://www.oswaldocruz.br/pos/MetodologiaTrabalhoCientifico.asp">Trabalho de
                            Conclusão de Curso</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;"
                            href="http://www.oswaldocruz.br/download/arquivos/45398.pdf">Resolução CPG
                            número 02/2019</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;"
                            href="http://www.oswaldocruz.br/download/arquivos/45397.pdf">Resolução CPG
                            número 01/2020</a></li>
                    <li><a style="color: #1b2034; font-size: .8rem;"
                            href="http://www.oswaldocruz.br/download/arquivos/45396.pdf">Ato número
                            1/2019</a></li>
                    <!--<li><a style="color: #1b2034; font-size: .8rem;" href="#">Política de Privacidade</a></li>-->
                </ul>
            </div>
        </div>
    </footer>

    <form>
        <input type="hidden" id="IdCurso" value="<%=IdCurso%>">
        <input type="hidden" id="Config">
    </form>

    <script src="/sip3/assets/js/dist/jquery.slim.min.js"></script>
    <script src="/sip3/assets/js/dist/popper.min.js"></script>
    <script src="/sip3/assets/js/dist/bootstrap.bundle.min.js"></script>
    <script src="/sip3/assets/js/app/Curso.js"></script>

</body>

</html>