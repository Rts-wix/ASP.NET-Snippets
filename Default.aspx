<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderTitle" Runat="Server">Hjem
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderLocalStyles" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderContent" Runat="Server">

<div class="jumbotron"> 
        
        <h1>Super fede og nyttige eksempler i ASP.NET!</h1>
        <p class="lead">Når jeg underviser og vejleder på WebIntegrator uddannelsen, har jeg 
            ofte brug for at forklare en eller anden sammenhæng i et eksempel. </p>
        <p>Nu synes jeg 
            det er på tide at gemme mine hårdt sammenskrabede erfaringer, så de kan 
            genbruges, både af mig selv, og af andre. Jeg har opsamlet forskellige kode-opskrifter, som måske en dag kan indgå i en kogebog. Indtil da findes de her... på cyberspace.</p>
        <p>Alle kilde filerne kan du se på github:<br>
        <a class="btn btn-large btn-success" 
                href="https://github.com/Rts-wix/ASP.NET-Snippets" target="_blank">Se koden</a></p>
        
		</div>
		<hr>
	    
      <div class="row-fluid marketing">
        <div class="span6">
          <h4>CRUD demonstration</h4>
          <p>Først og fremmest en simpel udgave. Snarest også et lidt mere sammensat eksempel</p>
          <p><a href="CRUD/" target="CRUD">Prøv selv,</a> eller se <a href="https://github.com/Rts-wix/ASP.NET-Snippets/tree/master/CRUD" target="_blank">sourcen på github</a></p>

          <h4>Hestesko</h4>
          <p>Tre tekstfelter og et id, Fire databasekommandoer.</p>
          <p><a href="CRUD/HesteSko.aspx" target="CRUD">Prøv selv,</a> eller se <a href="https://github.com/Rts-wix/ASP.NET-Snippets/tree/master/CRUD" target="_blank">sourcen på github</a></p>
                
        </div>

        <div class="span6">
          <h4>SqlBackdoor</h4>
          <p>En tekstbox hvor du kan indtaste hvilke som helst SQL kommandoer. 
          Et sikkerhedshul så stort som en ladeport. Men meget nyttigt...</p>
          <p><a href="sqlBackdoor/Default.aspx"	 target="SeasonImage">Prøv selv,</a> eller se <a href="https://github.com/Rts-wix/ASP.NET-Snippets/tree/master/sqlBackdoor" target="_blank">sourcen på github</a></p>

          <h4>SeasonImage</h4>
                <p>Fremvis et billede eller et andet, afhængigt af dags dato.</p>
                <p><a href="SeasonImage/Default.aspx" target="SeasonImage">Prøv selv,</a> eller se <a href="https://github.com/Rts-wix/ASP.NET-Snippets/tree/master/SeasonImage" target="_blank">sourcen på github</a></p>

        </div>
      </div>


</asp:Content>

