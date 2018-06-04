<?php
/**
 * Created by PhpStorm.
 * User: santiago
 * Date: 4/10/18
 * Time: 12:16 PM
 */

namespace App\Controller;

use App\Entity\Products;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;

class IndexController extends Controller
{
    /**
     * @Route("/", name="homepage", methods="GET")
     */
    public function getIndex(Request $request)
    {
        $session = $request->getSession();
        $session->set('user',null);

        $products = $this->getDoctrine()
            ->getRepository(Products::class)
            ->findAll();

        return $this->render('index.html.twig', array('products' => $products));
    }

}
