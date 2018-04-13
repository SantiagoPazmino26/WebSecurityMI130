<?php
/**
 * Created by PhpStorm.
 * User: santiago
 * Date: 4/10/18
 * Time: 12:16 PM
 */

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class IndexController extends Controller
{
    /**
     * @Route("/", name="index", methods="GET")
     */
    public function getIndex(SessionInterface $session)
    {
        return $this->render('index.html.twig');
    }

}