<?php

/* _flash_messages.html.twig */
class __TwigTemplate_b92006a11634dfc974f34c53c476d0ab14e1972484c1187ab14fbc2a1dcc99c5 extends Twig_Template
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
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->enter($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof = new Twig_Profiler_Profile($this->getTemplateName(), "template", "_flash_messages.html.twig"));

        // line 1
        if ((twig_length_filter($this->env, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new Twig_Error_Runtime('Variable "app" does not exist.', 1, $this->source); })()), "session", array()), "flashbag", array()), "peekAll", array())) > 0)) {
            // line 2
            echo "    <div class=\"row\">
        <div class=\"col-md-12\">
            ";
            // line 4
            $context['_parent'] = $context;
            $context['_seq'] = twig_ensure_traversable(twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, twig_get_attribute($this->env, $this->source, (isset($context["app"]) || array_key_exists("app", $context) ? $context["app"] : (function () { throw new Twig_Error_Runtime('Variable "app" does not exist.', 4, $this->source); })()), "session", array()), "flashbag", array()), "all", array()));
            foreach ($context['_seq'] as $context["type"] => $context["messages"]) {
                // line 5
                echo "                ";
                $context['_parent'] = $context;
                $context['_seq'] = twig_ensure_traversable($context["messages"]);
                foreach ($context['_seq'] as $context["_key"] => $context["message"]) {
                    // line 6
                    echo "                    <div class=\"alert alert-";
                    echo twig_escape_filter($this->env, (($context["type"]) ? ($context["type"]) : ("info")), "html", null, true);
                    echo "\">
                        <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span
                                    aria-hidden=\"true\">&times;</span></button>
                        <strong>";
                    // line 9
                    echo twig_escape_filter($this->env, ((($context["type"] == "danger")) ? ("Error") : (twig_capitalize_string_filter($this->env, $context["type"]))), "html", null, true);
                    echo "!</strong> ";
                    echo twig_escape_filter($this->env, $context["message"], "html", null, true);
                    echo "
                    </div>
                ";
                }
                $_parent = $context['_parent'];
                unset($context['_seq'], $context['_iterated'], $context['_key'], $context['message'], $context['_parent'], $context['loop']);
                $context = array_intersect_key($context, $_parent) + $_parent;
                // line 12
                echo "            ";
            }
            $_parent = $context['_parent'];
            unset($context['_seq'], $context['_iterated'], $context['type'], $context['messages'], $context['_parent'], $context['loop']);
            $context = array_intersect_key($context, $_parent) + $_parent;
            // line 13
            echo "        </div>
    </div>
";
        }
        
        $__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02->leave($__internal_319393461309892924ff6e74d6d6e64287df64b63545b994e100d4ab223aed02_prof);

    }

    public function getTemplateName()
    {
        return "_flash_messages.html.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  65 => 13,  59 => 12,  48 => 9,  41 => 6,  36 => 5,  32 => 4,  28 => 2,  26 => 1,);
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% if app.session.flashbag.peekAll|length > 0 %}
    <div class=\"row\">
        <div class=\"col-md-12\">
            {% for type, messages in app.session.flashbag.all %}
                {% for message in messages %}
                    <div class=\"alert alert-{{ type ? type : 'info' }}\">
                        <button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span
                                    aria-hidden=\"true\">&times;</span></button>
                        <strong>{{ type == \"danger\" ? \"Error\" : type|capitalize }}!</strong> {{ message }}
                    </div>
                {% endfor %}
            {% endfor %}
        </div>
    </div>
{% endif %}", "_flash_messages.html.twig", "/home/santiago/Projects/WebSecurity/templates/_flash_messages.html.twig");
    }
}
