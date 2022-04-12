const pics = [
    "23338_Cristallina_White_quadro.jpg",
    "23339_Cristallina_Pearl_Grey_quadro.jpg",
    "23340_Cristallina_Ivory_quadro.jpg",
    "23341_Cristallina_Brown_quadro.jpg",
    "23346_Borcatello_quadro.jpg",
    "23345_Rosso_dArzo_quadro.jpg",
    "23348_Macchiavecchia_gialla_quadro.jpg",
    "23350_Macchiavecchia_grigia_quadro.jpg",
    "23508_Macchiavecchia_rossa_quadro.jpg",
    "23541_Cristallina_Green_quadro.jpg",
    "23540_Cristallina_Fantastico_quadro.jpg",
    "23542_Cristallina_Violet_quadro.jpg",
    "23543_Cristallina_Black_and_White_quadro.jpg",
    "23544_Cristallina_Arabescato_quadro.jpg"
]

function home() {
    const container = document.getElementById("the_cover");
    // const shuffledArray = pics.sort((a, b) => 0.5 - Math.random());

    for (i = 0; 12 > i; i++){
        container.innerHTML += "<div style='background-image:" + "url(assets/images/" + pics[i] + ")'></div>"
    }
}

window.addEventListener("load", function(){
    home();
});