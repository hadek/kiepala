<?php session_start();

	if(isset($_POST)){ /* Vérification de l'envoie*/
  
		$login = $_POST['login'];
		$pass = $_POST['pass'];
		
		require('connexion/Database.php');
		
		switch($_POST['type']){
				
			case "prof" :
				/* Vérification de la qualification du compte */
				$PDO = new connexion();
				$req="SELECT IdProf,NomProf,PrenomProf,COUNT(*) as verif FROM Professeur WHERE identifiant = :identifiant AND mdp = :mdp";
				$tableau=array('identifiant'=>$login,
								'mdp' =>$pass 	
									);
									//print_r($tableau);
				$verif = $PDO->selectClause($req,$tableau);
			    //print_r($verif); die();
    			if ($verif[0]['verif']==1){
    				
        			$_SESSION['prof'] = true;
        			$_SESSION['IdProf'] = $verif['IdProf'];
        			$_SESSION['NomProf'] = $verif['NomProf'];
        			$_SESSION['PrenomProf'] = $verif['PrenomProf'];
					echo "<script>document.location.href='professeur/index1.php';</script>";
				}

    			else { header('location: index.php?mes=mdp');}
			
			break;
			case "admin" :
				$PDO = new connexion();
				$req="SELECT COUNT(*) as verif  FROM Admin WHERE identifiant = :identifiant AND mdp = :mdp";
				$tableau=array('identifiant'=>$login,
								'mdp' =>$pass 	
									);
									
				$verif = $PDO->selectClause($req,$tableau);
			

    			if ($verif['verif']==1){
    				
        			$_SESSION['admin'] = true;
					echo "<script>document.location.href='administrateur/';</script>";
				}

    			else { header('location: index.php?mes=mdp');}
			break;
			default :
				echo "<script>document.location.href='index.php';</script>";
			}
	}else{
		header('location: index.php');
	}
?>
