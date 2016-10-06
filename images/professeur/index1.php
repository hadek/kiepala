<?php
	include('../connexion/database.php');

	/*session_start();
	if(!isset($_SESSION['PROF']))
	{
		header("location:../index.php");
		die();
	}*/

	include('../header.php');
	include('./menu_prof.php');
	include('../footer.php');

	// RECUPERATION DE LA VARIABLE GET ENVOYER PAR LE MENU SINON VAUT 0.
	
	if(isset($_GET['menup'])){
		$menup = $_GET['menup'];
	}else{
		$menup = 0;
	}

	// CONTROLE POUR AFFICHER LE MENU CORRESPONDANT

	switch($menup){	// INCLUDE CORRESPONDANT A LA SECTION MENU SELECTIONNE
		
		case 1: //include(''); //CORRESPOND AU PREMIER LIEN DU MENU PROF
		break;

		case 2: //include(''); //CORRESPOND AU DEUXIEME LIEN DU MENU PROF
		break;

		case 3: //include(''); //CORRESPOND AU TROISIEME LIEN DU MENU PROF
		break;

		case 4: //include(''); //CORRESPOND AU QUATRIEME LIEN DU MENU PROF
		break;
	}
?>