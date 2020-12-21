((IdEnsino) => {

    let  api = `/sip3/controller/curso/SIP3_CursosEnsino.asp?IdEnsino=${ IdEnsino }`
        ,tableCursos = document.getElementById('tableCursos')
        ,helperCursos = objJson => {

            let  Cursos = objJson.Cursos
                ,htmlCursos = ''
                ;

            for (let i in Cursos) {

                /*
                'C.IdCurso
                ',C.CodCurso
                ',C.Nome
                ',A.Area
                ',C.CargaHoraria
                ',E.Nivel
                */

                htmlCursos += `

                                        <tr class="link-curso" onclick=" javascript: document.location.assign('https://www.oswaldocruz.br/sip3/view/pos/curso/router.asp?IdCurso=${ Cursos[i].IdCurso }');">
                                            <th scope="row"><h4 class="text-secondary">${ Cursos[i].Nome.substring(0, 1) }</h4></th>
                                            <td scope="col">${ Cursos[i].Nome }</td>
                                            <td scope="col" style="color: ${ areas.Cor[areas.Area.indexOf(Cursos[i].Area)] }; font-size: 0.8rem;">${ areas.Icone[areas.Area.indexOf(Cursos[i].Area)] }&nbsp;${ Cursos[i].Area }</td>
                                            <!--
                                            <td scope="col" class="text-center">
                                                <span class="badge badge-pill badge-info">novo</span>
                                                <span class="badge badge-pill badge-primary">+opções</span>
                                                <span class="badge badge-pill badge-success">+cidades</span>
                                                <span class="badge badge-pill badge-danger">matrícula gratuita</span>
                                            </td>
                                            -->
                                        </tr>
                                        
                                        `;

            }

            tableCursos.innerHTML = `
                                    <table class="table table-hover tablesorter" id="tablesorter">
                                        <thead>
                                            <tr class="text-white bg-secondary">
                                                <th scope="col" class="header" style="width: 5%;"><small>a-z</small></th>
                                                <th scope="col" class="header" style="width: 70%;">Curso</th>
                                                <th scope="col" class="header" style="width: 25%;">Área</th>
                                                <!--
                                            <th scope="col" class="text-center">Condições</th>
                                            -->
                                            </tr>
                                        </thead>
                                        <tbody>
                                        ${ htmlCursos }
                                        </tbody>
                                    </table>
                                `;

        }
        ;

    tableCursos.innerHTML = 'Carregando..';
    httpRequest(api, helperCursos, false);

})(document.getElementById('IdEnsino').value);