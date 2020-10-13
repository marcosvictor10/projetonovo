<%@page import="controle.ControleCliente"%>
<%@page import="modelo.ModeloCliente"%>
<%
    ModeloCliente modeloCliente = new ModeloCliente();
    modeloCliente.setId(Integer.valueOf(request.getParameter("id_cliente")));
    modeloCliente.setNome(request.getParameter("nome_cliente"));
    modeloCliente.setDataNasc(request.getParameter("nasc_cliente"));
    modeloCliente.setCpf(request.getParameter("cpf_cliente"));
    modeloCliente.setTelefone(request.getParameter("telefone_cliente"));
    modeloCliente.setEmail(request.getParameter("email_cliente"));

    new ControleCliente().Alterar(modeloCliente);
    response.sendRedirect("tela_cliente.jsp");
%>