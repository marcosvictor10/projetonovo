<%@page import="controle.ControleCliente"%>
<%
    String id = request.getParameter("id_cliente");

    new ControleCliente().Excluir(Integer.valueOf(id));
    response.sendRedirect("tela_cliente.jsp");
%>
