/*funzione per mostrare retro pagina*/
function gestoreMostraRetro(){
	try{
		if(this.id == "pulsanteRetro"){
			nodoPulsanteRetro.setAttribute("class", "no");
		    nodoRetroPagina.setAttribute("class", "yes");
		    nodoNascondiRetro.setAttribute("class", "yes");	
		}
		else{
			nodoPulsanteRetro2.setAttribute("class", "no");
		    nodoRetroPagina2.setAttribute("class", "yes");
		    nodoNascondiRetro2.setAttribute("class", "yes");		
		}
	}
	catch(e){	
	}
}

/*funzione per nascondere retro pagina*/
function gestoreNascondiRetro(){
	try{
		if(this.id == "nascondiRetro"){
		nodoPulsanteRetro.setAttribute("class", "yes");
		nodoRetroPagina.setAttribute("class", "no");
		nodoNascondiRetro.setAttribute("class", "no");	
		}
		else{
        nodoPulsanteRetro2.setAttribute("class", "yes");
		nodoRetroPagina2.setAttribute("class", "no");
		nodoNascondiRetro2.setAttribute("class", "no");			
		}
	}
	catch(e){	
	}
}

var nodoPulsanteRetro;
var nodoNascondiRetro;
var nodoRetroPagina;

var nodoPulsanteRetro2;
var nodoNascondiRetro2;
var nodoRetroPagina2;



/*funzione per mostrare la traduzione cliccando sul pulsante + */
function gestoreMostraTraduzione(){
	try{
       if (this.id == "pulsanteTraduzione") {
		    nodoPulsanteTraduzione.setAttribute("class", "no");
		    nodoTraduzione.setAttribute("class", "yes");
		    nodoNascondiTraduzione.setAttribute("class", "yes");
        }
        else {
            nodoPulsanteTraduzione2.setAttribute("class", "no");
		    nodoTraduzione2.setAttribute("class", "yes");
		    nodoNascondiTraduzione2.setAttribute("class", "yes");
        }
	}
    catch(e){
	}
}

/*funzione per nascondere la traduzione cliccando sul pulsante - */
function gestoreNascondiTraduzione(){
	try{
        if (this.id == "nascondiTraduzione") {
		nodoPulsanteTraduzione.setAttribute("class", "yes");
		nodoTraduzione.setAttribute("class", "no");
		nodoNascondiTraduzione.setAttribute("class", "no");
        }
        else {
            nodoPulsanteTraduzione2.setAttribute("class", "yes");
		    nodoTraduzione2.setAttribute("class", "no");
		    nodoNascondiTraduzione2.setAttribute("class", "no");
        }
	}
    catch(e){
	}
}


var nodoPulsanteTraduzione;
var nodoNascondiTraduzione;
var nodoTraduzione;

var nodoPulsanteTraduzione2;
var nodoNascondiTraduzione2;
var nodoTraduzione2;


function gestoreLoad(){
	try{
		
		nodoRetroPagina = document.getElementById("retropag8");
		nodoPulsanteRetro = document.getElementById("pulsanteRetro");
		nodoPulsanteRetro.onclick = gestoreMostraRetro;
		nodoNascondiRetro = document.getElementById("nascondiRetro");
		nodoNascondiRetro.onclick = gestoreNascondiRetro;
		
		nodoRetroPagina2= document.getElementById("retropag9");
		nodoPulsanteRetro2= document.getElementById("pulsanteRetro2");
		nodoPulsanteRetro2.onclick = gestoreMostraRetro;
		nodoNascondiRetro2 = document.getElementById("nascondiRetro2");
		nodoNascondiRetro2.onclick = gestoreNascondiRetro;

		
		
		
        nodoTraduzione = document.getElementById("testoTraduzione");
		nodoPulsanteTraduzione = document.getElementById("pulsanteTraduzione");
		nodoPulsanteTraduzione.onclick = gestoreMostraTraduzione;
		nodoNascondiTraduzione = document.getElementById("nascondiTraduzione");
		nodoNascondiTraduzione.onclick = gestoreNascondiTraduzione;

        nodoTraduzione2 = document.getElementById("testoTraduzione2");
		nodoPulsanteTraduzione2 = document.getElementById("pulsanteTraduzione2");
		nodoPulsanteTraduzione2.onclick = gestoreMostraTraduzione;
		nodoNascondiTraduzione2 = document.getElementById("nascondiTraduzione2");
		nodoNascondiTraduzione2.onclick = gestoreNascondiTraduzione;

    } catch(e){
		alert("gestoreLoad "+e);
	}
}

window.onload = gestoreLoad;