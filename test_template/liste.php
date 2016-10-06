  <?php
  	 //1
  	 include "librairies/template.inc";
  	 include  "../connexion/Database.php";
  	 //2
  	 $bdd = new Connexion();
  	 $sql = 'SELECT * FROM Eleve'; 
  	 $resultas = $bdd->select($sql) ;
  	 
  	 //3
  	 $tpl = new template("gabarits");
  	 $tpl->set_file("gliste","liste.html");
  	 
  	 //4
  	 $tpl->set_block('gliste','liste_eleves','liste_bloc');
  	 
  	 //5
  	 foreach($resultas as $ligne ){ 
  	 $tpl->set_var("id", $ligne['IdEleve']);
  	 $tpl->set_var("nom", $ligne['Nom']);
  	 $tpl->set_var("tel", $ligne['NumTelPerso']);
  	 $tpl->set_var("adresse", $ligne['Adresse']);
  	     
  	 //7
  	 $tpl->parse('liste_bloc','liste_eleves',true);
  	 }
  	  
  	 //8
  	 $resultats=NULL; 
  	 
  	 //9
  	 $tpl->pparse("affichage","gliste");
  	 ?> 