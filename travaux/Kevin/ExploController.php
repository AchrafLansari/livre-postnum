<?php

class ExploController extends Zend_Controller_Action
{

    public function indexAction()
    {
        // action body
    }
    
    public function ecologyAction(){
    	
    }

    public function sauvesvgAction()
    {
    		$dbDoc = new Model_DbTable_Flux_Doc();
    		$idDoc = $dbDoc->ajouter(array("titre"=>$this->_getParam('titre', "mon svg")
    			,"url"=>$this->_getParam('url')
    			,"data"=>$this->_getParam('svg')),false);
        $this->view->idDoc = $idDoc;
    }
    
    
}

