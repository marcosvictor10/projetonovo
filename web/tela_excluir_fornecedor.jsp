<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir</title>
    </head>
    <body>
        <h1>Excluir Fornecedor</h1>
        
       <form action="executar_excluir_fornecedor.jsp?id_fornecedor=<%=request.getParameter("id_fornecedor")%>"  method="post">

            <label>CNPJ:</label>
            <input name="cnpj_fornecedor" required="required" type="text" minlength="14" maxlength="14" value="<%=request.getParameter("cnpj_fornecedor")%>"/><br/><br/>

            <label>Nome Fornecedor:</label>
            <input name="nome_fornecedor" required="required" type="text" value="<%=request.getParameter("nome_fornecedor")%>"/><br/><br/>

            <label>Endereço:</label>
            <input name="endereco_fornecedor" required="required" type="text" value="<%=request.getParameter("endereco_fornecedor")%>"/>
            <label>Número:</label>
            <input name="numero_fornecedor" required="required" type="text" value="<%=request.getParameter("numero_fornecedor")%>"/><br/><br/>

            <label>Estado:</label>
            <select name="estado_fornecedor" value="<%= request.getAttribute("estado_fornecedor")%>" >>
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
            <input name="cidade_fornecedor" required="required" type="text" value="<%=request.getParameter("cidade_fornecedor")%>"/><br/><br/>

            <label>CEP:</label>
            <input name="cep_fornecedor" required="required" type="text" minlength="8" maxlength="8" value="<%=request.getParameter("cep_fornecedor")%>"/><br/><br/>

            <label>Telefone:</label>
            <input name="telefone_fornecedor" required="required" minlength="11" maxlength="11" type="text" value="<%=request.getParameter("telefone_fornecedor")%>"/><br><br/>
            <input type="submit" value="Excluir"/>
        </form>
    </body>
</html>
