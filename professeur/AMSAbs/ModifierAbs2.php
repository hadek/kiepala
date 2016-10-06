<?php
session_start();
//print_r($_POST);
$abs=$_POST['abs'];
$ret=$_POST['ret'];
if($abs==NULL AND $ret == NULL){
    echo "vous n'avez pas saisi les élèves absents ou en retard";
}else{
    //connexion
    $Ddate=htmlspecialchars($_POST['Ddate']);
    //var_dump($abs, $expression = null);
    $HeureF =htmlspecialchars($_POST['HeureF']);
    $HeureD =htmlspecialchars($_POST['HeureD']);
    $IdProf = $_SESSION['IdProf'];
    //récup id date 
    require('../connexion/Database.php');
    $PDO = new connexion();
    $req="SELECT IdDate  FROM `DateSaisi`  WHERE Ddate=:Ddate";
    $tableau=array('Ddate'=>$Ddate);
	$result = $PDO->selectClause($req,$tableau);
	//print_r($verif); die();
    //print_r($result);
    $IdDate=$result['IdDate'];
    //Absence
    if($abs){
        foreach($abs as $valeur){      
            $valeur= htmlspecialchars($valeur);
            $req1 = "INSERT INTO `Absence`(
            `HeureD` ,
            `StatutTraitement` ,
            `HeureF` ,
            `IdProf` ,
            `IdEleve` ,
            `IdDate` 
            )
            VALUES ('$HeureD','A','$HeureF','$IdProf','$valeur','$IdDate')";
            $PDO->exec($req1);
        }
    }
    //retard
    if($ret){
        foreach($ret as $valeur){      
        $valeur= htmlspecialchars($valeur);
        $req1 = "INSERT INTO `Absence`(
        `HeureD` ,
        `StatutTraitement` ,
        `HeureF` ,
        `IdProf` ,
        `IdEleve` ,
        `IdDate` 
        )
        VALUES ('$HeureD','R','$HeureF','$IdProf','$valeur','$IdDate')";
        $PDO->exec($req1);
        }
    }
echo "Merci, les absences sont bien enregistrés ";
}
/*
//insertio

$req1 = "INSERT INTO `Absence` (
`HeureD` ,
`StatutTraitement` ,
`HeureF` ,
`IdProf` ,
`IdEleve` ,
`IdDate` 

)
VALUES (
 HeureD= :HeureD, StatutTraitement= :StatutTraitement, HeureF= :HeureF,IdProf= :IdProf,IdEleve= :IdEleve,IdDate= :IdDate)";

 foreach($abs as $valeur){ 
$tableau1=array('HeureD'=>$HeureD,
					 'StatutTraitement'=>'A',
					 'HeureF'=>$HeureF,
					 'IdProf'=>$IdProf,
					 'IdEleve'=>$valeur,
					 'IdDate'=>$IdDate);
 
 echo $PDO->insertion($req1,$tableau1);
 
 }
 */
 ?>

