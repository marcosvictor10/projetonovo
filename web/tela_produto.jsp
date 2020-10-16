<%@page import="controle.ControleProduto"%>
<%@page import="modelo.ModeloProduto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Cadastro Produto</title>

        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/estilo_cadastro_produto.css">
    </head>
    <body>
        <div class="row">

            <div class="col-6 pl-5 p-0">
                <div class="container-menu rounded">
                    <h1 id="titulo">Cadastro Produto</h1>

                    <form method="post" action="executar_cadastro_produto.jsp">  
                        <div class="input-group mb-3 mx-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">Código Fonecedor</span>
                            </div>
                            <input name="id_fornecedor" class="form-control" required="required" type="text" placeholder="Código Fornecedor" />
                        </div>
                        <div class="input-group mb-3 mx-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">Nome Produto</span>
                            </div>
                            <input name="nome_produto" class="form-control" required="required" type="text" placeholder="Nome Produto" />
                        </div>
                        <div class="input-group mb-3 mx-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">Tipo Produto</span>
                            </div>
                            <select name="tipo_produto" class="form-control">
                                <option >Comprimido</option>
                                <option >Gotas</option>
                                <option >Xarope</option>
                                <option >Pomada</option>
                            </select>
                        </div>
                        <div class="input-group mb-3 mx-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">Dosagem Medicamento</span>
                            </div>
                            <input name="dosagem_produto" class="form-control" required="required" type="text" placeholder="Dosagem Medicamento" />
                        </div>
                        <div class="input-group mb-3 mx-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">Código de Barras</span>
                            </div>
                            <input name="codBarras_produtos" class="form-control" required="required" type="text" placeholder="Código de Barras" />               
                        </div>
                        <div class="input-group mb-3 mx-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">Data de Fabricação</span>
                            </div>
                            <input name="dt_fabricacao" class="form-control" required="required" type="date" />
                        </div>    
                        <div class="input-group mb-3 mx-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">Data de Validade</span>
                            </div>
                            <input name="dt_validade" class="form-control" required="required" type="date" />
                        </div>
                        <div class="input-group mb-3 mx-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">Quantidade do Produto</span>
                            </div>
                            <input name="quantidade_produto" class="form-control" required="required" type="text" placeholder="Quantidade Produto" />
                        </div>
                        <div class="input-group mb-3 mx-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">Valor Produto</span>
                            </div>
                            <input name="valor_produto" class="form-control" required="required" type="text" placeholder="R$ 0,00" />
                        </div>    
                        <input class="btn btn-success btn-lg" type="submit" value="Cadastrar"/>
                    </form>
                </div>
                <br>
            </div>       

            <div class="col-6 pr-5 p-0">

                <div class="container-figura rounded">
                    <div class="opacity-img"></div>

                </div>
            </div> 

        </div>               

        <table border="1">
            <tr>
                <td>Código Produto</td>
                <td>Código Fornecedor</td>
                <td>Nome Produto</td>
                <td>Tipo de Produto</td>
                <td>Dosagem Medicamento</td>
                <td>Código de Barras</td>
                <td>Data Fabricação</td>
                <td>Data Validade</td>
                <td>Quantidade Produto</td>
                <td>Valor Produto</td>
                <td>Editar</td>
                <td>Excluir</td>
            </tr>
            <%
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
            %>
        </table>
    </body>
</html>
