<?php

use Symfony\Component\Routing\Exception\MethodNotAllowedException;
use Symfony\Component\Routing\Exception\ResourceNotFoundException;
use Symfony\Component\Routing\RequestContext;

/**
 * This class has been auto-generated
 * by the Symfony Routing Component.
 */
class srcDevDebugProjectContainerUrlMatcher extends Symfony\Bundle\FrameworkBundle\Routing\RedirectableUrlMatcher
{
    public function __construct(RequestContext $context)
    {
        $this->context = $context;
    }

    public function match($rawPathinfo)
    {
        $allow = array();
        $pathinfo = rawurldecode($rawPathinfo);
        $trimmedPathinfo = rtrim($pathinfo, '/');
        $context = $this->context;
        $request = $this->request ?: $this->createRequest($pathinfo);
        $requestMethod = $canonicalMethod = $context->getMethod();

        if ('HEAD' === $requestMethod) {
            $canonicalMethod = 'GET';
        }

        // basket_index
        if ('/basket' === $trimmedPathinfo) {
            $ret = array (  '_controller' => 'App\\Controller\\BasketController::getBasket',  '_route' => 'basket_index',);
            if ('/' === substr($pathinfo, -1)) {
                // no-op
            } elseif ('GET' !== $canonicalMethod) {
                goto not_basket_index;
            } else {
                return array_replace($ret, $this->redirect($rawPathinfo.'/', 'basket_index'));
            }

            if (!in_array($canonicalMethod, array('GET'))) {
                $allow = array_merge($allow, array('GET'));
                goto not_basket_index;
            }

            return $ret;
        }
        not_basket_index:

        if (0 === strpos($pathinfo, '/customer')) {
            // customer_index
            if ('/customer' === $trimmedPathinfo) {
                $ret = array (  '_controller' => 'App\\Controller\\CustomerController::index',  '_route' => 'customer_index',);
                if ('/' === substr($pathinfo, -1)) {
                    // no-op
                } elseif ('GET' !== $canonicalMethod) {
                    goto not_customer_index;
                } else {
                    return array_replace($ret, $this->redirect($rawPathinfo.'/', 'customer_index'));
                }

                if (!in_array($canonicalMethod, array('GET'))) {
                    $allow = array_merge($allow, array('GET'));
                    goto not_customer_index;
                }

                return $ret;
            }
            not_customer_index:

            // customer_new
            if ('/customer/new' === $pathinfo) {
                $ret = array (  '_controller' => 'App\\Controller\\CustomerController::new',  '_route' => 'customer_new',);
                if (!in_array($canonicalMethod, array('GET', 'POST'))) {
                    $allow = array_merge($allow, array('GET', 'POST'));
                    goto not_customer_new;
                }

                return $ret;
            }
            not_customer_new:

            // customer_show
            if (preg_match('#^/customer/(?P<id>[^/]++)$#sD', $pathinfo, $matches)) {
                $ret = $this->mergeDefaults(array_replace($matches, array('_route' => 'customer_show')), array (  '_controller' => 'App\\Controller\\CustomerController::show',));
                if (!in_array($canonicalMethod, array('GET'))) {
                    $allow = array_merge($allow, array('GET'));
                    goto not_customer_show;
                }

                return $ret;
            }
            not_customer_show:

            // customer_edit
            if (preg_match('#^/customer/(?P<id>[^/]++)/edit$#sD', $pathinfo, $matches)) {
                $ret = $this->mergeDefaults(array_replace($matches, array('_route' => 'customer_edit')), array (  '_controller' => 'App\\Controller\\CustomerController::edit',));
                if (!in_array($canonicalMethod, array('GET', 'POST'))) {
                    $allow = array_merge($allow, array('GET', 'POST'));
                    goto not_customer_edit;
                }

                return $ret;
            }
            not_customer_edit:

            // customer_delete
            if (preg_match('#^/customer/(?P<id>[^/]++)$#sD', $pathinfo, $matches)) {
                $ret = $this->mergeDefaults(array_replace($matches, array('_route' => 'customer_delete')), array (  '_controller' => 'App\\Controller\\CustomerController::delete',));
                if (!in_array($requestMethod, array('DELETE'))) {
                    $allow = array_merge($allow, array('DELETE'));
                    goto not_customer_delete;
                }

                return $ret;
            }
            not_customer_delete:

        }

        // homepage
        if ('' === $trimmedPathinfo) {
            $ret = array (  '_controller' => 'App\\Controller\\IndexController::getIndex',  '_route' => 'homepage',);
            if ('/' === substr($pathinfo, -1)) {
                // no-op
            } elseif ('GET' !== $canonicalMethod) {
                goto not_homepage;
            } else {
                return array_replace($ret, $this->redirect($rawPathinfo.'/', 'homepage'));
            }

            if (!in_array($canonicalMethod, array('GET'))) {
                $allow = array_merge($allow, array('GET'));
                goto not_homepage;
            }

            return $ret;
        }
        not_homepage:

        if (0 === strpos($pathinfo, '/login')) {
            // login_get
            if ('/login' === $trimmedPathinfo) {
                $ret = array (  '_controller' => 'App\\Controller\\LoginController::getLogin',  '_route' => 'login_get',);
                if ('/' === substr($pathinfo, -1)) {
                    // no-op
                } elseif ('GET' !== $canonicalMethod) {
                    goto not_login_get;
                } else {
                    return array_replace($ret, $this->redirect($rawPathinfo.'/', 'login_get'));
                }

                if (!in_array($canonicalMethod, array('GET'))) {
                    $allow = array_merge($allow, array('GET'));
                    goto not_login_get;
                }

                return $ret;
            }
            not_login_get:

            if (0 === strpos($pathinfo, '/login/post')) {
                // login_post
                if ('/login/post' === $pathinfo) {
                    $ret = array (  '_controller' => 'App\\Controller\\LoginController::postLogin',  '_route' => 'login_post',);
                    if (!in_array($requestMethod, array('POST'))) {
                        $allow = array_merge($allow, array('POST'));
                        goto not_login_post;
                    }

                    return $ret;
                }
                not_login_post:

                // logout_post
                if ('/login/post' === $pathinfo) {
                    $ret = array (  '_controller' => 'App\\Controller\\LoginController::postLogout',  '_route' => 'logout_post',);
                    if (!in_array($requestMethod, array('POST'))) {
                        $allow = array_merge($allow, array('POST'));
                        goto not_logout_post;
                    }

                    return $ret;
                }
                not_logout_post:

            }

            // register_get
            if ('/login' === $trimmedPathinfo) {
                $ret = array (  '_controller' => 'App\\Controller\\LoginController::getRegister',  '_route' => 'register_get',);
                if ('/' === substr($pathinfo, -1)) {
                    // no-op
                } elseif ('GET' !== $canonicalMethod) {
                    goto not_register_get;
                } else {
                    return array_replace($ret, $this->redirect($rawPathinfo.'/', 'register_get'));
                }

                if (!in_array($canonicalMethod, array('GET'))) {
                    $allow = array_merge($allow, array('GET'));
                    goto not_register_get;
                }

                return $ret;
            }
            not_register_get:

            // register_post
            if ('/login/' === $pathinfo) {
                $ret = array (  '_controller' => 'App\\Controller\\LoginController::postRegister',  '_route' => 'register_post',);
                if (!in_array($requestMethod, array('POST'))) {
                    $allow = array_merge($allow, array('POST'));
                    goto not_register_post;
                }

                return $ret;
            }
            not_register_post:

        }

        // product_get_all
        if ('/product/get_all' === $pathinfo) {
            $ret = array (  '_controller' => 'App\\Controller\\ProductController::getProducts',  '_route' => 'product_get_all',);
            if (!in_array($canonicalMethod, array('GET'))) {
                $allow = array_merge($allow, array('GET'));
                goto not_product_get_all;
            }

            return $ret;
        }
        not_product_get_all:

        // _twig_error_test
        if (0 === strpos($pathinfo, '/_error') && preg_match('#^/_error/(?P<code>\\d+)(?:\\.(?P<_format>[^/]++))?$#sD', $pathinfo, $matches)) {
            return $this->mergeDefaults(array_replace($matches, array('_route' => '_twig_error_test')), array (  '_controller' => 'twig.controller.preview_error:previewErrorPageAction',  '_format' => 'html',));
        }

        throw 0 < count($allow) ? new MethodNotAllowedException(array_unique($allow)) : new ResourceNotFoundException();
    }
}
