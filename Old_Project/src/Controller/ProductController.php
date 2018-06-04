<?php
/**
 * Created by PhpStorm.
 * User: santiago
 * Date: 4/3/18
 * Time: 4:24 PM
 */

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\HttpFoundation\Response;
use App\Entity\Products;

/**
 * @Route("/product")
 */
class ProductController extends Controller
{


    /**
     * @Route("/get_all", name="product_get_all", methods="GET")
     */
    public function getProducts(SessionInterface $session)
    {
        $token = md5(openssl_random_pseudo_bytes(32));
        $session->set('token',$token);
        return $this->render('index.html.twig', array('token' => $token));
    }
}