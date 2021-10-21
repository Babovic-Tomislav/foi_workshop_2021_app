<?php

use App\Service\Router\Router;

Router::get('/', function (){echo "WELCOME";});
Router::get('/index', 'App\\Controller\\DefaultController::indexAction');