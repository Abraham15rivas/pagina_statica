let pasable = 1;
visibleSlider(pasable);
            
function adelantarSlider(n){
    visibleSlider(pasable+=n);
}
            
function ubicacionSlider(n){
    visibleSlider(pasable=n);
}
            
setInterval(function duracion(){
    visibleSlider(pasable+=1);
},4000);
            
function visibleSlider(n){
    let i;
    let moverSlider = document.getElementsByClassName('Galeria-slider');
    let puntos = document.getElementsByClassName('punto');
                
    if(n > moverSlider.length){
        pasable = 1;
    }
                
    if(n < 1){
        pasable = moverSlider.length;
    }
                
    for(i = 0; i < moverSlider.length; i++){
        moverSlider[i].style.display = 'none';
    }
                
    for(i = 0; i < puntos.length; i++){
        puntos[i].className = puntos[i].className.replace(' accion', '');
    }
                
    moverSlider[pasable-1].style.display = 'block';
    puntos[pasable-1].className += ' accion';
                
}