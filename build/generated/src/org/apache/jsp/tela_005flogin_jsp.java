package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import conexao.Conexao;
import java.sql.Connection;

public final class tela_005flogin_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\" />\r\n");
      out.write("        <title>Login</title>\r\n");
      out.write("\r\n");
      out.write("        <link rel=\"stylesheet\"\r\n");
      out.write("              href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\">\r\n");
      out.write("        <script\r\n");
      out.write("        src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/estilo_login.css\">\r\n");
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("\r\n");
      out.write("    <body class=\"\">\r\n");
      out.write("        <main class=\"w-100\">\r\n");
      out.write("            <div class=\"row\">\r\n");
      out.write("                <article class=\"cont-login col-md-6 text-center rounded-0-lg rounded-sm \">\r\n");
      out.write("                    <img src=\"img/header/logo.png\" class=\"logo-img\" alt=\"\">\r\n");
      out.write("                    <p id=\"titulo\">Tela de Login</p>\r\n");
      out.write("\r\n");
      out.write("                    <form method=\"post\" action=\"executar_entrar_login.jsp\">\r\n");
      out.write("                        <div class=\"input-group mb-3 mx-3\">\r\n");
      out.write("                            <div class=\"input-group-prepend\">\r\n");
      out.write("                                <span class=\"input-group-text\" id=\"basic-addon1\">Usuário</span>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <input class=\"form-control \" name=\"usuario_login\" required=\"required\" type=\"text\" placeholder=\"Nome\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <br>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"input-group mb-3 mx-3\">\r\n");
      out.write("                            <div class=\"input-group-prepend\">\r\n");
      out.write("                                <span class=\"input-group-text\" id=\"basic-addon1\">Senha</span>\r\n");
      out.write("                            </div>\r\n");
      out.write("\r\n");
      out.write("                            <input  name=\"senha_login\" class=\"form-control \" required=\"required\" type=\"password\" placeholder=\"Senha\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <br>\r\n");
      out.write("\r\n");
      out.write("                        <input class=\"btn btn-success btn-lg\" type=\"submit\" value=\"Entrar\"/><br><br> \r\n");
      out.write("\r\n");
      out.write("                        <a href=\"tela_esqueciSenha.jsp\"> Esqueci minha senha</a>\r\n");
      out.write("                        <p>Não possui Usuário?\r\n");
      out.write("                            <a href=\"tela_funcionario.jsp\">Cadastre-se</a>\r\n");
      out.write("                        </p>\r\n");
      out.write("                    </form>  \r\n");
      out.write("                </article>\r\n");
      out.write("\r\n");
      out.write("                <article class=\"col-sm-0 col-md-6 cont-img\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"opacity-img\"></div>\r\n");
      out.write("\r\n");
      out.write("                </article>\r\n");
      out.write("            </div>\r\n");
      out.write("        </main>         \r\n");
      out.write("    </body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
