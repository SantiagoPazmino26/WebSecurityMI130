<?php

namespace WebShopBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use WebShopBundle\Entity\ProductsOrder;
use WebShopBundle\Entity\Role;
use WebShopBundle\Entity\User;
use WebShopBundle\Form\ProfileEditForm;
use WebShopBundle\Form\RegisterForm;

class UserController extends Controller
{
    /**
     * @Route("/register", name="user_register")
     * @Method("GET")
     * @return Response
     */
    public function registerAction()
    {
        if ($this->container->get("session")->get('user') != null) {
            return $this->redirectToRoute("homepage");
        }

        $form = $this->createForm(RegisterForm::class);

        return $this->render("@WebShop/user/register.html.twig", [
            "register_form" => $form->createView()
        ]);
    }

    /**
     * @Route("/register", name="user_register_process")
     * @Method("POST")
     *
     * @param Request $request
     * @return Response
     */
    public function registerProcessAction(Request $request)
    {

        $user = new User();
        $em = $this->getDoctrine()->getManager();
        $userRole = $em->getRepository(Role::class)
            ->findOneBy(["name" => "ROLE_USER"]);

        $user->addRole($userRole);

        $form = $this->createForm(RegisterForm::class, $user);
        $form->handleRequest($request);
        if ($form->isValid()) {
            /** @var User $user */
            $user = $form->getData();

            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();

            $this->container->get("session")->getFlashBag()->add("success", "Registered successfully!");
            return $this->redirectToRoute("homepage");
        }

        return $this->render("@WebShop/user/register.html.twig", [
            "register_form" => $form->createView()
        ]);
    }

    /**
     * @param Request $request
     * @return Response
     * @Route("/profile", name="user_profile")
     */
    public function profileAction(Request $request)
    {
        /** @var User $currentUser */
        $currentUser = $this->container->get("session")->get('user');

        return $this->render("@WebShop/user/profile.html.twig", [
            "user" => $currentUser
        ]);
    }

    /**
     * @Route("/profile/edit", name="user_profile_edit")
     *
     * @param Request $request
     * @return Response
     */
    public function editProfileAction(Request $request)
    {
        /** @var User $currentUser */
        $currentUser = $this->container->get("session")->get('user');

        $form = $this->createForm(ProfileEditForm::class, $currentUser);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($currentUser);
            $em->flush();

            $this->addFlash("success", "Profile updated!");

            return $this->redirectToRoute("user_profile");
        }

        return $this->render("@WebShop/user/edit.html.twig", [
            "edit_form" => $form->createView()
        ]);
    }
}