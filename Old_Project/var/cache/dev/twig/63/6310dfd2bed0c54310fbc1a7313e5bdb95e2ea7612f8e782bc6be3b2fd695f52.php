<?php

/* _main_navigation.html.twig */
class __TwigTemplate_544e0cfec1008e1781a03a3e306a982c0b3426744e800a95b80a8316c53f0423 extends Twig_Template
{
    private $source;

    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = array(
            'nav_link' => array($this, 'block_nav_link'),
            'nav_user' => array($this, 'block_nav_user'),
            'nav_guest' => array($this, 'block_nav_guest'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02 = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->enter($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "_main_navigation.html.twig"));

        // line 1
        echo "<nav class=\"navbar navbar-inverse\">
    <div class=\"container-fluid\">
        <div class=\"navbar-header\">
            <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\"
                    aria-expanded=\"false\" aria-controls=\"navbar\">
                <span class=\"sr-only\">Toggle navigation</span>
                <span class=\"icon-bar\"></span>
                <span class=\"icon-bar\"></span>
                <span class=\"icon-bar\"></span>
            </button>
            <a class=\"navbar-brand\" href=\"";
        // line 11
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getPath("homepage");
        echo "\">WebShop</a>
        </div>
        <div id=\"navbar\" class=\"navbar-collapse collapse\">
            <ul class=\"nav navbar-nav\">
                ";
        // line 15
        $this->displayBlock('nav_link', $context, $blocks);
        // line 19
        echo "            </ul>
            <ul class=\"nav navbar-nav navbar-right\">
                ";
        // line 21
        if (twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, ($context["app"] ?? null), "session", array(), "any", false, true), "user", array(), "any", true, true)) {
            // line 22
            echo "                    ";
            $this->displayBlock('nav_user', $context, $blocks);
            // line 36
            echo "                ";
        } else {
            // line 37
            echo "                    ";
            $this->displayBlock('nav_guest', $context, $blocks);
            // line 43
            echo "                ";
        }
        // line 44
        echo "            </ul>
        </div>
    </div>
</nav>
";
        
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->leave($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof);

    }

    // line 15
    public function block_nav_link($context, array $blocks = array())
    {
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02 = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->enter($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "nav_link"));

        // line 16
        echo "                    <li><a href=\"";
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getPath("homepage");
        echo "\">Home</a></li>
                    <li><a href=\"";
        // line 17
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getPath("homepage");
        echo "\">Products</a></li>
                ";
        
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->leave($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof);

    }

    // line 22
    public function block_nav_user($context, array $blocks = array())
    {
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02 = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->enter($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "nav_user"));

        // line 23
        echo "                        <li><a href=\"";
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getPath("login_get");
        echo "\">My Profile <span
                                        class=\"glyphicon glyphicon-user\"></span></a></li>
                        <li><a href=\"";
        // line 25
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getPath("login_get");
        echo "\">My Orders <span
                                        class=\"glyphicon glyphicon-inbox\"></span></a></li>
                        <li><a href=\"";
        // line 27
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getPath("login_get");
        echo "\">Cart <span
                                        class=\"glyphicon glyphicon-shopping-cart\"></span>
                                ";
        // line 29
        if ((twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new Twig_Error_Runtime('Variable "app" does not exist.', 29, $this->source); })()), "session", array()), "user", array()), "products", array())) > 0)) {
            // line 30
            echo "                                    (";
            echo twig_escape_filter($this->env, twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new Twig_Error_Runtime('Variable "app" does not exist.', 30, $this->source); })()), "session", array()), "user", array()), "products", array())), "html", null, true);
            echo " Products)
                                ";
        }
        // line 32
        echo "                            </a></li>
                        <li><a href=\"";
        // line 33
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getPath("logout_post");
        echo "\">Logout <span
                                        class=\"glyphicon glyphicon-arrow-right\"></span></a></li>
                    ";
        
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->leave($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof);

    }

    // line 37
    public function block_nav_guest($context, array $blocks = array())
    {
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02 = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->enter($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof = new Twig_Profiler_Profile($this->getTemplateName(), "block", "nav_guest"));

        // line 38
        echo "                        <li><a href=\"";
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getPath("login_get");
        echo "\">Login <span class=\"glyphicon glyphicon-lock\"></span></a>
                        </li>
                        <li><a href=\"";
        // line 40
        echo $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getPath("login_get");
        echo "\">Register <span class=\"glyphicon glyphicon-ok\"></span></a>
                        </li>
                    ";
        
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->leave($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof);

    }

    public function getTemplateName()
    {
        return "_main_navigation.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  154 => 40,  148 => 38,  142 => 37,  132 => 33,  129 => 32,  123 => 30,  121 => 29,  116 => 27,  111 => 25,  105 => 23,  99 => 22,  90 => 17,  85 => 16,  79 => 15,  68 => 44,  65 => 43,  62 => 37,  59 => 36,  56 => 22,  54 => 21,  50 => 19,  48 => 15,  41 => 11,  29 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("<nav class=\"navbar navbar-inverse\">
    <div class=\"container-fluid\">
        <div class=\"navbar-header\">
            <button type=\"button\" class=\"navbar-toggle collapsed\" data-toggle=\"collapse\" data-target=\"#navbar\"
                    aria-expanded=\"false\" aria-controls=\"navbar\">
                <span class=\"sr-only\">Toggle navigation</span>
                <span class=\"icon-bar\"></span>
                <span class=\"icon-bar\"></span>
                <span class=\"icon-bar\"></span>
            </button>
            <a class=\"navbar-brand\" href=\"{{ path(\"homepage\") }}\">WebShop</a>
        </div>
        <div id=\"navbar\" class=\"navbar-collapse collapse\">
            <ul class=\"nav navbar-nav\">
                {% block nav_link %}
                    <li><a href=\"{{ path(\"homepage\") }}\">Home</a></li>
                    <li><a href=\"{{ path(\"homepage\") }}\">Products</a></li>
                {% endblock %}
            </ul>
            <ul class=\"nav navbar-nav navbar-right\">
                {% if app.session.user is defined %}
                    {% block nav_user %}
                        <li><a href=\"{{ path(\"login_get\") }}\">My Profile <span
                                        class=\"glyphicon glyphicon-user\"></span></a></li>
                        <li><a href=\"{{ path(\"login_get\") }}\">My Orders <span
                                        class=\"glyphicon glyphicon-inbox\"></span></a></li>
                        <li><a href=\"{{ path(\"login_get\") }}\">Cart <span
                                        class=\"glyphicon glyphicon-shopping-cart\"></span>
                                {% if app.session.user.products|length > 0 %}
                                    ({{ app.session.user.products|length }} Products)
                                {% endif %}
                            </a></li>
                        <li><a href=\"{{ path(\"logout_post\") }}\">Logout <span
                                        class=\"glyphicon glyphicon-arrow-right\"></span></a></li>
                    {% endblock %}
                {% else %}
                    {% block nav_guest %}
                        <li><a href=\"{{ path(\"login_get\") }}\">Login <span class=\"glyphicon glyphicon-lock\"></span></a>
                        </li>
                        <li><a href=\"{{ path(\"login_get\") }}\">Register <span class=\"glyphicon glyphicon-ok\"></span></a>
                        </li>
                    {% endblock %}
                {% endif %}
            </ul>
        </div>
    </div>
</nav>
", "_main_navigation.html.twig", "/home/santiago/Projects/WebSecurity/templates/_main_navigation.html.twig");
    }
}
