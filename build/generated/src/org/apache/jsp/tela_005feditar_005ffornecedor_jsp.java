package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class tela_005feditar_005ffornecedor_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Alterar</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Alterar Fornecedor</h1>\n");
      out.write("\n");
      out.write("        <form action=\"executar_editar_fornecedor.jsp\" method=\"post\">\n");
      out.write("\n");
      out.write("\n");
      out.write("            <input name=\"id_fornecedor\" required=\"required\" type=\"text\" value=\"");
      out.print(request.getParameter("id_fornecedor"));
      out.write("\" style=\"display:none; visibility:hidden;\"/>\n");
      out.write("\n");
      out.write("            <label>CNPJ:</label>\n");
      out.write("            <input name=\"cnpj_fornecedor\" required=\"required\" type=\"text\" minlength=\"14\" maxlength=\"14\" value=\"");
      out.print(request.getParameter("cnpj_fornecedor"));
      out.write("\"/><br/><br/>\n");
      out.write("\n");
      out.write("            <label>Nome Fornecedor:</label>\n");
      out.write("            <input name=\"nome_fornecedor\" required=\"required\" type=\"text\" value=\"");
      out.print(request.getParameter("nome_fornecedor"));
      out.write("\"/><br/><br/>\n");
      out.write("\n");
      out.write("            <label>Endereço:</label>\n");
      out.write("            <input name=\"endereco_fornecedor\" required=\"required\" type=\"text\" value=\"");
      out.print(request.getParameter("endereco_fornecedor"));
      out.write("\"/>\n");
      out.write("            <label>Número:</label>\n");
      out.write("            <input name=\"numero_fornecedor\" required=\"required\" type=\"text\" value=\"");
      out.print(request.getParameter("numero_fornecedor"));
      out.write("\"/><br/><br/>\n");
      out.write("\n");
      out.write("            <label>Estado:</label>\n");
      out.write("            <select name=\"estado_fornecedor\" value=\"");
      out.print( request.getAttribute("estado_fornecedor"));
      out.write("\" >\n");
      out.write("                <option value=\"Acre\">Acre(AC)</option>\n");
      out.write("                <option value=\"Alagoas\">Alagoas(AL)</option>\n");
      out.write("                <option value=\"Amapá\">Amapá(AP)</option>\n");
      out.write("                <option value=\"Amazonas\">Amazonas(AM)</option>\n");
      out.write("                <option value=\"Bahia\">Bahia(BA)</option>\n");
      out.write("                <option value=\"Ceará\">Ceará(CE)</option>\n");
      out.write("                <option value=\"Distrito Federal\">Distrito Federal(DF)</option>\n");
      out.write("                <option value=\"Espírito Santo\">Espírito Santo(ES)</option>\n");
      out.write("                <option value=\"Goias\">Goiás(GO)</option>\n");
      out.write("                <option value=\"Maranhão\">Maranhão(MA)</option>\n");
      out.write("                <option value=\"Mato Grosso\">Mato Grosso(MT)</option>\n");
      out.write("                <option value=\"Mato Grosso Sul\">Mato Grosso do Sul(MS)</option>\n");
      out.write("                <option value=\"Minas Gerais\">Minas Gerais(MG)</option>\n");
      out.write("                <option value=\"Pará\">Pará(PA)</option>\n");
      out.write("                <option value=\"Paraíba\">Paraíba(PB)</option>\n");
      out.write("                <option value=\"Paraná\">Paraná(PR)</option>\n");
      out.write("                <option value=\"Pernanbuco\">Pernambuco(PE)</option>\n");
      out.write("                <option value=\"Piauí\">Piauí(PI)</option>\n");
      out.write("                <option value=\"Rio de Janeiro\">Rio de Janeiro(RJ)</option>\n");
      out.write("                <option value=\"Rio Grande do Norte\">Rio Grande do Norte(RN)</option>\n");
      out.write("                <option value=\"Rio Grande do Norte\">Rio Grande do Sul(RS)</option>\n");
      out.write("                <option value=\"Rondônia\">Rondônia(RO)</option>\n");
      out.write("                <option value=\"Roraima\">Roraima(RR)</option>\n");
      out.write("                <option value=\"Santa Catarina\">Santa Catarina(SC)</option>\n");
      out.write("                <option value=\"São Paulo\">São Paulo(SP)</option>\n");
      out.write("                <option value=\"Sergipe\">Sergipe(SE)</option>\n");
      out.write("                <option value=\"Tocantins\">Tocantins(TO)</option>\n");
      out.write("            </select>\n");
      out.write("            <label>Cidade:</label>\n");
      out.write("            <input name=\"cidade_fornecedor\" required=\"required\" type=\"text\" value=\"");
      out.print(request.getParameter("cidade_fornecedor"));
      out.write("\"/><br/><br/>\n");
      out.write("\n");
      out.write("            <label>CEP:</label>\n");
      out.write("            <input name=\"cep_fornecedor\" required=\"required\" type=\"text\" minlength=\"8\" maxlength=\"8\" value=\"");
      out.print(request.getParameter("cep_fornecedor"));
      out.write("\"/><br/><br/>\n");
      out.write("\n");
      out.write("            <label>Telefone:</label>\n");
      out.write("            <input name=\"telefone_fornecedor\" required=\"required\" minlength=\"11\" maxlength=\"11\" type=\"text\" value=\"");
      out.print(request.getParameter("telefone_fornecedor"));
      out.write("\"/><br><br/>\n");
      out.write("            <input type=\"submit\" value=\"Editar\"/>\n");
      out.write("        </form>\n");
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
