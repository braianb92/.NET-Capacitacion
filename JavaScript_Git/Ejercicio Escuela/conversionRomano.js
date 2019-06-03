window.onload=start;

function start()
{
    convertirConSwitch();
}

function convertirConSwitch()
{
    var numeroIngresado;
    var valorRomano;
    do
    {
        numeroIngresado= prompt("Ingrese numero del 1 al 10");
    
        if(numeroIngresado>=1 && numeroIngresado <=10)
        {
            switch(parseInt(numeroIngresado))
            {
                case 1:
                    valorRomano="I";
                    break;
                case 2:
                    valorRomano="II";
                    break;
                case 3:
                    valorRomano="III";
                    break;
                case 4:
                    valorRomano="IV";
                    break;
                case 5:
                    valorRomano="V";
                    break;
                case 6:
                    valorRomano="VI";
                    break;
                case 7:
                    valorRomano="VII";
                    break;
                case 8:
                    valorRomano="VIII";
                    break;
                case 9:
                    valorRomano="IX";
                    break;
                case 10:
                    valorRomano="X";
                    break;
            }
            alert("El valor numerico ingresado es: "+numeroIngresado+ 
                    " y el numero en romano es: "+valorRomano);
        }
        else
            {
                alert("El valor numerico esperado no es valido");
            }
    }while(confirm("Desea intentarlo otra vez?"));  
    
}

function convertirConArray()
{
    var numeroIngresado;
    var valorRomano=["I","II","III","IV","V","VI","VII","VIII","IX","X"];
    var convertido;

    numeroIngresado= prompt("Ingrese numero del 1 al 10");
    if(numeroIngresado>=1 && numeroIngresado <=10)
    {
        convertido=valorRomano[numeroIngresado-1];
    }
    else
    {
        
    }
     
    
}
