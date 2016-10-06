<?php
	/*include('../connexion/database.php');

	session_start();
	if(!isset($_SESSION['ADMIN']))
	{
		header("location:../index.php");
		die();
	}*/

	//include('../header.php');
	include('./menu_admin.php');
	//include('../footer.php');

	// RECUPERATION DE LA VARIABLE GET ENVOYER PAR LE MENU SINON VAUT 0.
	if(isset($_GET['menua'])){
		$menua = $_GET['menua'];
	}else{
		$menua = 0;
	}

	// CONTROLE POUR AFFICHER LE MENU CORRESPONDANT

	switch($menua){	// INCLUDE CORRESPONDANT A LA SECTION MENU SELECTIONNE
		
		case 1: include('./AccesAbs/index.php'); //CORRESPOND AU PREMIER LIEN DU MENU ADMIN
		break;

		case 2: //include(''); //CORRESPOND AU DEUXIEME LIEN DU MENU ADMIN
		break;

		case 3: //include(''); //CORRESPOND AU TROISIEME LIEN DU MENU ADMIN
		break;
		
		case 4: //include(''); //CORRESPOND AU QUATRIEME LIEN DU MENU ADMIN
		break;

	}
?>