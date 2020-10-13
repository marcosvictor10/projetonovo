<%@page import="controle.ControleProduto"%>
<%@page import="modelo.ModeloProduto"%>

<%
    String id = request.getParameter("id_produto");

    new ControleProduto().Excluir(Integer.valueOf(id));
    response.sendRedirect("tela_produto.jsp");
%>