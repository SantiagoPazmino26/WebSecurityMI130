<?php

namespace WebShopBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use WebShopBundle\Entity\Product;
use WebShopBundle\Entity\User;

/**
 * Class CartController
 * @package WebShopBundle\Controller
 * @Route("/cart")
 *
 */
class CartController extends Controller
{
    /**
     * @Route("", name="user_cart")
     *
     * @return Response
     */
    public function cartAction(Request $request)
    {
        /** @var User $user */
        $user = $this->getDoctrine()->getManager()->merge($this->container->get("session")->get('user'));
        $cartService = $this->get("web_shop.service.cart_service");
        $this->container->get("session")->set('user',$user);
        return $this->render("@WebShop/cart/index.html.twig", [
            "cart" => $user->getProducts(),
            "total" => $cartService->getProductsTotal($user->getProducts())
        ]);
    }

    /**
     * @Route("/delete/{id}", name="user_cart_update")
     * @Method("POST")
     *
     * @param Product $product
     * @return RedirectResponse
     */
    public function deleteFromCartAction(Product $product)
    {
        $cartService = $this->get("web_shop.service.cart_service");
        $cartService->removeProductFromCart($this->container->get("session")->get('user'), $product);

        return $this->redirectToRoute("user_cart");
    }

    /**
     * @Route("/add/{id}", name="user_cart_add")
     * @Method("POST")
     *
     * @param Product $product
     * @return RedirectResponse
     */
    public function addToCartAction(Product $product)
    {
        $cartService = $this->get("web_shop.service.cart_service");
        $user = $this->getDoctrine()->getManager()->merge($this->container->get("session")->get('user'));
        if (!$cartService->addProductToCart($user, $product)) {
            return $this->redirectToRoute("homepage");
        }
        $this->container->get("session")->set('user',$user);
        return $this->redirectToRoute("user_cart");
    }

    /**
     * @Route("/checkout", name="user_cart_checkout")
     *
     * @return RedirectResponse
     */
    public function checkoutCartAction()
    {
        $cartService = $this->get("web_shop.service.cart_service");
        $user = $this->getDoctrine()->getManager()->merge($this->container->get("session")->get('user'));
        if (!$cartService->checkoutCart($user)) {
            return $this->redirectToRoute("user_cart");
        }
        $this->container->get("session")->set('user',$user);
        return $this->redirectToRoute("homepage");
    }
}
