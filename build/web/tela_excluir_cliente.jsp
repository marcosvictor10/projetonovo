<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir Cliente</title>
    </head>
    <body>
        <h1>Excluir Cliente</h1>

        <form action="executar_excluir_cliente.jsp" method="post" >

            <input name="id_cliente" type="text" value="<%=request.getParameter("id_cliente")%>" style="display:none; visibility:hidden;"/>

            <label>Nome Cliente:</label>
            <input name="nome_cliente" required="required" type="text" value="<%=request.getParameter("nome_cliente")%>"/><br><br>

            <label>Data Nascimento:</label>
            <input name="nasc_cliente" required="required" type="date" value="<%=request.getParameter("nasc_cliente")%>"/><br><br>

            <label>CPF:</label>
            <input name="cpf_cliente" required="required" type="text" minlength="11" maxlength="11" value="<%=request.getParameter("cpf_cliente")%>" /><br><br>

            <label>Telefone:</label>
            <input name="telefone_cliente" required="required" type="text" minlength="11" maxlength="11" value="<%=request.getParameter("telefone_cliente")%>" /><br><br>

            <label>E-mail:</label>
            <input name="email_cliente" required="required" type="text" value="<%=request.getParameter("email_cliente")%>"/><br><br>

            <input type="submit" value="Excluir"/><br><br>
        </form>

    </body>
</html>

