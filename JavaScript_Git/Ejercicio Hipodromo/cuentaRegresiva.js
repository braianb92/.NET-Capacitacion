window.onload=start;

function start()
{ 
    cuentaRegresiva();
}


var numeroIngresado;
    
numeroIngresado=prompt("Ingrese Numero Entero Positivo");
numeroIngresado=parseInt(numeroIngresado);

function cuentaRegresiva()
{
    if(numeroIngresado>0)
    {
        document.getElementById("numero").innerHTML=numeroIngresado;
        setTimeout(cuentaRegresiva,1000);
        numeroIngresado--;
        
    }
    else
    {
        alert("Largaron!");
    }
}



