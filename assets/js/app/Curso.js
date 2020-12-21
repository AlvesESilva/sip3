((IdCurso) => {

    let api = `/sip3/controller/curso/SIP3_ReadCurso.asp?IdCurso=${ IdCurso }` // Lê o curso
        , divCurso = document.getElementById('divCurso')
        , helperReadCurso = objJson => {

            var Curso_ = objJson.Curso
                , Curso = {
                    'Nome': Curso_.Curso,
                    'IdCurso': Curso_.IdCurso,
                    'IdArea': Curso_.IdArea,
                    'Area': {
                        'Nome': Curso_.Area,
                        'Cor': areas.Cor[areas.Area.indexOf(Curso_.Area)],
                        'Icone': areas.Icone[areas.Area.indexOf(Curso_.Area)]
                    },
                    'ImagemCurso': Curso_.ImagemCurso,
                    'CargaHoraria': Curso_.CargaHoraria,
                }
                , divArea = document.getElementById('Area')
                , nomeCurso = document.getElementById('nomeCurso')
                ;

            document.getElementById('masterHeadCurso').innerHTML = `<div class="masthead text-left mt-5" id="ImagemCurso" style="background-image: url('${ Curso.ImagemCurso }'); background-size: cover; height: 24rem; background-position: center;">
                                                                            <div style="height: 21.6rem;">&nbsp;</div>
                                                                            <div class="container pt-2 pb-3" style="background-color: #1b2034; opacity: 1; color: #ffffff; border: 1px solid #1b2034; border-radius: 10px; font-size: .9rem;">
                                                                            <a class="text-secondary" href="/pos/sip3/">oswaldocruz.br/pos/</a>curso/${ Curso.IdCurso }
                                                                            </div>
                                                                        </div>`;

            divArea.style.border.color = Curso.Area.Cor;
            divArea.style.color = Curso.Area.Cor;
            divArea.innerHTML = `${Curso.Area.Icone}&nbsp;${Curso.Area.Nome.toUpperCase()}`;
            nomeCurso.innerHTML = Curso.Nome;

            divCurso.style.color = '#1b2034';
            divCurso.style.backgroundColor = '#f3f4f8';
            divCurso.innerHTML = `
    
                        <div style="color: ${Curso.Area.Cor}"><i class="fas fa-user"></i>&nbsp;Coordenação</div>
                        <hr>
                        <div class="mb-4 mt-2" id="divCoordenacao"></div>
                        <div style="color: ${Curso.Area.Cor}"><i class="fas fa-info-circle"></i>&nbsp;Informações</div>
                        <hr>
                        <div id="divInformacoes"></div>
                        
                        `;

            api = `/sip3/controller/curso/SIP3_ReadCoordenador.asp?IdCurso=${Curso.IdCurso}`; // Lê a coordenação do curso
            httpRequest(api, (objJson) => {

                let Coordenador_ = objJson.Coordenador
                    , htmlCoordenador = ''
                    , divCoordenacao = document.getElementById('divCoordenacao')
                    ;

                for (let i in Coordenador_) {

                    htmlCoordenador += `
                
                <div class="container mb-3">    
                <h5 class="mb-0"><a href="mailto:${Coordenador_[i].EmailCoodenador}"><i class="far fa-envelope"></i>&nbsp;${Coordenador_[i].Coordenador}</a></h5>
                    <small>${Coordenador_[i].CurriculoCoordenador}</small>
                </div>

                `;

                }

                divCoordenacao.innerHTML = htmlCoordenador;

            }, false);

            api = `/sip3/controller/curso/SIP3_InformacoesCurso.asp?IdCurso=${IdCurso}`; // Lê as informações sobre o curso
            httpRequest(api, (objJson) => {

                let InformacoesCurso_ = objJson.InformacoesCurso
                    , htmlInformacoes = ''
                    , divInformacoes = document.getElementById('divInformacoes')
                    ;

                for (let i in InformacoesCurso_) {

                    htmlInformacoes += `
                
                <div class="container mb-3">    
                <h5 class="mb-0">${InformacoesCurso_[i].Titulo}</h5>
                <small>${InformacoesCurso_[i].Texto}</small>
                </div>

            `;

                }

                divInformacoes.innerHTML = htmlInformacoes;

            }, false);

            api = `/sip3/controller/curso/SIP3_OpcoesCurso.asp?IdCurso=${IdCurso}`; // Lê as opções de oferta do curso
            httpRequest(api, (objJson) => {

                let OpcoesCurso = objJson.OpcoesCurso
                    , divOpcoes = document.getElementById('divOpcoes')
                    , htmlOpcoes = ''
                    , IdOpcao = ''
                    , Modelo = ''
                    , Tipo = ''
                    , Cidade = ''
                    , btnCallToAction = ''
                    ;

                for (let i in OpcoesCurso) {

                    IdOpcao = OpcoesCurso[i].IdOpcao;
                    Modelo = OpcoesCurso[i].Modelo;
                    Tipo = OpcoesCurso[i].Tipo;
                    Cidade = OpcoesCurso[i].Cidade;

                    Tipo == 'Matrículas' ? btnCallToAction = `<button class="btn btn-block btn-lg btn-success" onclick="cadastro(${ IdCurso },${ IdOpcao },'Matrícula');;">Solicitar Matrícula</button>` : btnCallToAction = `<button class="btn btn-block btn-lg btn-primary" onclick="cadastro(${ IdCurso },${ IdOpcao },'Inscrição');">Solicitar Inscrição</button>`;


                    htmlOpcoes += `
                            <div class="container mb-4 border rounded p-2" style="background-color: #1b2034 ;">
                                <div class="text-secondary text-right"><small><i class="fas fa-tag"></i>&nbsp;IdOpcao&nbsp;${ IdOpcao }</small></div>
                                <div class="container mb-1">
                                        <p class="h5"><i class="fas fa-map-marker-alt"></i>&nbsp;${Cidade}</p>
                                        <p><i class="far fa-calendar"></i>&nbsp;${ Modelo }</p>
                                        <p><i class="far fa-clock"></i>&nbsp;${ Curso.CargaHoraria } horas</p>
                                        <p><i class="fas fa-edit"></i>&nbsp;${ Tipo }</p>
                                </div>
                                <div class="accordion" id="cardOpcao_${ IdOpcao }">
                                    <div class="card mb-2">
                                        <div id="headingCalendario_${ IdOpcao }" class="card-header mb-0 btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseCalendario_${ IdOpcao }" aria-expanded="false" aria-controls="collapseCalendario_${ IdOpcao }">
                                            <i class="far fa-calendar-alt"></i>&nbsp;Próximas Turmas
                                        </div>
                                        <div id="collapseCalendario_${ IdOpcao }" class="collapse" aria-labelledby="headingCalendario_${ IdOpcao }" data-parent="#cardOpcao_${ IdOpcao }">
                                            <div class="card-body text-secondary" id="divCalendario_${ IdOpcao }"></div>
                                        </div>
                                    </div>
                                    <div class="card mb-2">
                                        <div id="headingPlanoPagamento_${ IdOpcao }" class="card-header mb-0 btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapsePlanoPagamento_${ IdOpcao }" aria-expanded="false" aria-controls="collapsePlanoPagamento_${ IdOpcao }">
                                            <i class="fas fa-piggy-bank"></i>&nbsp;Investimento
                                        </div>
                                        <div id="collapsePlanoPagamento_${ IdOpcao }" class="collapse" aria-labelledby="headingPlanoPagamento_${ IdOpcao }" data-parent="#cardOpcao_${ IdOpcao }">
                                            <div class="card-body text-secondary" id="divPlanoPagamento_${ IdOpcao }"></div>
                                        </div>
                                    </div>
                                </div>
                                <div>
                                    <button class="btn btn-block btn-lg btn-info" onclick="cadastro(${ IdCurso },${ IdOpcao },'Consultoria');">Solicitar Consultoria</button>
                                    ${ btnCallToAction }
                                </div>
                            </div>
                            `;

                }

                divOpcoes.innerHTML = htmlOpcoes;

                maisInformacoes(OpcoesCurso);

            }, false);

        };

    httpRequest(api, helperReadCurso, false);

})(document.getElementById('IdCurso').value);


