<!doctype html>
<html lang="fr">
<head>
<meta charset='utf-8'>

    <title>Datepair.js &ndash; Demos and Documentation</title>
    <meta name="description" content="A javascript plugin for intelligently selecting date and time ranges inspired by Google Calendar." />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

    <script src="https://jonthornton.github.io/jquery-timepicker/jquery.timepicker.js"></script>
    <link rel="stylesheet" type="text/css" href="https://jonthornton.github.io/jquery-timepicker/jquery.timepicker.css" />

    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.standalone.css" />

    

    
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/ui-lightness/jquery-ui.css" type="text/css" media="all" />

    <script src="lib/moment.min.js"></script>
    <script src="lib/site.js"></script>
    <link rel="stylesheet" type="text/css" href="lib/site.css" />

    <script src="dist/datepair.js"></script>
    <script src="dist/jquery.datepair.js"></script>
</head>
<form >

<p id="basicExample">
  Choisir date:  <input type="text" class="date start" />
  votre séance est de   <input type="text" class="time start" /> à
    <input type="text" class="time end" />
   
</p>
 <select name="IdClasse" class="inscriptionInput">Veuillez saisir votre classe<br />
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
</select><br>
<input type="submit" name="Envoyer">
    </form>
   <script>
    // initialize input widgets first
    $('#basicExample .time').timepicker({
        'showDuration': true,
        'timeFormat': 'A g:i'
    });

    $('#basicExample .date').datepicker({
        'format': 'm/d/yyyy',
        'autoclose': true
    });

    // initialize datepair
    var basicExampleEl = document.getElementById('basicExample');
    var datepair = new Datepair(basicExampleEl);
</script>
</body>
</html>
