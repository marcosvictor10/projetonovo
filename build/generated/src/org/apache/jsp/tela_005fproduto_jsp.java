package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import controle.ControleProduto;
import modelo.ModeloProduto;
import java.util.ArrayList;

public final class tela_005fproduto_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Cadastro Produto</title>\r\n");
      out.write("        \r\n");
      out.write("        <link rel=\"stylesheet\"\r\n");
      out.write("              href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css\">\r\n");
      out.write("        <script\r\n");
      out.write("        src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"css/estilo_cadastro_pedido.css\">\r\n");
      out.write("    </head>\r\n");
      out.write("    <body>\r\n");
      out.write("\r\n");
      out.write("        <h1>Cadastro Produto</h1>\r\n");
      out.write("\r\n");
      out.write("        <form method=\"post\" action=\"executar_cadastro_produto.jsp\">  \r\n");
      out.write("\r\n");
      out.write("            <label>Código Fornecedor:</label>\r\n");
      out.write("            <input name=\"id_fornecedor\" required=\"required\" type=\"text\" placeholder=\"Código Fornecedor\" /><br><br>\r\n");
      out.write("\r\n");
      out.write("            <label>Nome Produto:</label>\r\n");
      out.write("            <input name=\"nome_produto\" required=\"required\" type=\"text\" placeholder=\"Nome Produto\" /><br><br>\r\n");
      out.write("\r\n");
      out.write("            <label>Tipo de Produto:</label>\r\n");
      out.write("            <select name=\"tipo_produto\" >\r\n");
      out.write("                <option >Comprimido</option>\r\n");
      out.write("                <option >Gotas</option>\r\n");
      out.write("                <option >Xarope</option>\r\n");
      out.write("                <option >Pomada</option>\r\n");
      out.write("            </select><br><br>\r\n");
      out.write("\r\n");
      out.write("            <label>Dosagem Medicamento: </label>\r\n");
      out.write("            <input name=\"dosagem_produto\" required=\"required\" type=\"text\" placeholder=\"Dosagem Medicamento\" /><br><br>\r\n");
      out.write("\r\n");
      out.write("            <label>Código de Barras:</label>\r\n");
      out.write("            <input name=\"codBarras_produtos\" required=\"required\" type=\"text\" placeholder=\"Código de Barras\" /><br><br>               \r\n");
      out.write("\r\n");
      out.write("            <label>Data Fabricação:</label>\r\n");
      out.write("            <input name=\"dt_fabricacao\" required=\"required\" type=\"date\" /><br><br>\r\n");
      out.write("\r\n");
      out.write("            <label>Data Validade:</label>\r\n");
      out.write("            <input name=\"dt_validade\" required=\"required\" type=\"date\" /><br><br>\r\n");
      out.write("\r\n");
      out.write("            <label>Quantidade Produto:</label>\r\n");
      out.write("            <input name=\"quantidade_produto\" required=\"required\" type=\"text\" placeholder=\"Quantidade Produto\" /><br><br>\r\n");
      out.write("\r\n");
      out.write("            <label>Valor Produto:</label>\r\n");
      out.write("            <input name=\"valor_produto\" required=\"required\" type=\"text\" placeholder=\"R$ 0,00\" /><br><br>           \r\n");
      out.write("            <input type=\"submit\" value=\"Cadastrar\"/>\r\n");
      out.write("        </form><br>\r\n");
      out.write("\r\n");
      out.write("        <table border=\"1\">\r\n");
      out.write("            <tr>\r\n");
      out.write("                <td>Código Produto</td>\r\n");
      out.write("                <td>Código Fornecedor</td>\r\n");
      out.write("                <td>Nome Produto</td>\r\n");
      out.write("                <td>Tipo de Produto</td>\r\n");
      out.write("                <td>Dosagem Medicamento</td>\r\n");
      out.write("                <td>Código de Barras</td>\r\n");
      out.write("                <td>Data Fabricação</td>\r\n");
      out.write("                <td>Data Validade</td>\r\n");
      out.write("                <td>Quantidade Produto</td>\r\n");
      out.write("                <td>Valor Produto</td>\r\n");
      out.write("                <td>Editar</td>\r\n");
      out.write("                <td>Excluir</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            ");

                ArrayList<ModeloProduto> lista = new ControleProduto().getProduto();
                for (int i = 0; i < lista.size(); i++) {
                    out.println("<tr>");
                    out.println("<td>" + lista.get(i).getCodigoProduto() + "</td>");
                    out.println("<td>" + lista.get(i).getCodigoFornecedor() + "</td>");
                    out.println("<td>" + lista.get(i).getNome() + "</td>");
                    out.println("<td>" + lista.get(i).getTipo() + "</td>");
                    out.println("<td>" + lista.get(i).getDosagem() + "</td>");
                    out.println("<td>" + lista.get(i).getCodigoBarras() + "</td>");
                    out.println("<td>" + lista.get(i).getDataFabricacao() + "</td>");
                    out.println("<td>" + lista.get(i).getDataValidade() + "</td>");
                    out.println("<td>" + lista.get(i).getQuantidade() + "</td>");
                    out.println("<td>" + lista.get(i).getValor() + "</td>");
                    out.print("<td colspan='1' align='center'><a href='tela_editar_produto.jsp?id_produto=" + lista.get(i).getCodigoProduto()
                            + "&id_fornecedor=" + lista.get(i).getCodigoFornecedor()
                            + "&nome_produto=" + lista.get(i).getNome()
                            + "&tipo_produto=" + lista.get(i).getTipo()
                            + "&dosagem_produto=" + lista.get(i).getDosagem()
                            + "&codBarras_produtos=" + lista.get(i).getCodigoBarras()
                            + "&dt_fabricacao=" + lista.get(i).getDataFabricacao()
                            + "&dt_validade=" + lista.get(i).getDataValidade()
                            + "&quantidade_produto=" + lista.get(i).getQuantidade()
                            + "&valor_produto=" + lista.get(i).getValor()
                            + " '><input type='submit' value='Editar'/></a></td>");

                    out.print("<td colspan='1' align='center'><a href='tela_excluir_produto.jsp?id_produto=" + lista.get(i).getCodigoProduto()
                            + "&id_fornecedor=" + lista.get(i).getCodigoFornecedor()
                            + "&nome_produto=" + lista.get(i).getNome()
                            + "&tipo_produto=" + lista.get(i).getTipo()
                            + "&dosagem_produto=" + lista.get(i).getDosagem()
                            + "&codBarras_produtos=" + lista.get(i).getCodigoBarras()
                            + "&dt_fabricacao=" + lista.get(i).getDataFabricacao()
                            + "&dt_validade=" + lista.get(i).getDataValidade()
                            + "&quantidade_produto=" + lista.get(i).getQuantidade()
                            + "&valor_produto=" + lista.get(i).getValor()
                            + " '><input type='submit' value='Excluir'/></a></td>");
                    out.println("</tr>");
                }
            
      out.write("\r\n");
      out.write("        </table>\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
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
