window.onload=start;

var numeroIngresado;

numeroIngresado=prompt("Ingrese un Numero para mostar los Nº primos hasta el Nº Ingresado");
numeroIngresado=parseInt(numeroIngresado);

function start()
{
    var contador;
    var i;
    var j;

    if(numeroIngresado>=1)
    {
        for(i=numeroIngresado;i>=1;i--)
        {
            contador=0;
            for(j=i-1;j>1;j--)
            {
                if(i%j==0)
                {
                    contador=1;
                } 
            }
            if(contador==0)
            {
                console.log(i);
            } 
        }
    }
}