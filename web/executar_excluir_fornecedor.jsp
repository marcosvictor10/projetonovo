<%@page import="controle.ControleFornecedor"%>
<%@page import="modelo.ModeloFornecedor"%>

<%
    String id = request.getParameter("id_fornecedor");

    new ControleFornecedor().Excluir(Integer.valueOf(id));
    response.sendRedirect("tela_fornecedor.jsp");
%>
