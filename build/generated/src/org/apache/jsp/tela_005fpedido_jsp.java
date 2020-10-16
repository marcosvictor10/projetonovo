package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class tela_005fpedido_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Pedido</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Pedido</h1>\n");
      out.write("        \n");
      out.write("        <form method=\"post\" action=\"action\">\n");
      out.write("            <label>CPF:</label>\n");
      out.write("            <input name=\"cpf_cliente\" required=\"required\" type=\"text\" placeholder=\"000.000.000-00\"/>\n");
      out.write("            <button name=\"buscar_cont\">Buscar</button><br><br>\n");
      out.write("            \n");
      out.write("            <label>Nome Cliente:</label>\n");
      out.write("            <input name=\"nome_cliente\" required=\"required\" type=\"text\" placeholder=\"Nome\"/><br><br>\n");
      out.write("            \n");
      out.write("            <label>Nome Produto:</label>\n");
      out.write("            <input name=\"nome_produto\" required=\"required\" type=\"text\" placeholder=\"Nome Produto\"/>\n");
      out.write("            <button name=\"buscar_cont\">Buscar</button><br><br>\n");
      out.write("            \n");
      out.write("            <label>Código Produto:</label>\n");
      out.write("            <input name=\"id_produto\" required=\"required\" type=\"text\" placeholder=\"Código Produto\"/><br><br>\n");
      out.write("            \n");
      out.write("            <label>Valor Produto:</label>\n");
      out.write("            <input name=\"valor_produto\" required=\"required\" type=\"text\" placeholder=\"R$\"/><br><br>\n");
      out.write("            \n");
      out.write("            <label>Qtde. Produto:</label>\n");
      out.write("            <input name=\"quantidade_pedido\" required=\"required\" type=\"text\" placeholder=\"Qtde. Produto\"/><br><br>\n");
      out.write("            \n");
      out.write("            <button name=\"inserir\">Inserir</button><button name=\"finalizar\">Finalizar Pedido</button><br><br>\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("        \n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <td>Número Pedido</td>\n");
      out.write("                <td>CPF</td>\n");
      out.write("                <td>Nome Cliente</td>                \n");
      out.write("                <td>Código Produto</td>\n");
      out.write("                <td>Nome Produto</td>\n");
      out.write("                <td>Quantidade Produto</td>\n");
      out.write("                <td>Valor Produto</td>                \n");
      out.write("                <td>Editar</td>\n");
      out.write("                <td>Excluir</td>\n");
      out.write("            </tr>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
