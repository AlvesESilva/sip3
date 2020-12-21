httpRequest('/sip3/config/',(config)=>{ 
    document.getElementById('Config').value = JSON.stringify(config); 
    },false);

const areas = {
    IdArea:[
        1,2,3,4,5,6,7,11,12,13
    ],
    Area: [
        "Negócios",
        "Saúde",
        "Educação",
        "Engenharia",
        "Química e Meio Ambiente",
        "Meio Ambiente",
        "Comunicação",
        "Tecnologia",
        "MBA",
        "Cosmética"
    ],
    Cor: [
        "#ffc107",
        "#dc3545",
        "#17a2b8",
        "#bd9575",
        "#28a745",
        "#28a745",
        "#007bff",
        "#bd9575",
        "#ffc107",
        "#dc3545"
    ],
    Icone: [
        "<i class='fas fa-chart-line'></i>",
        "<i class='fas fa-heart'></i>",
        "<i class='fas fa-graduation-cap'></i>",
        "<i class='fas fa-cog'></i>",
        "<i class='fas fa-flask'></i>",
        "<i class='fas fa-leaf'></i>",
        "<i class='fas fa-comment-alt'></i>",
        "<i class='fas fa-lightbulb'></i>",
        "<i class='fas fa-user-tie'></i>",
        "<i class='fas fa-smile'></i>"
    ]
};


