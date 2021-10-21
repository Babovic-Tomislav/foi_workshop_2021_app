<?php

namespace App\Controller;

use App\Model\Address;
use App\Model\Category;
use App\Model\City;
use App\Model\Employer;
use App\Model\Position;
use App\Repository\EmployerInterface2;
use App\Service\Database\QueryBuilder;
use App\Service\Request\Request;

class DefaultController extends BaseController
{
    public function indexAction(Request $request)
    {
        $viewData['employers'] = Employer::with('address.city')->with('position')->get();

        return $this->render('index.html.twig', $viewData);
    }

    public function headerAction(Request $request) {
        $viewData['employers'] = Employer::all();
        $viewData['positions'] = Position::with('employer')->get();

        return $this->render('Includes/header.html.twig', $viewData);

    }
}