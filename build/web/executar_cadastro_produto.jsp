<%@page import="controle.ControleProduto"%>
<%@page import="modelo.ModeloProduto"%>
<%
    ModeloProduto modeloProduto = new ModeloProduto();
    modeloProduto.setCodigoFornecedor(Integer.valueOf(request.getParameter("id_fornecedor")));
    modeloProduto.setNome(request.getParameter("nome_produto"));
    modeloProduto.setTipo(request.getParameter("tipo_produto"));
    modeloProduto.setDosagem(request.getParameter("dosagem_produto"));
    modeloProduto.setCodigoBarras(request.getParameter("codBarras_produtos"));
    modeloProduto.setDataFabricacao(request.getParameter("dt_fabricacao"));
    modeloProduto.setDataValidade(request.getParameter("dt_validade"));
    modeloProduto.setQuantidade(Integer.valueOf(request.getParameter("quantidade_produto")));
    modeloProduto.setValor(request.getParameter("valor_produto"));
    
    new ControleProduto().Cadastrar(modeloProduto);
    response.sendRedirect("tela_produto.jsp");
%>