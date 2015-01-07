<?php

/**
 * Ce fichier contient la classe Form_Absence_Ajouter.
 *
 * @copyright  2008 Gabriel Malkas
 * @license    "New" BSD License
*/

/**
 * Ajouter une entrée Absence.
 *
 * @copyright  2008 Gabriel Malkas
 * @license    "New" BSD License
 */
class Form_Presence_Ajouter
{
           
    public function init()
    {
        
        $id = new Zend_Form_Element_Text('id_presence');
        $id->setRequired(true)
            ->addValidators(array(new Zend_Validate_Int(), new Zend_Validate_StringLength()));
        
        $date = new Zend_Form_Element_('date_presence');
        $date->setRequired(true)
            ->addValidators(array());
        
        $nom_present = new Zend_Form_Element_Text('nom_presence');
        $nom_present->setRequired(true)
            ->addValidators(array(new Zend_Validate_Alnum(true), new Zend_Validate_StringLength(550)));
        
        
        
        $this->addElements(array($id, $nom_present, $date));             
   
    }
            
}