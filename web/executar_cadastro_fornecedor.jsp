<%@page import="controle.ControleFornecedor"%>
<%@page import="modelo.ModeloFornecedor"%>
<%
    ModeloFornecedor modeloFornecedor = new ModeloFornecedor();
    modeloFornecedor.setCnpj(request.getParameter("cnpj_fornecedor"));
    modeloFornecedor.setNome(request.getParameter("nome_fornecedor"));
    modeloFornecedor.setEndereco(request.getParameter("endereco_fornecedor"));
    modeloFornecedor.setNumero(request.getParameter("numero_fornecedor"));
    modeloFornecedor.setEstado(request.getParameter("estado_fornecedor"));
    modeloFornecedor.setCidade(request.getParameter("cidade_fornecedor"));
    modeloFornecedor.setCep(request.getParameter("cep_fornecedor"));
    modeloFornecedor.setTelefone(request.getParameter("telefone_fornecedor"));

    new ControleFornecedor().Cadastrar(modeloFornecedor);
    response.sendRedirect("tela_fornecedor.jsp");
%>