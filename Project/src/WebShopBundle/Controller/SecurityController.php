<?php

namespace WebShopBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\Config\Definition\Exception\Exception;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use WebShopBundle\Form\LoginForm;

class SecurityController extends Controller
{
    /**
     * @Route("/login", name="security_login")
     * @return Response
     */
    public function loginAction(Request $request)
    {

        $form = $this->createForm(LoginForm::class);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            /** @var Review $review */
            $data = $form->getData();

            $username = $data["_username"];

            $user = $this->entityManager->getRepository(User::class)
                ->findOneBy([
                    "email" => $username
                ]);

            $review->setDate(new \DateTime());
            $review->setUser($this->getUser());
            $review->setProduct($product);

            $em = $this->getDoctrine()->getManager();
            $em->persist($review);
            $em->flush();

            $this->addFlash("success", "Review added!");

            return $this->redirectToRoute("products_view_product", ["slug" => $product->getSlug()]);
        }

        return $this->render("@WebShop/security/login.html.twig", [
            "login_form" => $form->createView()
        ]);
    }

    /**
     * @Route("/login/", name="login_post")
     * @Method("POST")
     * @return RedirectResponse
     */
    public function loginPostAction()
    {
        $cartService = $this->get("web_shop.service.cart_service");
        if (!$cartService->addProductToCart($this->getUser(), $product)) {
            return $this->redirectToRoute("homepage");
        }

        return $this->redirectToRoute("homepage");
    }


    /**
     * @Route("/logout", name="security_logout")
     * @Method("GET")
     */
    public function logoutAction()
    {
        if (!$this->get("security.authorization_checker")->isGranted("ROLE_USER")) {
            return $this->redirectToRoute("homepage");
        }

        throw new \Exception("This page should not be reached.");
    }
}
