<?php

/**
 * Ce fichier contient la classe Form_Absence_Supprimer.
 *
 * @copyright  2008 Gabriel Malkas
 * @license    "New" BSD License
*/

/**
 * Supprimer une entrée Absence.
 *
 * @copyright  2008 Gabriel Malkas
 * @license    "New" BSD License
 */
class Form_Presence_Supprimer
{
           
    public function init()
    {
        
        $id = new Zend_Form_Element_Text('id_pres');
        $id->setRequired(true)
            ->addValidators(array(new Zend_Validate_Int(), new Zend_Validate_StringLength()));
        
        $date = new Zend_Form_Element_('date_pres');
        $date->setRequired(true)
            ->addValidators(array());
        
        $nom_pres = new Zend_Form_Element_Text('nom_pres');
        $nom_pres->setRequired(true)
            ->addValidators(array(new Zend_Validate_Alnum(true), new Zend_Validate_StringLength(550)));
        
        
        
        $this->addElements(array($id, $date, $nom_absent, ));             
   
    }
            
}