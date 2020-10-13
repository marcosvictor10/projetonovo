<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir</title>
    </head>
    <body>
        <h1>Excluir Produto</h1>

        <form action="executar_excluir_produto.jsp" method="post">  

            <label>Código Produto</label>
            <input name="id_produto" type="text" value="<%= request.getParameter("id_produto")%>" /><br><br>

            <label>Código Fornecedor:</label>
            <input name="id_fornecedor" type="text" value="<%= request.getParameter("id_fornecedor")%>" /><br><br>

            <label>Nome Produto:</label>
            <input name="nome_produto"  type="text" value="<%= request.getParameter("nome_produto")%>" /><br><br>

            <label>Tipo de Produto:</label>
            <select name="tipo_produto" value="<%= request.getParameter("tipo_produto")%>" >
                <option>Comprimido</option>
                <option>Gotas</option>
                <option>Xarope</option>
                <option>Pomada</option>
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
            <input type="submit" value="Excluir"/>
        </form>
    </body>
</html>
