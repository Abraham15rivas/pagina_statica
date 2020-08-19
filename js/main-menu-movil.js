let boton = document.getElementById("icono");
let enlaces = document.getElementById("enlaces");
let contador = 0;
let h3 = document.getElementById('cerrar')
let span = document.getElementById('span')

boton.addEventListener("click", function() {
    if (contador == 0) {
        enlaces.className = ('enlaces dos');
        contador = 1;
        h3.removeAttribute("style")
        span.setAttribute("style", "display: none");
    } else {
        enlaces.classList.remove('dos');
        enlaces.className = ('enlaces uno');
        contador = 0;
        span.removeAttribute("style")
        h3.setAttribute("style", "display: none");
    }
})

window.addEventListener('resize', function() {
    if (screen.width > 750) {
        contador = 0;
        enlaces.classList.remove('dos');
        enlaces.className = ('enlaces uno');
    }
})