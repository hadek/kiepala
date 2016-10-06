<form action="index1.php?menup=3" method="POST">
<table>
Saisir les absents de la classe: <?php print_r($_POST['IdClasse'][1]);?> <br>
<tr> <th>Nom élève</th><th>Prénom élève</th><th>Justifier</th><th>Absence</th><th>Retard</th></tr>		
<?php
include("../connexion/Database.php");
$bdd = new connexion() ;
$req = "SELECT * FROM Eleve WHERE IdClasse =".$_POST['IdClasse'][0];
$res = $bdd->selectTableau($req);

foreach($res as  $cle => $valeur)
{
	$val = (int)$valeur[0];
	echo '<tr> <td>'.$valeur['Nom'].'</td><td>'.$valeur['Prenom'].'</td><td></td><td><input type="checkbox" name="abs[]" value="'.$valeur[0].'"> </td><td><input type="checkbox" name="ret[]" value="'.$valeur[0].'"> </td></tr>';    
}
?>
<input type="hidden"  name="HeureD" value="<?php echo $_POST['HeureD'];?>">
<input type="hidden"  name="HeureF" value="<?php echo $_POST['HeureF'];?>">
<input type="hidden"  name="Ddate" value="<?php echo $_POST['Ddate'];?>">
<input type="submit"  name="envoyer" value="Envoyer">
</form>
</table>
	<br />