<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="donde.aspx.cs" Inherits="Web.donde" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="second-slide" src="img/bgTips.jpg" alt="Second slide">
                <div class="container">
                    <div class="carousel-caption">
                        <h1>Dónde Ir</h1>
                        <p>Lugares que conocer.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid cuerpo">
        <div class="row lugares" id="isabela">
            <div class="col-md-12 lugares-texto">
                <h1>DUCK ISLAND<br />ISLA DE LOS PATOS</h1>
                <p>Duck Island se ubica en la porción occidental del archipiélago y junto con su gran vecina Ferdinat, es una de las islas más nuevas del archipiélago.</p>
            </div>
        </div>
        <div class="row lugares" id="canoa">
            <div class="col-md-12 lugares-texto">
                <h1>BOAT<br />COSTA DEL OCEANO</h1>
                <p>La playa de Boat es un paraíso de 17 kilómetros de tranquilidad, naturaleza y diversión en la provincia de Jabalí. El ecoturismo y las excelentes olas para surfistas son algunas de las principales ofertas de este lugar. Su geografía es propicia para volar en alas delta o parapente, saltando desde el acantilado y volando sobre la playa.</p>
            </div>
        </div>
        <div class="row lugares" id="cochasqui">
            <div class="col-md-12 lugares-texto">
                <h1>BEAUTY MOUNTAIN<br />MOUNTAINS</h1>
                <p>Hacia el norte de la capital, una serie de montañas que dan lugar al parque arqueológico y de investigación científica del lugar. Se trata de un conjunto de pirámides que fueron construidas en el periodo del 850 a.C. hasta el 1550 a.C.</p>
            </div>
        </div>
        <div class="row lugares" id="yasuni">
            <div class="col-md-12 lugares-texto">
                <h1>SAUVAGE<br />LA SELVA</h1>
                <p>Area protegida más grande del FantasticCity continental y resguarda una impresionante biodiversidad en el corazón del bosque húmedo tropical amazónico.
Además protege parte del territorio de los pueblos indígenas en aislamiento voluntario.</p>
            </div>
        </div>
    </div>
</asp:Content>
