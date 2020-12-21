document.querySelector('#upload-button').addEventListener('click', function () {

    document.getElementById('divFormUpload').style.display = 'none';

    if (document.querySelector('#file-input').files.length == 0) {
        msgErroUpload('Arquivo vazio. Escolha outro.');
        return;
    }

    var file = document.querySelector('#file-input').files[0];

   /*
    var mime_types = ['text/csv'];

    if (mime_types.indexOf(file.type) == -1) {
        msgErroUpload('Formato de arquivo inválido. Utilize .csv apenas.');
        return;
    }

    if (file.size > 2 * 1024 * 1024) {
        msgErroUpload('Arquivo com mais de 20Mb.');
        return;
    }
    */

    var data = new FormData();
    data.append('file', document.querySelector('#file-input').files[0]);

    var request = new XMLHttpRequest();
    request.open('post', 'stats/controller/CONTROLLER_StatsUploadCsvAtualizacao.asp');

    request.upload.addEventListener('progress', function (e) {
        var percent_complete = (e.loaded / e.total) * 100;

        var fileUploadProgress = document.getElementById('fileUploadProgress'),
            divProgressBar = document.getElementById('divProgressBar');
            divProgressBar.style.display = 'block';
            fileUploadProgress.value = percent_complete;

        if (percent_complete == 100) {

            document.getElementById('modalBodyAtualizar').innerHTML = '<div class="lds-ellipsis"><div></div><div></div><div></div><div></div></div>';

        }

    });

    request.addEventListener('load', function (e) {

        let helperAtualizaStats = objJson => {

            let registro = objJson.registros;

                console.log(objJson);
                document.getElementById('jsonLogAtualizacao').value = objJson;

                let sucesso = 0, falha = 0, inalterados = 0;

                for(let i in registro){
                        
                    switch(registro[i].atualizado){

                        case '-1':
                            falha += 1; 
                            break;
                        case '0':
                            inalterados += 1; 
                            break;
                        case '1':
                            sucesso += 1;     
                            break;
                    }

                }

                dataAtualizacao();
                document.getElementById('modalBodyAtualizar').innerHTML = '<span class="text-success text-center">Sucesso: '+ sucesso +' | Falha: '+ falha + ' | Inalterados: '+ inalterados + '</span>';

        }

        if (request.status == 200) {

            if (request.response) {

                let objJson = JSON.parse(request.response),
                    nomeArquivo = objJson.arquivo.nome;

                api = 'stats/controller/CONTROLLER_StatsAtualizar.asp?nomeArquivo=' + nomeArquivo;
                httpRequest(api, helperAtualizaStats);

            } else {

                msgErroUpload('Ocorreu um erro no upload. Tente novamente.');

            }

        } else {

            msgErroUpload('Não foi possível fazer oupload do arquivo. Tente novamente.');

        }


    });

    request.send(data);

});

let msgErroUpload = msg => {

    console.log(msg);
    alert(msg);

    /*
    let msgErroUpload = document.getElementById("msgErroUpload");
        msgErroUpload.innerHTML = msg;
        msgErroUpload.style.display = "block";
*/
};
