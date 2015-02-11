<?php

use Postnum\EpubPostNum;
include_once '/../../library/EpubPostNum.php';

class EpubController extends Zend_Controller_Action
{
	var $idBase = "flux_livrenum";
	
    public function indexAction()
    {

		 		
    }
    
    public function buildAction(){
    	$filePathFesRecto	=	"../public/svg/recto.svg";
    	$filePathFesVerso	=	"../public/svg/verso.svg";
    	$listFilesFromFes	=	array(
    								$filePathFesRecto,
    								$filePathFesVerso
						    	);
    	
    	$livrePostNum	=	new  EpubPostNum("Le livre postnumérique", "Récit interactif");
    	$livrePostNum->addChapter("Pliage", $listFilesFromFes);
    	$livrePostNum->saveEbook();
    }
}

