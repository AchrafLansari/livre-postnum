<?php


		//include db configuration file
		include_once("connexion.php");
		include_once("DTOabsence.php");
                
                
                
                
                
                
 
                    
				if($_POST)
				{
				/* VALUES */
				$date= date('Y-m-d H:i:s');
				$nom_absent=$_POST['nom_absent'];
				
				
                                ajout_absence($date, $nom_absent);
                                
				//mysql_query("INSERT INTO absence (date,nom_absent) VALUES ( '".$date."', '".$nom_absent."')");
				
                                
					
                                
                                } else { 
 
						header('HTTP/1.1 500 Looks like mysql error, could not insert record!');
						exit();
				}
                    
?>
