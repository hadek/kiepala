<form action="index1.php?menup=3" method="POST">
<table>
Saisir les absents de la classe: <?php print_r($_POST['IdClasse']);?> <br>
<tr> <th>Nom élève</th><th>Prénom élève</th><th>Justifier</th><th>Absence</th><th>Retard</th></tr>		
<?php
include("../connexion/Database.php");
$bdd = new connexion() ;
$req = "SELECT * FROM Eleve WHERE IdClasse =".$_POST['IdClasse'][0];
$res = $bdd->selectTableau($req);
//print_r($res);
$i=0;
foreach($res as $valeur)
{
	$val = (int)$valeur['IdEleve'];
	echo '<tr> <td>'.$valeur['Nom'].'</td>
	<td>'.$valeur['Prenom'].'</td><td></td>
	<td><input type="radio" name="'.$i.'" value="a.'.$valeur['IdEleve'].'"> </td>
	<td><input type="radio" name="'.$i.'" value="r.'.$valeur['IdEleve'].'"> </td></tr>'; $i++;   
}
?>
</table>
<input type="hidden"  name="HeureD" value="<?php echo $_POST['HeureD'];?>">
<input type="hidden"  name="HeureF" value="<?php echo $_POST['HeureF'];?>">
<input type="hidden"  name="Ddate" value="<?php echo $_POST['Ddate'];?>">
<input type="hidden"  name="i" value="<?php echo $i;?>">

<input type="submit"  name="envoyer" value="Envoyer">
</form>

 
	<br />