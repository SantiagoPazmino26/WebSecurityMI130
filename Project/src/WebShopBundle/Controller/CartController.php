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
        $currentUser = $this->container->get("session")->get('user');
        $cartService = $this->get("web_shop.service.cart_service");
        return $this->render("@WebShop/cart/index.html.twig", [
            "cart" => $currentUser->getProducts(),
            "total" => $cartService->getProductsTotal($currentUser->getProducts())
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
        $cartService->removeProductFromCart($this->getUser(), $product);

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
        if (!$cartService->addProductToCart($this->getUser(), $product)) {
            return $this->redirectToRoute("homepage");
        }

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
        if (!$cartService->checkoutCart($this->getUser())) {
            return $this->redirectToRoute("user_cart");
        }

        return $this->redirectToRoute("homepage");
    }
}
