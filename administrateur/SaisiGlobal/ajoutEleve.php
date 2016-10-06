<html>
    <head>

        <meta charset="utf-8" />
		<link rel="stylesheet" href="theme/default/style.css" />

    </head>
    
    <body>


				<form method="POST" action="">
                    <input class="pseudo" id="username" value="identifiant"  name="pseudo"/><br />
                    <input type="password" class="mdp" id="password" value="Mot de passe" name="mdp" /><br />
                    <input class="Nom" id="Nom" value="Nom" name="Nom" /><br />
                    <input class="prenom" id="prenom" value="prenom" name="prenom" /><br />
                     <input class="dateNaiss" id="Datenaissance" value="dateNaissance" name="Date de Naissance" /><br />
                      <input class="adresse" id="adresse" value="adresse" name="adresse" /><br />
                       <input class="numTelPerso" id="numTelPerso" value="Num telephone perso" name="numtelPerso" /><br />
                        <input class="mail" id="mail" value="mail" name="mail" /><br />
                         <input class="lienphoto" id="lienPhoto" value="Lienphoto" name="lienPhoto" /><br />
                         <label class='inscriptionLabel' for="idVille">id Ville : 
		<select name="Ville" class="inscriptionInput"><br />
		<option value="0">--------------</option>
	<?php
    include("../../connexion/Database.php");
            $bdd = new connexion() ;
            
            $res = $bdd-> selectTableau("SELECT * FROM Ville");
            //var_dump($res);
			foreach($res as $cle => $valeur  )
			{
				
			echo "<option value='".$valeur['id']."'>".$valeur['NomVille']."</option>";
			}
	?>

</select>
	<br />
	<select name="Classe" class="inscriptionInput"><br />
		<option value="0">--------------</option>
	<?php
		
            $res1 = $bdd-> selectTableau("SELECT * FROM Eleve");
            //var_dump($res);
    		foreach($res1 as $cle => $valeur  )
			{
				
			echo "<option value='".$valeur['id']."'>".$valeur['Nom']."</option>";
			}
            $res= NULL;
	?>
	</select> <br /><br />
                    <input type="submit" value="ValiderProf" id="bt_loginProf" />

                </form>
                
    </body>
</html>

