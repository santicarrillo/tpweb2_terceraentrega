<?php
    require_once 'app/model/config.php';
    require_once 'libs/Router.php';

    require_once 'app/controller/escuderias-api.controller.php';

    $router = new Router();

    
    //se define la tabla de ruteo
    #                 endpoint   verbo     controller           método
    $router->addRoute('escuderias', 'GET', 'EscuderiasApiController', 'getAll');
    $router->addRoute('escuderias/:ID', 'GET', 'EscuderiasApiController', 'get');
    $router->addRoute('escuderias', 'POST', 'EscuderiasApiController', 'insertEscuderia');
    $router->addRoute('escuderias/:ID', 'DELETE', 'EscuderiasApiController', 'deleteEscuderia');
    $router->addRoute('escuderias/:ID', 'PUT', 'EscuderiasApiController', 'editEscuderia');
    
    $router->addRoute('auth/token', 'GET', 'AuthApiController', 'getToken');

    $router->setDefaultRoute('EscuderiasApiController', 'error');



//rutea
$router->route($_GET['resource'], $_SERVER['REQUEST_METHOD']);

