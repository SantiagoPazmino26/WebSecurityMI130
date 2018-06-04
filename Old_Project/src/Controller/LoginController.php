<?php
/**
 * Created by PhpStorm.
 * User: santiago
 * Date: 4/3/18
 * Time: 4:24 PM
 */

namespace App\Controller;

use App\Entity\CustomerCart;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Session\SessionInterface;
use Symfony\Component\HttpFoundation\Response;
use App\Entity\Customer;

/**
 * @Route("/login")
 */
class LoginController extends Controller
{


    /**
     * @Route("/", name="login_get", methods="GET")
     */
    public function getLogin(SessionInterface $session)
    {
        $token = md5(openssl_random_pseudo_bytes(32));
        $session->set('token',$token);
        return $this->render('login.html.twig', array('token' => $token));
    }

    /**
     * @Route("/post", name="login_post", methods="POST")
     */
    public function postLogin(Request $request, SessionInterface $session)
    {

        $email = $request->request->get('email');
        $password = $request->request->get('password');
        $token = $request->request->get('token');
        if ($session->get('token') != $token) {
            throw $this->createNotFoundException(
                'Incorrect Token'
            );
        }
        $customer = $this->getDoctrine()
            ->getRepository(Customer::class)
            ->findOneBy(array('email' => $email));
        if ($customer != null) {
            if ($customer->getPassword() != $password) {
                throw $this->createNotFoundException(
                    'Wrong password'
                );
            } else {
                return new Response('Success');
            }
        } else {
            throw $this->createNotFoundException(
                'No user found'
            );
        }
    }

    /**
     * @Route("/post", name="logout_post", methods="POST")
     */
    public function postLogout(Request $request,SessionInterface $session){
        $token = $request->request->get('token');
        if ($session->get('token') != $token) {
            throw $this->createNotFoundException(
                'Incorrect Token'
            );
        }
        $session->remove('user');
        $response = $this->forward('App\Controller\IndexController::getIndex', array(
        ));

        return $response;
    }

    /**
     * @Route("/", name="register_get", methods="GET")
     */
    public function getRegister()
    {
        return $this->render('register.html.twig');
    }

    /**
     * @Route("/", name="register_post", methods="POST")
     */
    public function postRegister(Request $request)
    {
        return $this->render('register.html.twig');
    }
}
