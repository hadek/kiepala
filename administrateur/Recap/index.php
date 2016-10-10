<!doctype html>
<html lang="fr">
<head>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<title>Kiepala - Gestion absence St-Jo</title>
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  	<link rel="stylesheet" href="/resources/demos/style.css">
	
	<link rel="stylesheet" href="../../css/Style_Home.css" > 
 
  	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  	
	<script src="datepicker-fr.js"></script>
</head>
<body>


<?php
	// CONTROLE DE SESSION
	session_start();
	if(!isset($_SESSION['ADMIN']))
	{
		header("location:../index.php");
		die();
	}
	
	$connectionFile = $_SERVER['DOCUMENT_ROOT'] . "connexion/Database.php";
	include($connectionFile);

	$db = new Connexion();


	if(!empty($_POST))
	{
		$jour1 = $_POST['date'];
	}else {
		$jour1 = date("Y-m-d");
	}

	if(!empty($_POST))
	{
		$jour2 = $_POST['date'];
	}else {
		$jour2 = date("Y-m-d");
	}


	echo '
	<form method="post">
		<input type="text" name="date" id="date" value="' . $jour1 . '" />
		<input type="text" name="date" id="date" value="' . $jour2 . '" />
		<input type="submit" value="Filtrer par date" id="submit" />
	</form>
	<br />';


	$where = array('DATE' => $jour);
	$resultats = $db->selectClauseG('SELECT * FROM V_Absence WHERE Ddate = :DATE ORDER BY IdClasse', $where);
	$reqClasses = $db->select('SELECT * FROM Classe');
	$classes = array();
	while($iClasses = $reqClasses->fetch())
	{
		$classes[$iClasses['IdClasse']] = $iClasses['NomClasse'];
	}

	echo '<table class="table-fill">
		<tr>
			<th>Nom</th>
			<th>Prenom</th>
			<th>Classe</th>
			<th>Heure début</th>
			<th>Heure Fin</th>
			<th>Status traitement</th>
		</tr>';
	while($l = $resultats->fetch())
	{
		echo '<tr><td>'. $l['Nom'] .'</td>
		<td>'. $l['Prenom'] .'</td>
		<td>'. $classes[$l['IdClasse']] .'</td>
		<td>'. $l['HeureD'] .'</td>
		<td>'. $l['HeureF'] .'</td>
		<td>'. $l['StatutTraitement'] .'</td></tr>'
		;
	}
	echo "</table>";
?>

<script>  
$( function() {
	var d = new Date();
	
	var $_POST = <?php echo json_encode($_POST); ?>;
	console.log($_POST["date"]);
	
	$("#date" ).datepicker( $.datepicker.regional[ "fr" ] );
	$("#date").datepicker("option", "dateFormat", "yy-mm-dd");
	if(typeof $_POST["date"] !== 'undefined')
	{
		$("#date").datepicker("setDate", $_POST["date"]);
	}else {
		$("#date").datepicker("setDate", d);
	}

});
</script>
	</body>

</html>
