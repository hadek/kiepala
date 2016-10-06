<form action="index1.php?menup=2" method="POST">
<table>
<tr><td>
<p>Date: <input type="text" id="datepicker" size="30" name="Ddate"></p></td></tr>
 <tr><td>
 Veuillez saisir votre classe<p>
 <select name="IdClasse" class="inscriptionInput">

<option value="0">--------------</option>
<?php
    include("../connexion/Database.php");
            $bdd = new connexion() ;
            
            $res = $bdd-> selectTableau("SELECT * FROM Classe");
           
    		foreach($res as $cle => $valeur  )
			{
				
			echo "<option value='".$valeur['IdClasse']."'>".$valeur['NomClasse']."</option>";
			}
	?>
	</select><br>
</td></tr>
<tr><td>
Veuillez saisir le créneau horaire de la séance:<p>
	<input type="hidden"  name = "NomClasse" value="<?php echo $valeur['NomClasse']; ?>">


	<select type ="time" name="HeureD">Heure debut</p>
	<option value="08:00">08h00</option>
	<option value="08:55">08h55</option>
	<option value="10:05">10h05</option>
	<option value="11:00">11h00</option>
	<option value="11:55">11h55</option>
	<option value="13:10">13h10</option>
	<option value="14:05">14h05</option>
	<option value="15:00">15h00</option>
	<option value="16:05">16h05</option>
	<option value="17:00">17h00</option>
</select>

<select type ="time" name="HeureF">Heure fin</p>
	<option value="08:55">08h55</option>
	<option value="09:50">09h50</option>
	<option value="11:00">11h00</option>
	<option value="11:55">11h55</option>
	<option value="12:50">12h50</option>
	<option value="14:05">14h05</option>
	<option value="15:00">15h00</option>
	<option value="15:55">15h55</option>
	<option value="17:00">17h00</option>
	<option value="17:55">17h55</option>
</select>
</td></tr>
<tr><td>
<input type="submit" name="Envoyer" value="Envoyer">

 </form>
 </td></tr>
</table> 
