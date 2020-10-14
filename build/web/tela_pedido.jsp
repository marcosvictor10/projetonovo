
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
            <input name="cpf_cliente" required="required" type="text" placeholder="000.000.000-00"/>
            <button name="buscar_cont">Buscar</button><br><br>
            
            <label>Nome Cliente:</label>
            <input name="nome_cliente" required="required" type="text" placeholder="Nome"/><br><br>
            
            <label>Nome Produto:</label>
            <input name="nome_produto" required="required" type="text" placeholder="Nome Produto"/>
            <button name="buscar_cont">Buscar</button><br><br>
            
            <label>Código Produto:</label>
            <input name="id_produto" required="required" type="text" placeholder="Código Produto"/><br><br>
            
            <label>Valor Produto:</label>
            <input name="valor_produto" required="required" type="text" placeholder="R$"/><br><br>
            
            <label>Qtde. Produto:</label>
            <input name="quantidade_pedido" required="required" type="text" placeholder="Qtde. Produto"/><br><br>
            
            <button name="inserir">Inserir</button><button name="finalizar">Finalizar Pedido</button><br><br>
            
        </form>
        
        <table border="1">
            <tr>
                <td>Número Pedido</td>
                <td>CPF</td>
                <td>Nome Cliente</td>                
                <td>Código Produto</td>
                <td>Nome Produto</td>
                <td>Quantidade Produto</td>
                <td>Valor Produto</td>                
                <td>Editar</td>
                <td>Excluir</td>
            </tr>
    </body>
</html>
