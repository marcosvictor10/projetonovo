<%@page import="java.util.ArrayList"%>
<%@page import="controle.ControleCliente"%>
<%@page import="modelo.ModeloCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastro Cliente</title>
    </head>
    <body>
        <h1>Cadastro Cliente</h1>

        <form method="post" action="executar_cadastro_cliente.jsp">
            
            <label>Nome:</label>
            <input name="nome_cliente" required="required" type="text" placeholder="Nome"/><br><br>

            <label>Data Nascimento:</label>
            <input name="nasc_cliente" required="required" type="date"/><br><br>
            
            <label>CPF:</label>
            <input name="cpf_cliente" required="required" type="text" placeholder="000.000.000-00" minlength="11" maxlength="11"/><br><br>

            <label>Telefone:</label>
            <input name="telefone_cliente" required="required" type="text" placeholder="(00)00000-0000" minlength="11" maxlength="11"/><br><br>

            <label>E-mail:</label>
            <input name="email_cliente" required="required" type="text" placeholder="softfarma@softfarma.com.br"/><br><br>

            <input type="submit" value="Cadastrar"/><br><br>
        </form>

        <table border="1">
            <tr>
                <td>Id Cliente</td>
                <td>Nome Cliente</td>
                <td>Data Nascimento</td>
                <td>CPF</td>
                <td>Telefone</td>
                <td>E-mail</td>
                <td>Editar</td>
                <td>Excluir</td>

            </tr>
        </tr>
        <%
            try {
                 
            ArrayList<ModeloCliente> lista = new ControleCliente().getCliente();
          
            for (int i = 0; i < lista.size(); i++) {
                out.println("<tr>");
                out.println("<td>" + lista.get(i).getId() + "</td>");
                out.println("<td>" + lista.get(i).getNome() + "</td>");
                out.println("<td>" + lista.get(i).getDataNasc() + "</td>");
                out.println("<td>" + lista.get(i).getCpf() + "</td>");
                out.println("<td>" + lista.get(i).getTelefone() + "</td>");
                out.println("<td>" + lista.get(i).getEmail() + "</td>");
                out.print("<td colspan='1' align='center'><a href='tela_editar_cliente.jsp?"
                        + "id_cliente=" + lista.get(i).getId()
                        + "&nome_cliente=" + lista.get(i).getNome()
                        + "&nasc_cliente=" + lista.get(i).getDataNasc()
                        + "&cpf_cliente=" + lista.get(i).getCpf()
                        + "&telefone_cliente=" + lista.get(i).getTelefone()
                        + "&email_cliente=" + lista.get(i).getEmail()
                        + " '><input type='submit' value='Editar'/></a></td>");

                out.print("<td colspan='1' align='center'><a href='tela_excluir_cliente.jsp?"
                        + "id_cliente=" + lista.get(i).getId()
                        + "&nome_cliente=" + lista.get(i).getNome()
                        + "&nasc_cliente=" + lista.get(i).getDataNasc()
                        + "&cpf_cliente=" + lista.get(i).getCpf()
                        + "&telefone_cliente=" + lista.get(i).getTelefone()
                        + "&email_cliente=" + lista.get(i).getEmail()
                        + " '><input type='submit' value='Excluir'/></a></td>");
                out.println("</tr>");
            }
            
               
                } catch (Exception e) {
                    out.println(e.getMessage());
                }
        %>            
    </table>   
</body>
</html>
