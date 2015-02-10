<?php 


//include_once 'DTOabsence.php';
//on verifie si on ad�ja enregistr� les infos de l'agenda pour le jour active;
//if(!exist_date()){
	 
	$feedURL = "https://www.google.com/calendar/feeds/achraflansari%40gmail.com/public/basic"; 
	if($sxml = simplexml_load_file($feedURL)){ 
		$count = 1;  
		$donnees=array();

		//get le programme de la journ&eacute;e
		foreach($sxml->entry as $entry) 
		{ 
			///date de l'evenement
			$date=$entry->summary;
                        
                        
			///titre de l'evenement
			$title = stripslashes($entry->title); 
                        
                       
                        
			///extraire titre seul
			$titre=explode("(",$title);
			$titre=$titre[0];
                        
                         
			//extraire date;
			$date=explode("au",$date);
                        $date2=explode("Date :",$date[0]);
                        
                        echo $date2[1].'<br>';
                        echo $titre.'<br>';
                        
                        $config	= json_decode(file_get_contents('flare.json'), true);
                        
                        $config['name']=$titre;
                        
                        file_put_contents('flare.json', json_encode($config));
                        
			$fin=explode("CET",$date[1]);
			$debut=$date2[1];$debut=explode(".",$date2[1]);$debut=implode("",$debut);
			//on separe les atribut de late en chaine de caract&eacute;re extrait from agenda;
			$pieces = explode(" ", $debut);
			//on cree la date from chaine;
			$date_a = date("Y-m-d",strtotime($pieces[4]." ".$pieces[2]." ".$pieces[3]));
			// on cree time from chaine
			$time_a = date("H i s", strtotime($pieces[5]));
			//on cree time pour comparaison
			$matin=date("H i s", mktime(13,20,00,0,0,0));
			($time_a<$matin)?$quand ="matin":$quand ="apres-midi";
                      
                        
                        echo '<br>';
                        break;
			$count++; 
		} 
	//}
}
//on enl&eacute;ve les parenthese pour avoir l'abrev de l'intervenant
function parenthese ($text) 
{	 preg_match('#\((.*?)\)#', $text, $match); 
	 if(!empty($match[1])){
		return $match[1]; 
	 }else return false;
}

//on enregistre les donn�es de l'agenda
function store_in_base($donnees){
	if(store_matiere_calendar($donnees)) return true;
	else return false;
}
?> 