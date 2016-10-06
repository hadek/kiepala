
<table border=6 cellspacing=12 cellpadding=20>
Saisir les absents de la classe: <?php print_r($_POST['IdClasse'][1]);?> <br>
<tr> <th>Nom élève</th><th>Prénom élève</th><th>Justifier</th><th>Absence</th><th>Retard</th></tr>		
<?php
include("../../connexion/Database.php");
$bdd = new connexion() ;
$req = "SELECT * FROM Eleve WHERE IdClasse =".$_POST['IdClasse'][0];
$res = $bdd->selectTableau($req);
//print_r($res);
foreach($res as  $cle => $valeur)
{
	echo '<tr> <td>'.$valeur['Nom'].'</td><td>'.$valeur['Prenom'].'</td><td></td><td><input type="checkbox" name="abs[]" > </td><td><input type="checkbox" name="ret[]" > </td></tr>';    
}
?>

</table>
	<br />