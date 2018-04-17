<?php
/**
 * Created by PhpStorm.
 * User: santiago
 * Date: 4/13/18
 * Time: 10:44 AM
 */

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;

/**
 * @Route("/basket")
 */
class BasketController extends Controller
{
    /**
     * @Route("/", name="basket_index", methods="GET")
     */
    public function getBasket(SessionInterface $session)
    {
        $token = md5(openssl_random_pseudo_bytes(32));
        $session->set('token',$token);
        $customerBasket = null;
        $customerBasket = $this->getDoctrine()
            ->getRepository(CustomerBasket::class)
            ->findOneBy(array('customerid' => $token));

        return $this->render('basket.html.twig', array('token' => $customerBasket));

    }
}