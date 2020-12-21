function OpcaoCadastro(IdCurso, IdOpcao, WorkFlow){

    let api = `/sip3/controller/curso/SIP3_ReadCurso.asp?IdCurso=${ IdCurso }` // Lê o curso
        , divCadastro = document.getElementById('divCadastro')
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
                                                                            <a class="text-secondary" href="/pos/sip3/">oswaldocruz.br/pos/</a><a class="text-secondary" href="https://www.oswaldocruz.br/sip3/view/pos/curso/router.asp?IdCurso=${ Curso.IdCurso }">curso/${ Curso.IdCurso }/</a>Cadastro
                                                                            </div>
                                                                        </div>`;

            divArea.style.border.color = Curso.Area.Cor;
            divArea.style.color = Curso.Area.Cor;
            divArea.innerHTML = `${Curso.Area.Icone}&nbsp;${Curso.Area.Nome.toUpperCase()}`;
            nomeCurso.innerHTML = Curso.Nome;

            divCadastro.style.color = '#1b2034';
            divCadastro.style.backgroundColor = '#f3f4f8';

            api = `/sip3/controller/opcao/SIP3_ReadOpcao.asp?IdOpcao=${IdOpcao}`; // Lê a opção de oferta
            httpRequest(api, (objJson) => {

                let OpcaoCurso = objJson.OpcaoCurso
                    , divOpcao = document.getElementById('divOpcao')
                    , htmlOpcao = ''
                    , htmlMatricula = ''
                    , IdOpcao = ''
                    , Modelo = ''
                    , Tipo = ''
                    , Cidade = ''
                    ;

                    IdOpcao = OpcaoCurso[0].IdOpcao;
                    Modelo = OpcaoCurso[0].Modelo;
                    Tipo = OpcaoCurso[0].Tipo;
                    Cidade = OpcaoCurso[0].Cidade;

                    WorkFlow == 'Matrícula' ? htmlMatricula = `
                    
                                <p><i class="far fa-calendar-check"></i>&nbsp;Escolha a data de início das aulas</p>
                                    <div class="container px-3 pt-3 border rounded mb-5 bg-light text-secondary">
                                        <p id="divCalendario_${IdOpcao}"></p>
                                    </div>
                                    <p><i class="fas fa-comment-dollar"></i>&nbsp;Escolha o melhor plano de pagamento</p>
                                    <div class="container px-3 pt-3 border rounded mb-5 bg-light text-secondary">
                                <p id="divPlanoPagamento_${IdOpcao}"></p>
                                `
                                :
                                htmlMatricula = ''
                                ;

                    htmlOpcao += `
                            <div class="text-secondary text-right"><small><i class="fas fa-tag"></i>&nbsp;IdOpcao&nbsp;${IdOpcao}</small></div>    
                            <p class="text-secondary mb-3 h4"><i class="fas fa-tag"></i>&nbsp;Opção selecionada</p>
                            <div class="container px-3 pt-3 border rounded mb-5 bg-light text-secondary">
                                <p class="h5"><i class="fas fa-map-marker-alt"></i>&nbsp;${Cidade}</p>
                                <p><i class="far fa-calendar"></i>&nbsp;${ Modelo }</p>
                                <p><i class="far fa-clock"></i>&nbsp;${ Curso.CargaHoraria } horas</p>
                                <p><i class="fas fa-edit"></i>&nbsp;${ Tipo }</p>
                            </div>
                            ${ htmlMatricula }                            
                            </div>
                            `;

                divOpcao.innerHTML = htmlOpcao;

                WorkFlow != 'Matrícula' ? ()=>{} : maisInformacoes(OpcaoCurso);

                helperCadastro(WorkFlow);

            }, false);

        };

    httpRequest(api, helperReadCurso, false);

};


function helperCadastro(WorkFlow){

    //IdOpcao INT,
    //IdPlanoPagamento INT,
    //IdCalendario INT,
    //Nome VARCHAR(300),
    //Email VARCHAR(300),
    //Telefone CHAR(11),
    //Celular CHAR(11),
    //Genero VARCHAR(30),
    //DataNascimento DATETIME,
    //FormacaoAnterior VARCHAR(500),
    //Cpf CHAR(11),
    //Rg CHAR(8),
    //CEP CHAR(8),
    //Logradouro VARCHAR(200),
    //Complemento VARCHAR(100),
    //Bairro VARCHAR(200),
    //Cidade VARCHAR(200),
    //UF CHAR(2)

    let workflow = {
        regra:['Consultoria','Inscrição','Matrícula'],
        cor: ['info','primary','success'],
        texto:['Um consultor de Pós-Graduação entrará em contato para ajudá-lo(a) encontrar a melhor opção para sua carreira.',
               'Sua inscrição contribui com a abertura de matrículas na opção. Divulgue entre seus amigos.', //Convide seus amigos para se inscreverem e <a href="#AcumuleBonus" class="text-danger" data-toggle="tooltip" data-placement="bottom" title="Ao final da sua inscrição você receberá um link de divulgação com seu código individual."><b>Acumule&nbsp;<i class="fas fa-gift"></i>&nbsp;Bônus</b></a> que podem ser trocados por cursos na Universidade Livre Oswaldo Cruz.
               'A matrícula é 100% on-line.'], //Convide seus amigos para se matricularem e <a href="#AcumuleBonus" class="text-danger" data-toggle="tooltip" data-placement="bottom" title="Ao final da sua matrícula você receberá um link de divulgação com seu código individual."><b>Acumule&nbsp;<i class="fas fa-gift"></i>&nbsp;Bônus</b></a> que podem ser trocados por cursos na Universidade Livre Oswaldo Cruz.
        contrato: [0,0,1],
        campos:[[1,0,0,1,0,0,1,0,0,0,0,0,0,0,0],
                [1,1,0,1,1,1,1,0,0,1,0,0,0,0,0],
                [1,1,0,1,1,1,1,1,1,1,1,1,1,1,1]],
       inputId:['Nome',
                'Email',
                'Telefone',
                'Celular',
                'Genero',
                'DataNascimento',
                'FormacaoAnterior',
                'Cpf',
                'Rg',
                'CEP',
                'Logradouro',
                'Complemento',
                'Bairro',
                'Cidade',
                'UF'],
    inputLabel:['Nome',
                'E-mail',
                'Telefone',
                'Celular',
                'Gênero',
                'Data de Nascimento',
                'Formação Anterior',
                'CPF',
                'RG',
                'CEP',
                'Logradouro',
                'Número e Complemento',
                'Bairro',
                'Cidade',
                'Estado'],
     inputType:['type="text" maxlength="300"',
                'type="email" maxlength="300"',
                'type="hidden" maxlength="11"',
                'type="number" maxlength="11"',
                'type="text" maxlength="30"', // PENSAR NUM JEITO ELEGANTE DE FAZER ISSO
                'type="date"',
                'type="text" maxlength="500"',
                'type="number" maxlength="11"',
                'type="text" maxlength="11"',
                'type="text" maxlength="8" onblur="buscaCEP(this);"',
                'type="text" maxlength="200"',
                'type="text" maxlength="200"',
                'type="text" maxlength="200"',
                'type="text" maxlength="200"',
                'type="text" maxlength="2"']
        }
        ,formCadastro = ''
        ,divCadastro = document.getElementById('divCadastro')
        ,divWorkFlow = document.getElementById('divWorkFlow')
        ,cor = workflow.cor[workflow.regra.indexOf(WorkFlow)]
        ,texto = workflow.texto[workflow.regra.indexOf(WorkFlow)]
        ,contrato = workflow.contrato[workflow.regra.indexOf(WorkFlow)] == 1
        ,array = workflow.campos[workflow.regra.indexOf(WorkFlow)]
        ,_ = 
            {
             hidden: false,
             id: '',
             type: '',
             label: '',
            }
        ;

    for(let i in array){

        _.hidden = workflow.campos[workflow.regra.indexOf(WorkFlow)][i] == 0;
        _.id = workflow.inputId[i];
        _.type = workflow.inputType[i];
        _.label = workflow.inputLabel[i];
        
        _.hidden ? formCadastro += `
                 <input type="hidden" id="${ _.id }" name="${ _.id }" value="">
                 `
                :
                 formCadastro += `
                 <label for="${ _.id }" class="label">${ _.label }</label>
                 <input ${ _.type } required id="${ _.id }" name="${ _.id }" class="form-control mb-3">
                 `
                ;
    }

    contrato ? formCadastro += `


    <div class="form-group form-check text-left">
        <input required type="checkbox" class="form-check-input" id="inputContrato">
        <label class="form-check-label" for="inputContrato">
        Li e aceito os termos do <a href="#" class="text-secondary" data-toggle="modal" data-target="#modalContrato"><strong><u>Contrato de Matrícula On-Line</u></strong>
        </a></label>
    </div>
      

    `
    :
    ()=>{}
    ;

    formCadastro = `
    
        <form id="FormCadastro" method="GET" class="form-group" action=" javascript: createInscricao(this,'${ WorkFlow }'); ">

        ${ formCadastro }

        <input type="hidden" id="IdCalendario">
        <input type="hidden" id="IdPlanoPagamento">
        <input type="submit" class="form-control btn btn-lg btn-${ cor } mt-2" value="Solicitar ${ WorkFlow }">

        </form>

    `;

    divWorkFlow.innerHTML = `<h5><i class="fas fa-edit"></i>&nbsp;Solicitação de ${ WorkFlow }</h5>
                             <p>${ texto }</p>
                             `;
    divWorkFlow.className = `mb-5 border rounded px-3 pt-3 pb-1 border-${ cor } bg-${ cor } text-white`;
    divCadastro.innerHTML = formCadastro;

};

function createInscricao(form, WorkFlow){


        let  IdOpcao = document.getElementById('IdOpcao').value
            ,IdCurso = document.getElementById('IdCurso').value
            ,IdCalendario = form.IdCalendario.value || 0
            ,IdPlanoPagamento = form.IdPlanoPagamento.value || 0
            ,payLoad = `IdOpcao=${ IdOpcao }&IdCurso=${ IdCurso }&IdCalendario=${ IdCalendario }&IdPlanoPagamento=${ IdPlanoPagamento }&Nome=${ form.Nome.value }&Email=${ form.Email.value }&Telefone=${ form.Telefone.value }&Celular=${ form.Celular.value }&Genero=${ form.Genero.value }&DataNascimento=${ form.DataNascimento.value }&FormacaoAnterior=${ form.FormacaoAnterior.value }&Cpf=${ form.Cpf.value }&Rg=${ form.Rg.value }&CEP=${ form.CEP.value }&Logradouro=${ form.Logradouro.value }&Complemento=${ form.Complemento.value }&Bairro=${ form.Bairro.value }&Cidade=${ form.Cidade.value }&UF=${ form.UF.value }&WorkFlow=${ WorkFlow }`
            ,controller = `/sip3/controller/inscricao/SIP3_CreateInscricao.asp?${ payLoad }`
            ;

    if( WorkFlow == 'Matrícula' ){

        if(IdCalendario==''){alert('Escolha uma data de início de aulas'); return;}
        if(IdPlanoPagamento==''){alert('Escolha o melhor plano de pagamento'); return;}

    }

    httpRequest(controller,()=>{ document.location.assign('/pos/cadastro/sucesso/'); },false);
        
};

function maisInformacoes(OpcaoCurso) {

    let IdOpcao = 0
        ;

    for (let i in OpcaoCurso) {

        IdOpcao = OpcaoCurso[0].IdOpcao;
        helperCalendarioCadastro(IdOpcao);
        helperPagamentoCadastro(IdOpcao);

    }

};

function helperCalendarioCadastro(IdOpcao) {

    httpRequest(`/sip3/controller/Opcao/SIP3_CalendarioOpcao.asp?IdOpcao=${IdOpcao}`, (objJson) => { // Lê o calendário de aplicação da opção em questão

        let CalendarioOpcao_ = objJson.CalendarioOpcao
            , divCalendario_ = document.getElementById(`divCalendario_${IdOpcao}`)
            , htmlCalendario = ''
            ;

        for (let i in CalendarioOpcao_) {

            //IdCalendario,
            //IdOpcao,
            //DataInicioAulas,
            //DataInicioMatriculas,
            //DataLimiteMatriculas 

            htmlCalendario += `
                                <div class="input-group">
                                <div class="input-group-prepend">
                                    <div class="input-group-text">
                                    <input type="radio" aria-label="${ CalendarioOpcao_[i].DataInicioAulas }" id="IdCalendario_${  CalendarioOpcao_[i].IdCalendario }" name="IdCalendario" value="${ CalendarioOpcao_[i].IdCalendario }">
                                    </div>
                                </div>
                                <input type="text" class="form-control" aria-label="${ CalendarioOpcao_[i].DataInicioAulas }" readonly value="${ CalendarioOpcao_[i].DataInicioAulas }">
                                </div>
                                `;
        }

        divCalendario_.innerHTML = htmlCalendario;

    }, false);

};

function helperPagamentoCadastro(IdOpcao) {

    httpRequest(`/sip3/controller/Opcao/SIP3_PlanoPagamentoOpcao.asp?IdOpcao=${IdOpcao}`, (objJson) => { // Lê os planos de pagamento da opção em questão

        let PlanoPagamentoOpcao_ = objJson.PlanoPagamentoOpcao
            ,divPlanoPagamento_ = document.getElementById(`divPlanoPagamento_${IdOpcao}`)
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

                htmlPlanoPagamento += `
                                    <div class="input-group">                    
                                        <div class="input-group-prepend">
                                            <div class="input-group-text">
                                            <input type="radio" aria-label="${ PlanoPagamentoOpcao_[i].NumParcelas }x ${ PlanoPagamentoOpcao_[i].ValorParcela }" id="IdPlanoPagamento_${  PlanoPagamentoOpcao_[i].IdPlanoPagamento }" name="IdPlanoPagamento" value="${ PlanoPagamentoOpcao_[i].IdPlanoPagamento }">
                                            </div>
                                        </div>
                                        <input type="text" class="form-control" aria-label="${ PlanoPagamentoOpcao_[i].NumParcelas }x ${ PlanoPagamentoOpcao_[i].ValorParcela }" readonly value="${ PlanoPagamentoOpcao_[i].NumParcelas }x R$ ${ PlanoPagamentoOpcao_[i].ValorParcela },00">
                                    </div>
                                    `;

            } else {

                htmlPlanoPagamento += `<p><i class="fas fa-concierge-bell"></i>&nbsp;Consulte</p>`

            }

        }

        divPlanoPagamento_.innerHTML = htmlPlanoPagamento;

    }, false);
};

function buscaCEP(CEP){

    CEP = new String(CEP.value);

    if(CEP.length == 8){

        httpRequest(`https://viacep.com.br/ws/${ CEP }/json/`,(o)=>{
            document.getElementById('Logradouro').value = o.logradouro,
            document.getElementById('Bairro').value = o.bairro,
            document.getElementById('Cidade').value = o.localidade,
            document.getElementById('UF').value = o.uf
        },false);

    }

};

OpcaoCadastro(document.getElementById('IdCurso').value,document.getElementById('IdOpcao').value, document.getElementById('WorkFlow').value);

