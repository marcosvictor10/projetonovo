<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar</title>
    </head>
    <body>
        <h1>Alterar Produto</h1>

        <form action="executar_editar_produto.jsp" method="post">  

            
            <input name="id_produto" type="text" value="<%= request.getParameter("id_produto")%>" style="display:none; visibility:hidden;"/>

            
            <input name="id_fornecedor" type="text" value="<%= request.getParameter("id_fornecedor")%>" style="display:none; visibility:hidden;"/>

            <label>Nome Produto:</label>
            <input name="nome_produto"  type="text" value="<%= request.getParameter("nome_produto")%>" /><br><br>

            <label>Tipo de Produto:</label>
            <select name="tipo_produto" value="<%= request.getAttribute("tipo_produto")%>" >
                <option name="tipo_produto">Comprimido</option>
                <option name="tipo_produto">Gotas</option>
                <option name="tipo_produto">Xarope</option>
                <option name="tipo_produto">Pomada</option>
            </select><br><br>

            <label>Dosagem Medicamento: </label>
            <input name="dosagem_produto" type="text" value="<%= request.getParameter("dosagem_produto")%>"/><br><br>

            <label>Código de Barras:</label>
            <input name="codBarras_produtos" type="text" value="<%= request.getParameter("codBarras_produtos")%>" /><br><br>               

            <label>Data Fabricação:</label>
            <input name="dt_fabricacao" type="date" value="<%= request.getParameter("dt_fabricacao")%>" /><br><br>

            <label>Data Validade:</label>
            <input name="dt_validade" type="date" value="<%= request.getParameter("dt_validade")%>" /><br><br>

            <label>Quantidade Produto:</label>
            <input name="quantidade_produto" type="text"  value="<%= request.getParameter("quantidade_produto")%>" /><br><br>

            <label>Valor Produto:</label>
            <input name="valor_produto" type="text" value="<%= request.getParameter("valor_produto")%>" /><br><br>           
            <input type="submit" value="Editar"/>
        </form>
    </body>
</html>
