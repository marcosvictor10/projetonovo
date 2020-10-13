<%@page import="java.util.ArrayList"%>
<%@page import="controle.ControleFornecedor"%>
<%@page import="modelo.ModeloFornecedor"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Cadastro Fornecedor</title>
    </head>
    <body>

        <h1>Cadastro Fornecedor</h1>

        <form method="post" action="executar_editar_fornecedor.jsp">

            <label>CNPJ:</label>
            <input name="cnpj_fornecedor" required="required" type="text" minlength="14" maxlength="14" placeholder="00.000.000/0000-00"/><br/><br/>

            <label>Nome Fornecedor:</label>
            <input name="nome_fornecedor" required="required" type="text" placeholder="Nome Fornecedor" /><br/><br/>

            <label>Endereço:</label>
            <input name="endereco_fornecedor" required="required" type="text" placeholder="Endereço"/>
            <label>Número:</label>
            <input name="numero_fornecedor" required="required" type="text" placeholder="00"/><br/><br/>

            <label>Estado:</label>
            <select name="estado_fornecedor">
                <option value="Acre">Acre(AC)</option>
                <option value="Alagoas">Alagoas(AL)</option>
                <option value="Amapá">Amapá(AP)</option>
                <option value="Amazonas">Amazonas(AM)</option>
                <option value="Bahia">Bahia(BA)</option>
                <option value="Ceará">Ceará(CE)</option>
                <option value="Distrito Federal">Distrito Federal(DF)</option>
                <option value="Espírito Santo">Espírito Santo(ES)</option>
                <option value="Goias">Goiás(GO)</option>
                <option value="Maranhão">Maranhão(MA)</option>
                <option value="Mato Grosso">Mato Grosso(MT)</option>
                <option value="Mato Grosso Sul">Mato Grosso do Sul(MS)</option>
                <option value="Minas Gerais">Minas Gerais(MG)</option>
                <option value="Pará">Pará(PA)</option>
                <option value="Paraíba">Paraíba(PB)</option>
                <option value="Paraná">Paraná(PR)</option>
                <option value="Pernanbuco">Pernambuco(PE)</option>
                <option value="Piauí">Piauí(PI)</option>
                <option value="Rio de Janeiro">Rio de Janeiro(RJ)</option>
                <option value="Rio Grande do Norte">Rio Grande do Norte(RN)</option>
                <option value="Rio Grande do Norte">Rio Grande do Sul(RS)</option>
                <option value="Rondônia">Rondônia(RO)</option>
                <option value="Roraima">Roraima(RR)</option>
                <option value="Santa Catarina">Santa Catarina(SC)</option>
                <option value="São Paulo">São Paulo(SP)</option>
                <option value="Sergipe">Sergipe(SE)</option>
                <option value="Tocantins">Tocantins(TO)</option>
            </select>
            <label>Cidade:</label>
            <input name="cidade_fornecedor" required="required" type="text" placeholder="Cidade"/><br/><br/>

            <label>CEP:</label>
            <input name="cep_fornecedor" required="required" type="text" minlength="8" maxlength="8" placeholder="00000-000"/><br/><br/>

            <label>Telefone:</label>
            <input name="telefone_fornecedor" required="required" type="text" minlength="11" maxlength="11" placeholder="(00)0000-0000"><br><br/>
            <input type="submit" value="Cadastrar"/>
        </form><br><br>
        
        <table border="1">
            <tr>
                <td>Código Fornecedor</td>
                <td>CNPJ</td>
                <td>Nome Fornecedor</td>
                <td>Endereço</td>
                <td>Número</td>
                <td>Estado</td>
                <td>Cidade</td>
                <td>C.E.P</td>
                <td>Telefone</td>
                <td>Editar</td>
                <td>Excluir</td>
            </tr>
            <%
                ArrayList<ModeloFornecedor> lista = new ControleFornecedor().getFornecedor();
                for (int i = 0; i < lista.size(); i++) {
                    out.println("<tr>");
                    out.println("<td>" + lista.get(i).getId() + "</td>");
                    out.println("<td>" + lista.get(i).getCnpj() + "</td>");
                    out.println("<td>" + lista.get(i).getNome() + "</td>");
                    out.println("<td>" + lista.get(i).getEndereco() + "</td>");
                    out.println("<td>" + lista.get(i).getNumero() + "</td>");
                    out.println("<td>" + lista.get(i).getEstado() + "</td>");
                    out.println("<td>" + lista.get(i).getCidade() + "</td>");
                    out.println("<td>" + lista.get(i).getCep() + "</td>");
                    out.println("<td>" + lista.get(i).getTelefone() + "</td>");
                    out.print("<td colspan='1' align='center'><a href='tela_editar_fornecedor.jsp?id_fornecedor=" + lista.get(i).getId()                            
                            + "&id_fornecedor=" + lista.get(i).getId()
                            + "&cnpj_fornecedor=" + lista.get(i).getCnpj()
                            + "&nome_fornecedor=" + lista.get(i).getNome()
                            + "&endereco_fornecedor=" + lista.get(i).getEndereco()
                            + "&numero_fornecedor=" + lista.get(i).getNumero()
                            + "&estado_fornecedor=" + lista.get(i).getEstado()
                            + "&cidade_fornecedor=" + lista.get(i).getCidade()
                            + "&cep_fornecedor=" + lista.get(i).getCep()
                            + "&telefone_fornecedor=" + lista.get(i).getTelefone()
                            + " '><input type='submit' value='Editar'/></a></td>");

                    out.print("<td colspan='1' align='center'><a href='tela_excluir_fornecedor.jsp?id_fornecedor=" + lista.get(i).getId()
                            + "&id_fornecedor=" + lista.get(i).getId()
                            + "&cnpj_fornecedor=" + lista.get(i).getCnpj()
                            + "&nome_fornecedor=" + lista.get(i).getNome()
                            + "&endereco_fornecedor=" + lista.get(i).getEndereco()
                            + "&numero_fornecedor=" + lista.get(i).getNumero()
                            + "&estado_fornecedor=" + lista.get(i).getEstado()
                            + "&cidade_fornecedor=" + lista.get(i).getCidade()
                            + "&cep_fornecedor=" + lista.get(i).getCep()
                            + "&telefone_fornecedor=" + lista.get(i).getTelefone()
                            + " '><input type='submit' value='Excluir'/></a></td>");
                    out.println("</tr>");
                }
            %>
        </table>

    </body>
</html>
