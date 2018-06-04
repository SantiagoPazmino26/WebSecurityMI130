<?php

/* _product_thumbnail.html.twig */
class __TwigTemplate_429b0cc9dd2be991256969feb83675622d92ec2ab85bc6cef604bf27021b827b extends Twig_Template
{
    private $source;

    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->source = $this->getSourceContext();

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02 = $this->extensions["Symfony\\Bridge\\Twig\\Extension\\ProfilerExtension"];
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->enter($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "_product_thumbnail.html.twig"));

        // line 1
        echo "<div class=\"thumbnail\">
    <div class=\"caption\">
        <h3>";
        // line 3
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["product"]) || array_key_exists("product", $context) ? $context["product"] : (function () { throw new Twig_Error_Runtime('Variable "product" does not exist.', 3, $this->source); })()), "productName", array()), "html", null, true);
        echo "</h3>
        <p>";
        // line 4
        echo twig_escape_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["product"]) || array_key_exists("product", $context) ? $context["product"] : (function () { throw new Twig_Error_Runtime('Variable "product" does not exist.', 4, $this->source); })()), "details", array()), "html", null, true);
        echo "</p>
        <div class=\"h3\">
            <span class=\"label label-success\">€";
        // line 6
        echo twig_escape_filter($this->env, twig_number_format_filter($this->env, twig_get_attribute($this->env, $this->source, (isset($context["product"]) || array_key_exists("product", $context) ? $context["product"] : (function () { throw new Twig_Error_Runtime('Variable "product" does not exist.', 6, $this->source); })()), "price", array()), 2), "html", null, true);
        echo "</span>
        </div>
        <hr>
        <p class=\"text\">
        <form method=\"post\" action=\"";
        // line 10
        echo twig_escape_filter($this->env, $this->extensions['Symfony\Bridge\Twig\Extension\RoutingExtension']->getPath("login_get", array("id" => twig_get_attribute($this->env, $this->source, (isset($context["product"]) || array_key_exists("product", $context) ? $context["product"] : (function () { throw new Twig_Error_Runtime('Variable "product" does not exist.', 10, $this->source); })()), "id", array()))), "html", null, true);
        echo "\"
              style=\"display: inline-block\">
            <button class=\"btn btn-primary\" type=\"submit\"><span
                        class=\"glyphicon glyphicon-shopping-cart\"></span> Add to Cart
            </button>
        </form>
    </div>
</div>
";
        
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->leave($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof);

    }

    public function getTemplateName()
    {
        return "_product_thumbnail.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  46 => 10,  39 => 6,  34 => 4,  30 => 3,  26 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("<div class=\"thumbnail\">
    <div class=\"caption\">
        <h3>{{ product.productName }}</h3>
        <p>{{ product.details }}</p>
        <div class=\"h3\">
            <span class=\"label label-success\">€{{ product.price|number_format(2) }}</span>
        </div>
        <hr>
        <p class=\"text\">
        <form method=\"post\" action=\"{{ path(\"login_get\", {\"id\": product.id}) }}\"
              style=\"display: inline-block\">
            <button class=\"btn btn-primary\" type=\"submit\"><span
                        class=\"glyphicon glyphicon-shopping-cart\"></span> Add to Cart
            </button>
        </form>
    </div>
</div>
", "_product_thumbnail.html.twig", "/home/santiago/Projects/WebSecurity/templates/_product_thumbnail.html.twig");
    }
}
