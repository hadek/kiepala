<?php //require_once('conn.php');
		$action = 'ajouter';
		$table = "fichier";
		$fichier = $_FILES['fichier']['tmp_name'];
		//
		//print $fichier;
		//$production = $_POST['production'];
		//$creertable = $_POST['creertable'];
		 switch($action)
		 {
		  /* LECTURE ET AJOUT DES DONNEES DANS LA TABLE */
		   case "ajouter":

		 
		 /* On ouvre le fichier à importer en lecture seulement */
		 if (file_exists($fichier))
			 $fp = fopen("$fichier", "r"); 
		 else
			 { /* le fichier n'existe pas */
			   echo "Fichier introuvable !<br>Importation stoppée.";
			   exit();
			 }
			  
			/* On saute une ligne d'en-tétes */ 
			$i=6;
			while ((!feof($fp)) && ($i<12))
			{
			  $i++;
			  $ligne = fgets($fp,4096); /* On lit une ligne */ 
			}
			$i=0;
			while (!feof($fp)) /* Et Hop on importe */
			{ /* Tant qu'on n'atteint pas la fin du fichier */ 
				$i++;
				if($i!=8)
				{
				   $ligne = fgets($fp,4096); /* On lit une ligne */  

				   /* On récupère les champs séparés par ; dans liste*/
				   $liste = explode( ";",$ligne);  
				
											
		
				  
					
				}
				else
				{	
					//print "sinon";
					feof($fp);
					$ligne = fgets($fp,4096); /* On lit une ligne */  
					feof($fp);
					$ligne = fgets($fp,4096); /* On lit une ligne */  
					$i=0;print_r($ligne, $return = null);
				}
			 } 
			 
			 //echo "<br>Importation terminée, avec succès."; 
			   
			 /* Fermeture */ 
			 fclose($fp); 
			 
			 
			
		   break;
		   
		 
		   /* FORMULAIRE DE CHOIX D'IMPORTATION */  
		   
		   default: 
		   }
		   ?> 
