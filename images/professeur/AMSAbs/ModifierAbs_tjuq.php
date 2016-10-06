<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Format date</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
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
<form action="ModifierAbs1.php" method="POST">


<p>Date: <input type="text" id="datepicker" size="30" name="date"></p>
 <select name="IdClasse[]" class="inscriptionInput">Veuillez saisir votre classe<br />
<option value="0">--------------</option>
<?php
    include("../../connexion/Database.php");
            $bdd = new connexion() ;
            
            $res = $bdd-> selectTableau("SELECT * FROM Classe");
           
    		foreach($res as $cle => $valeur  )
			{
				
			echo "<option value='".$valeur['IdClasse']."'>".$valeur['NomClasse']."</option>";
			}
	?>
	<input type="hidden"  name = "IdClasse[] " value="<?php echo $valeur['NomClasse']; ?>">
</select><br>

<input type="submit" name="Envoyer" value="Envoyer">

 
 
</body>
</html>