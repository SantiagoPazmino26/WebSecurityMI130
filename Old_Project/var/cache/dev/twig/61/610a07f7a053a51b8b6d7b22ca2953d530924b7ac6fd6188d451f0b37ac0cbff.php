<?php

/* login.html.twig */
class __TwigTemplate_6f8da10e2bd014c7f0835261a1a213c6f83effd101c3ae5ae81f965622bced16 extends Twig_Template
{
    private $source;

    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        // line 2
        $this->parent = $this->loadTemplate("base.html.twig", "login.html.twig", 2);
        $this->blocks = array(
            'main_title' => array($this, 'block_main_title'),
            'main' => array($this, 'block_main'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "base.html.twig";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02 = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->enter($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "login.html.twig"));

        $this->parent->display($context, array_merge($this->blocks, $blocks));
        
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->leave($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof);

    }

    // line 4
    public function block_main_title($context, array $blocks = array())
    {
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02 = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->enter($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "main_title"));

        echo "Login";
        
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->leave($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof);

    }

    // line 6
    public function block_main($context, array $blocks = array())
    {
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02 = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->enter($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "main"));

        // line 7
        echo "<form method=\"post\" action=\"";
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getPath("login_post");
        echo "\">

    <label for=\"email\" class=\"sr-only\">Email</label>
    <input type=\"email\" id=\"email\" name=\"email\" class=\"form-control\" placeholder=\"Email\" required autofocus>

    <label for=\"password\" class=\"sr-only\">Password</label>
    <input type=\"password\" id=\"password\" name=\"password\" class=\"form-control\" placeholder=\"Password\" required>

    <input type=\"hidden\" id=\"token\" name=\"token\" value=\"";
        // line 15
        echo twig_escape_filter($this->env, (isset($context["token"]) || array_key_exists("token", $context) ? $context["token"] : (function () { throw new Twig_Error_Runtime('Variable "token" does not exist.', 15, $this->source); })()), "html", null, true);
        echo "\">

    <button name=\"Submit\" id=\"submit\" class=\"btn btn-lg btn-primary btn-block\">Login</button>
</form>

";
        
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->leave($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof);

    }

    public function getTemplateName()
    {
        return "login.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  69 => 15,  57 => 7,  51 => 6,  39 => 4,  15 => 2,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("{# templates/blog/index.html.twig #}
{% extends 'base.html.twig' %}

{% block main_title %}Login{% endblock %}

{% block main %}
<form method=\"post\" action=\"{{ path('login_post')}}\">

    <label for=\"email\" class=\"sr-only\">Email</label>
    <input type=\"email\" id=\"email\" name=\"email\" class=\"form-control\" placeholder=\"Email\" required autofocus>

    <label for=\"password\" class=\"sr-only\">Password</label>
    <input type=\"password\" id=\"password\" name=\"password\" class=\"form-control\" placeholder=\"Password\" required>

    <input type=\"hidden\" id=\"token\" name=\"token\" value=\"{{ token }}\">

    <button name=\"Submit\" id=\"submit\" class=\"btn btn-lg btn-primary btn-block\">Login</button>
</form>

{% endblock %}", "login.html.twig", "/home/santiago/Projects/WebSecurity/templates/login.html.twig");
    }
}
