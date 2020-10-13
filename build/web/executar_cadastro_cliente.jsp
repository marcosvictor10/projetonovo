<%@page import="controle.ControleCliente"%>
<%@page import="modelo.ModeloCliente"%>
<%@page import="controle.ControleFornecedor"%>
<%@page import="modelo.ModeloFornecedor"%>
<%
    ModeloCliente modeloCliente = new ModeloCliente();
    modeloCliente.setNome(request.getParameter("nome_cliente"));
    modeloCliente.setDataNasc(request.getParameter("nasc_cliente"));
    modeloCliente.setCpf(request.getParameter("cpf_cliente"));
    modeloCliente.setTelefone(request.getParameter("telefone_cliente"));
    modeloCliente.setEmail(request.getParameter("email_cliente"));

    new ControleCliente().Cadastrar(modeloCliente);
    response.sendRedirect("tela_cliente.jsp");
%>