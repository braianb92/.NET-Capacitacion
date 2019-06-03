//Window.onload=start; //forma 1 de iniciar

document.addEventListener('DOMcontentLoaded',start); //forma 2 de iniciar

//AL HACER ESTA FUNCION PUEDO LINKEAR EL SCRIPT EN EL HEAD PARA EVITAR AGREGAR SCRIPTS EN EL BODY.
function start()
{
    cambiarColorLuzSemaforo('red', true);
    cambiarColorLuzSemaforo('yellow', !true);
    cambiarColorLuzSemaforo('green', !true);
    textoBtnAuto('MODO AUTOMATICO');
}

//FUNCION QUE CAMBIA EL COLOR DEL SEMAFORO ACORDE AL ID->COLOR CORRESPONDIENTE.
function cambiarColorLuzSemaforo(id, prender)
        {
            var color = 'grey';
            if(prender==true)
            {
                color = id;
                //document.querySelector('#'+id).style.backgroundColor = color;  
            } 
            document.getElementById(id).style.backgroundColor=color;
        }
        
//FUNCION QUE AL CLICKEAR EL BOTON DE CLICKEO MANUAL, MATCHEA Y ME CAMBIA A LA LUZ CORRESPONDIENTE.
var estado=0;
function btnCambiarClick()
{
    console.log(estado);
    switch(estado)
    {
        case 0:
            cambiarColorLuzSemaforo('red', true);
            cambiarColorLuzSemaforo('yellow', !true);
            cambiarColorLuzSemaforo('green', !true);
            break;
        case 1:
            cambiarColorLuzSemaforo('red', true);
            cambiarColorLuzSemaforo('yellow', true);
            cambiarColorLuzSemaforo('green', !true);
            break;
        case 2:
            cambiarColorLuzSemaforo('red', !true);
            cambiarColorLuzSemaforo('yellow', !true);
            cambiarColorLuzSemaforo('green', true);
            break;
        case 3:
            cambiarColorLuzSemaforo('red', !true);
            cambiarColorLuzSemaforo('yellow', true);
            cambiarColorLuzSemaforo('green', !true);
            break;
        default:
            cambiarColorLuzSemaforo('red', !true);
            cambiarColorLuzSemaforo('yellow', !true);
            cambiarColorLuzSemaforo('green', !true);
            break;
    }
    estado++;
    //estado &=3; //con multiplo binario
    if(estado > 3)
    {
        estado=0;
    }
}

//FUNCION QUE OCULTA EL BOTON MANUAL AL PRESIONAR EL AUTOMATICO.
function ocultarBtnManual(ocultar)
{
    document.querySelector("#boton-cambiar").style.display= ocultar? 'none': 'block';
    textoBtnAuto(ocultar? 'MODO MANUAL':'MODO AUTOMATICO');
}

//FUNCION QUE CAMBIA EL NOMBRE AL BOTON.
function textoBtnAuto(texto)
{
    document.querySelector("#boton-automatico").innerHTML= texto;
}

//FUNCION QUE PONE EN MARCHA EL SEMAFORO EN MODO AUTOMATICO.
var modoAutomatico= false;
var refIntervaloAutomatico;
function btnModoAutomat()
{
    modoAutomatico=!modoAutomatico;
    console.log(modoAutomatico);
    if(modoAutomatico)
    {
        refIntervaloAutomatico=setInterval(btnCambiarClick,2000);
        ocultarBtnManual(true);
    }
    else
    {
        clearInterval(refIntervaloAutomatico);
        ocultarBtnManual(false);
    }
}