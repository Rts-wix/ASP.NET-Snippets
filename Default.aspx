<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html>
<html lang="da"><head>
    <meta charset="UTF-8">
    <title>Hjem - Asp.Net Snippets</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Le styles -->
    <link rel="stylesheet" type="text/css" href="bootstrap/docs/assets/css/bootstrap.css">
    <style type="text/css">
      body {
        padding-top: 20px;
        padding-bottom: 40px;
      }

      /* Custom container */
      .container-narrow {
        margin: 0 auto;
        max-width: 700px;
      }
      .container-narrow > hr {
        margin: 30px 0;
      }

      /* Main marketing message and sign up button */
      .jumbotron {
        margin: 60px 0;
        text-align: center;
      }
      .jumbotron h1 {
        font-size: 72px;
        line-height: 1;
      }
      .jumbotron .btn {
        font-size: 21px;
        padding: 14px 24px;
      }

      /* Supporting marketing content */
      .marketing {
        margin: 60px 0;
      }
      .marketing p + h4 {
        margin-top: 28px;
      }
    </style>
    <link rel="stylesheet" type="text/css" href="bootstrap/docs/assets/css/bootstrap-responsive.css">
    
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <!-- Det laver jeg senere ...
      <link rel="apple-touch-icon-precomposed" sizes="144x144" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-144-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="114x114" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-114-precomposed.png">
      <link rel="apple-touch-icon-precomposed" sizes="72x72" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-72-precomposed.png">
      <link rel="apple-touch-icon-precomposed" href="http://twitter.github.com/bootstrap/assets/ico/apple-touch-icon-57-precomposed.png">
      <link rel="shortcut icon" href="http://twitter.github.com/bootstrap/assets/ico/favicon.png">
    -->  
    
  <!-- <script type="text/javascript" src="./Template · Bootstrap_files/youtubemp3.js"></script> -->
  </head>

  <body cz-shortcut-listen="true">

    <div class="container-narrow">

      <div class="masthead">
        <ul class="nav nav-pills pull-right">
          <li class="active"><a href="Default.aspx">Hjem</a></li>
          <li><a href="Kontakt.aspx">Kontakt</a></li>
        </ul>
        <h3 class="muted">ASP.NET Snippets</h3>
      </div>

      <hr>
<div class="jumbotron"> 
        
        <h1>Super fede og nyttige eksempler i ASP.NET!</h1>
        <p class="lead">Når jeg underviser og vejleder på WebIntegrator uddannelsen, har jeg 
            ofte brug for at forklare ne eller anden sammenhæng i et eksempel. Nu synes jeg 
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

      <hr>

      <div class="footer">
        <p>© Søren Magnusson 2012</p>
      </div>

    </div> <!-- /container -->

    <!-- Le javascript ....
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <script type="text/javascript" src="./bootstrap/docs/js/widgets.js"></script>
    <script src="./bootstrap/docs/js/jquery.js"></script>
    <script src="./bootstrap/docs/js/bootstrap-transition.js"></script>
    <script src="./bootstrap/docs/js/bootstrap-alert.js"></script>
    <script src="./bootstrap/docs/js/bootstrap-modal.js"></script>
    <script src="./bootstrap/docs/js/bootstrap-dropdown.js"></script>
    <script src="./bootstrap/docs/js/bootstrap-scrollspy.js"></script>
    <script src="./bootstrap/docs/js/bootstrap-tab.js"></script>
    <script src="./bootstrap/docs/js/bootstrap-tooltip.js"></script>
    <script src="./bootstrap/docs/js/bootstrap-popover.js"></script>
    <script src="./bootstrap/docs/js/bootstrap-button.js"></script>
    <script src="./bootstrap/docs/js/bootstrap-collapse.js"></script>
    <script src="./bootstrap/docs/js/bootstrap-carousel.js"></script>
    <script src="./bootstrap/docs/js/bootstrap-typeahead.js"></script>
    <script src="./bootstrap/docs/js/bootstrap-affix.js"></script>
  
	
	<script src="./bootstrap/docs/js/application.js"></script>

    </body></html>
    