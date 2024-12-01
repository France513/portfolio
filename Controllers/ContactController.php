<?php

namespace App\Controllers;

use App\Core\Validator;

class ContactController extends Controller
{

    //Méthode qui permet d'afficher la page de contact
    public function index()
    {
        $this->render('contact/index');
    }
}