<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>
		KIEPALA : gestion des absences dans votre établissement 
	</title>
	<!-- La feuille de styles "base.css" doit être appelée en premier. -->
	<link rel="stylesheet" type="text/css" href="../../css/base.css" media="all" />
	<link rel="stylesheet" type="text/css" href="../../css/modele04.css" media="screen" />
	<link rel="stylesheet" media="screen and (max-width: 1280px)" href="../../css/petite_resolution.css" /> <!-- Pour ceux qui ont une résolution inférieure à 1280px -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
   <script src="i18n/datepicker-fr.js"></script>
   <script >
   ( function( factory ) {
    if ( typeof define === "function" && define.amd ) {

		// AMD. Register as an anonymous module.
		define( [ "../widgets/datepicker" ], factory );
	} else {

		// Browser globals
		factory( jQuery.datepicker );
	}
}( function( datepicker ) {

datepicker.regional.fr = {
	closeText: "Fermer",
	prevText: "Précédent",
	nextText: "Suivant",
	currentText: "Aujourd'hui",
	monthNames: [ "janvier", "février", "mars", "avril", "mai", "juin",
		"juillet", "août", "septembre", "octobre", "novembre", "décembre" ],
	monthNamesShort: [ "janv.", "févr.", "mars", "avr.", "mai", "juin",
		"juil.", "août", "sept.", "oct.", "nov.", "déc." ],
	dayNames: [ "dimanche", "lundi", "mardi", "mercredi", "jeudi", "vendredi", "samedi" ],
	dayNamesShort: [ "dim.", "lun.", "mar.", "mer.", "jeu.", "ven.", "sam." ],
	dayNamesMin: [ "D","L","M","M","J","V","S" ],
	weekHeader: "Sem.",
	dateFormat: "yy-mm-dd",
	firstDay: 1,
	isRTL: false,
	showMonthAfterYear: false,
	yearSuffix: "" };
datepicker.setDefaults( datepicker.regional.fr );

return datepicker.regional.fr;

} ) );
   </script>
  <script>
  $( function() {
  	
    $( "#datepicker" ).datepicker();
    $( "#format" ).on( "change", function() {
      $( "#datepicker" ).datepicker( "option", "dateFormat", $( this ).val() );
    });
  } );
  </script>
</head>

<body>

<div id="global">

	<div id="entete">
    <?php
		    //include('../header.php');?>
	</div><!-- #entete -->

	<div id="navigation">
    <?php
		include('menu_prof.php');?>
	</div><!-- #navigation -->

	<div id="contenu">
    <?php
	    if(isset($_GET['menup'])){
		$menup = $_GET['menup'];
	}else{
		$menup = 0;
	}

	// CONTROLE POUR AFFICHER LE MENU CORRESPONDANT

	switch($menup){	// INCLUDE CORRESPONDANT A LA SECTION MENU SELECTIONNE
		
		case 1: include('AMSAbs/ModifierAbs0.php'); //CORRESPOND AU PREMIER LIEN DU MENU PROF
		break;

		case 2: include('AMSAbs/ModifierAbs1.php');//CORRESPOND AU DEUXIEME LIEN DU MENU PROF
		break;

		case 3: include('AMSAbs/ModifierAbs2.php');//CORRESPOND AU TROISIEME LIEN DU MENU PROF
		break;

		case 4: include('SaisirAbs/SaisirAbs0.php'); //CORRESPOND AU QUATRIEME LIEN DU MENU PROF
		break;
	}
?>
	</div><!-- #contenu -->
<?php  //include('../footer.php');?>
	<p id="copyright">
		Kiepala &copy; 2016
		<a href="#">BTS SIO</a> et
		<a href="#">Equipe</a>
	</p>






</div><!-- #global -->

</body>
</html>



	