function maisInformacoes(OpcoesCurso) {

    let IdOpcao = 0
        ;

    for (let i in OpcoesCurso) {

        IdOpcao = OpcoesCurso[i].IdOpcao;
        helperCalendario(IdOpcao);
        helperPlanoPagamento(IdOpcao);

    }

};

function helperCalendario(IdOpcao) {

    httpRequest(`/sip3/controller/Opcao/SIP3_CalendarioOpcao.asp?IdOpcao=${ IdOpcao }`, (objJson) => { // Lê o calendário de aplicação da opção em questão

        let CalendarioOpcao_ = objJson.CalendarioOpcao
            , divCalendario_ = document.getElementById(`divCalendario_${ IdOpcao }`)
            , htmlCalendario = ''
            ;

        for (let i in CalendarioOpcao_) {

            //IdCalendario,
            //IdOpcao,
            //DataInicioAulas,
            //DataInicioMatriculas,
            //DataLimiteMatriculas 

            htmlCalendario += `<p><i class="far fa-calendar-check"></i>&nbsp;${CalendarioOpcao_[i].DataInicioAulas}</p>`

        }

        divCalendario_.innerHTML = htmlCalendario

    }, false);

}

function helperPlanoPagamento(IdOpcao) {

    httpRequest(`/sip3/controller/Opcao/SIP3_PlanoPagamentoOpcao.asp?IdOpcao=${ IdOpcao }`, (objJson) => { // Lê os planos de pagamento da opção em questão

        let PlanoPagamentoOpcao_ = objJson.PlanoPagamentoOpcao
            ,divPlanoPagamento_ = document.getElementById(`divPlanoPagamento_${ IdOpcao }`)
            ,htmlPlanoPagamento = ''
            ,numParcelas = ''
            ,valorParcela = ''
            ;

        for (let i in PlanoPagamentoOpcao_) {

            //OPP.IdPlanoPagamento,
            //OPP.IdOpcao,
            //PP.NumParcelas,
            //PP.ValorParcela

            numParcelas = PlanoPagamentoOpcao_[i].NumParcelas;
            valorParcela = PlanoPagamentoOpcao_[i].ValorParcela;

            if(numParcelas != '0'){

                htmlPlanoPagamento += `<p><i class="fas fa-tags"></i>&nbsp;${ numParcelas }x R$ ${ valorParcela },00</p>`

            } else {

                htmlPlanoPagamento += `<p><i class="fas fa-concierge-bell"></i>&nbsp;Consulte</p>`

            }

        }

        divPlanoPagamento_.innerHTML = htmlPlanoPagamento

    }, false);
};

function cadastro(IdCurso,IdOpcao,workflow){

    document.location.assign(`https://oswaldocruz.br/pos/cadastro/?IdCurso=${ IdCurso }&IdOpcao=${ IdOpcao }&WorkFlow=${ workflow }`)

};