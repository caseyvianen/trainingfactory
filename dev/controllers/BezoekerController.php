<?php
namespace dev\controllers;

use framework\controllers\AbstractController;

class BezoekerController extends AbstractController
{
    public function __construct($control, $action, $message = NULL) {
        parent::__construct($control, $action, $message);
    }

    protected function defaultAction() {
    }

    protected function inloggenAction() {
        if(!$this->model->isPostLeeg()) {
            switch ($this->model->controleerInloggen()) {
                case REQUEST_SUCCESS:
                    $this->view->set("msg", "Welkom " . $_SESSION['gebruiker']->getName());
                    $recht = $this->model->getGebruiker()->getRole();
                    $this->forward("default", $recht);
                    break;
                case REQUEST_FAILURE_DATA_INVALID:
                    $this->view->set("msg", "Gegevens kloppen niet. Probeer opnieuw.");
                    break;
                case REQUEST_FAILURE_DATA_INCOMPLETE:
                    $this->view->set("msg", "Niet alle gegevens ingevuld");
                    break;
            }
        }
    }

    protected function contactAction() {
    }
    
    protected function aanbodAction() {
        $soortTrainingen=$this->model->getSoortTrainingen();
        $this->view->set("soortTrainingen",$soortTrainingen);
    }
    
    protected function gedragsregelsAction() {
    }
       
    protected function registrerenAction() {
        if($this->model->isPostLeeg()) {
            $this->view->set("msg", "Vul uw gegevens in");
        } else {
            $result = $this->model->registreren();
            switch($result) {
                case REQUEST_SUCCESS:
                     $this->view->set("msg", "U bent successvol geregistreerd!");                     
                     $this->forward("default");
                     break;
                case REQUEST_FAILURE_DATA_INVALID:
                     $this->view->set('form_data',$_POST);
                     $this->view->set("msg", "emailadres niet correct of gebruikersnaam bestaat al"); 
                     break;
                case REQUEST_FAILURE_DATA_INCOMPLETE:
                     $this->view->set('form_data',$_POST);
                     $this->view->set("msg", "Niet alle gegevens ingevuld");
                     break;
            }
        }    
    }
 }