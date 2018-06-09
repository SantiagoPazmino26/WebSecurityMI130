<?php

namespace WebShopBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Config\Definition\Exception\Exception;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use WebShopBundle\Form\LoginForm;
use WebShopBundle\Entity\User;
use Symfony\Component\HttpFoundation\Cookie;

class SecurityController extends Controller
{
    /**
     * @Route("/login", name="security_login")
     * @return Response
     */
    public function loginAction(Request $request)
    {
        $encoderService = $this->get("web_shop.security.encoder");

        $form = $this->createForm(LoginForm::class);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            /** @var Review $review */
            $data = $form->getData();

            $username = $data["_username"];

            $user = $this->getDoctrine()->getRepository(User::class)
                ->findOneBy([
                    "email" => $username
                ]);

            $password = $data["_password"];
            if($user){
                if ($encoderService->isPasswordValid($user->getPassword(), $password,1234)) {
                    $this->container->get("session")->set('user',$user);
                    $cookie = new Cookie(
                        'security_cookie',	// Cookie name.
                        $user->getFullName(),	// Cookie value.
                        time() + (300)	// Expires 5 minutes
                    );
                    $res = new Response();
                    $res->headers->setCookie( $cookie );
                    $res->send();
                    $this->container->get("session")->getFlashBag()->add("success", "Logged in successfully!");
                    return $this->redirectToRoute("homepage");
                }
            }
            $this->addFlash("success", "Error with the credentials!");

            return $this->redirectToRoute("security_login");

        }

        return $this->render("@WebShop/security/login.html.twig", [
            "login_form" => $form->createView()
        ]);
    }

     /**
     * @Route("/logout", name="security_logout")
     * @Method("GET")
     */
    public function logoutAction()
    {

        $this->container->get("session")->clear();
        return $this->redirectToRoute("homepage");

        throw new \Exception("This page should not be reached.");
    }
}
