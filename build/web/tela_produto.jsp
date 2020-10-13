<%@page import="controle.ControleProduto"%>
<%@page import="modelo.ModeloProduto"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Cadastro Produto</title>
    </head>
    <body>

        <h1>Cadastro Produto</h1>

        <form method="post" action="executar_cadastro_produto.jsp">  

            <label>Código Fornecedor:</label>
            <input name="id_fornecedor" required="required" type="text" placeholder="Código Fornecedor" /><br><br>

            <label>Nome Produto:</label>
            <input name="nome_produto" required="required" type="text" placeholder="Nome Produto" /><br><br>

            <label>Tipo de Produto:</label>
            <select name="tipo_produto" >
                <option >Comprimido</option>
                <option >Gotas</option>
                <option >Xarope</option>
                <option >Pomada</option>
            </select><br><br>

            <label>Dosagem Medicamento: </label>
            <input name="dosagem_produto" required="required" type="text" placeholder="Dosagem Medicamento" /><br><br>

            <label>Código de Barras:</label>
            <input name="codBarras_produtos" required="required" type="text" placeholder="Código de Barras" /><br><br>               

            <label>Data Fabricação:</label>
            <input name="dt_fabricacao" required="required" type="date" /><br><br>

            <label>Data Validade:</label>
            <input name="dt_validade" required="required" type="date" /><br><br>

            <label>Quantidade Produto:</label>
            <input name="quantidade_produto" required="required" type="text" placeholder="Quantidade Produto" /><br><br>

            <label>Valor Produto:</label>
            <input name="valor_produto" required="required" type="text" placeholder="R$ 0,00" /><br><br>           
            <input type="submit" value="Cadastrar"/>
        </form><br>

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
