 <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">
    <head>
        <meta charset="utf-8" />
        <title>Kiepala - Gestion absence St-Jo</title>
   		<meta http-equiv="content-type" content="text/html;charset=utf-8" />
		 <link href="http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic|Open+Sans:400,300,600,700" rel="stylesheet" type="text/css" />
		<meta http-equiv="Content-Style-Type" content="text/css" />
		<link rel="stylesheet" href="css/Style_Home.css" />
        <link rel="stylesheet" media="screen and (max-width: 1280px)" href="css/petite_resolution.css" /> <!-- Pour ceux qui ont une résolution inférieure à 1280px -->
        <link rel="icon" type="image/png" href="images/Favicon.png" />
</head>

<body>
<div id="page">
		<?php echo (isset($_GET['mes']) && $_GET['mes']=='mdp')?'<font color="red">identifiant ou mot de passe non valide</font><br>':'';?> 

    
       <center> <img src="images/logossite.png" width="50%" height="129" alt=""/> </center>
       <center> <img src="images/logo.png" width="40%" height="193" alt=""/> </center>
<div id="index_prof">
          
     
    <center> <h1>Professeur</h1> </center>
           
           
            <p class="p_Form_index">
            
                <form method="POST" action="controle.php">
                    <label for="login">Login :</label> 
            <input type="text" name="login" id="login"  />
          <br />  
            <label for="pass">Mot de passe :</label> 
            <input type="password" name="pass" id="pass" /> 
            <br />  <br />
           
            <input type="hidden" name="type" value="prof">
             <input type="submit" name="submit" value="Valider" />
                </form>
            </p>
        </div>

      <div id="index_admin">
        
        <form action="controle.php" method="POST">
               <center> <h1>Vie Scolaire</h1> </center>
       
            <p class="p_Form_index">
            
               
                
                <label for="login">Login :</label> 
                <input type="text" name="login" id="login"  />
            <br />    
                <label for="pass">Mot de passe :</label> 
            	<input type="password" name="pass" id="pass" /> 
            <br /><br />
            	
           		<input type="hidden" name="type" value="admin">
                <input type="submit" name="submit" value="Valider" />
                </form>
            </p>
            
            
        </div>
        
        </div>
    </body>
</html>
