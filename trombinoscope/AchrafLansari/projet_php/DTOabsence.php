<?php
error_reporting(E_ALL ^ E_NOTICE);
function ajout_absence($date,$nom_absent){
	try {
		$db=connect();

		
		$resultat= $db->prepare("INSERT INTO absence (date,nom_absent) VALUES (?,?)");
		$resultat->bindValue(1, $date, PDO::PARAM_INT);    
		$resultat->bindValue(2, $nom_absent, PDO::PARAM_STR);    
		$resultat->execute();
		return true;
	} 
	catch (PDOException $exc) 
	{
		echo $exc->getMessage();
		return false;
	}  
}

function envoi_email(){
    
       
                $headers= "From: achraflansari@gmail.com \r\n";
                $headers.= "Content-Type: text/html; charset=\"UTF-8\"\r\n";
                $message = "blabla";
                
                if(mail("achraflansari@gmail.com", "Web message from: Trombinoscope(Gestion d'absence)", "Email from Trombinoscope (Rappel Absence)  \n\n{$message}",$headers)){ 
                   //echo '<script> window.location.reload(true); </script>';
                    echo 'email envoyer';
                }

                
                die ('Thank you for your support, the email has been sent and you will recieve a reply shortly.');
                
                     
    
}
function  envoi_email2(){
    
$mail = 'achraflansari@gmail.com'; // Déclaration de l'adresse de destination.
if (!preg_match("#^[a-z0-9._-]+@(hotmail|live|msn).[a-z]{2,4}$#", $mail)) // On filtre les serveurs qui rencontrent des bogues.
{
	$passage_ligne = "\r\n";
}
else
{
	$passage_ligne = "\n";
}
//=====Déclaration des messages au format texte et au format HTML.
$message_txt = "Salut à tous, voici un e-mail envoyé par un script PHP.";
$message_html = "<html><head></head><body><b>Salut à tous</b>, voici un e-mail envoyé par un <i>script PHP</i>.</body></html>";
//==========
 
//=====Création de la boundary
$boundary = "-----=".md5(rand());
//==========
 
//=====Définition du sujet.
$sujet = "Hey mon ami !";
//=========
 
//=====Création du header de l'e-mail.
$header = "From: \"WeaponsB\"<weaponsb@mail.fr>".$passage_ligne;
$header.= "Reply-to: \"WeaponsB\" <weaponsb@mail.fr>".$passage_ligne;
$header.= "MIME-Version: 1.0".$passage_ligne;
$header.= "Content-Type: multipart/alternative;".$passage_ligne." boundary=\"$boundary\"".$passage_ligne;
//==========
 
//=====Création du message.
$message = $passage_ligne."--".$boundary.$passage_ligne;
//=====Ajout du message au format texte.
$message.= "Content-Type: text/plain; charset=\"ISO-8859-1\"".$passage_ligne;
$message.= "Content-Transfer-Encoding: 8bit".$passage_ligne;
$message.= $passage_ligne.$message_txt.$passage_ligne;
//==========
$message.= $passage_ligne."--".$boundary.$passage_ligne;
//=====Ajout du message au format HTML
$message.= "Content-Type: text/html; charset=\"ISO-8859-1\"".$passage_ligne;
$message.= "Content-Transfer-Encoding: 8bit".$passage_ligne;
$message.= $passage_ligne.$message_html.$passage_ligne;
//==========
$message.= $passage_ligne."--".$boundary."--".$passage_ligne;
$message.= $passage_ligne."--".$boundary."--".$passage_ligne;
//==========
 
//=====Envoi de l'e-mail.
mail($mail,$sujet,$message,$header);
//==========

}
envoi_email2();
?>
