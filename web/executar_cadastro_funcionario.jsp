<%@page import="controle.ControleFuncionario"%>
<%@page import="modelo.ModeloFuncionario"%>

<%
    ModeloFuncionario modeloFuncionario = new ModeloFuncionario();
    modeloFuncionario.setNome(request.getParameter("nome_cadastro"));
    modeloFuncionario.setCpf(request.getParameter("cpf_cadastro"));
    modeloFuncionario.setNascimento(request.getParameter("nascimento_cadastro"));
    modeloFuncionario.setEmail(request.getParameter("email_cadastro"));
    modeloFuncionario.setTelefone(request.getParameter("telefone_cadastro"));
    modeloFuncionario.setTipo(request.getParameter("tipo_cadastro"));
    modeloFuncionario.setSenha(request.getParameter("senha_cadastro"));
    modeloFuncionario.setDica1(request.getParameter("dica1_cadastro"));
    modeloFuncionario.setDica2(request.getParameter("dica2_cadastro"));
    modeloFuncionario.setDica3(request.getParameter("dica3_cadastro"));
    
    new ControleFuncionario().Cadastrar(modeloFuncionario);
    response.sendRedirect("tela_login.jsp");
%>