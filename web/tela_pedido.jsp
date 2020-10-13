
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pedido</title>
    </head>
    <body>
        <h1>Pedido</h1>
        
        <form method="post" action="action">
            <label>CPF:</label>
            <input name="cpf_cliente" required="required" type="text" placeholder="000.000.000-00"/><br><br>
            
            <label>Nome Cliente:</label>
            <input name="nome_cliente" required="required" type="text" placeholder="Nome"/><br><br>
            
            <label>Código Produto:</label>
            <input name="id_produto" required="required" type="text" placeholder="Código Produto"/>
            
            <label>Código Funcionário:</label>
            <input name="id_funcionario" required="required" type="text" placeholder="Código Funcionario"/><br><br>
            
            <label>Nome Produto:</label>
            <input name="nome_produto" required="required" type="text" placeholder="Nome Produto"/>
            
            <label>Qtde. Produto:</label>
            <input name="quantidade_pedido" required="required" type="text" placeholder="Qtde. Produto"/><br><br>
            
            <label>Valor Produto:</label>
            <input name="valor_produto" required="required" type="text" placeholder="R$"/>
            
            <label>Valor Total:</label>
            <input name="valor_total" required="required" type="text" placeholder="R$"/><br><br>
        </form>
        
        <table border="1">
            <tr>
                <td>Número Pedido</td>
                <td>CPF</td>
                <td>Nome Cliente</td>
                <td>Código Funcionário</td>
                <td>Código Produto</td>
                <td>Nome Produto</td>
                <td>Quantidade Produto</td>
                <td>Valor Produto</td>
                <td>Valor Total</td>
                <td>Editar</td>
                <td>Excluir</td>
            </tr>
    </body>
</html>
