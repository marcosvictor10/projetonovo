<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Cadastro</title>
    </head>
    <body>

        <form method="post" action="executar_cadastro_funcionario.jsp">
            <h1>Cadastro</h1>

            <label>Nome:</label>
            <input name="nome_cadastro" required="required" type="text" autocomplete="off" placeholder="Nome Completo" /><br/><br/>

            <label>CPF:</label>
            <input name="cpf_cadastro" required="required" type="tel" autocomplete="off" placeholder="000.000.000-00" minlength="14" maxlength="14" /><br/><br/>

            <label>Nascimento:</label>
            <input name="nascimento_cadastro" autocomplete="off" required="required" type="date" /><br/><br/>

            <label>E-Mail:</label>
            <input name="email_cadastro" required="required" autocomplete="off" type="email" placeholder="softfarma@softfarma.com" /><br/><br/>

            <label>Telefone:</label>
            <input name="telefone_cadastro" required="required" autocomplete="off" type="tel" placeholder="(00)00000-0000" minlength="13" maxlength="14" /><br/><br/>

            <label>Tipo de Funcionário:</label>
            <select name="tipo_cadastro" >
                <option value="Administrador">Administrador</option>
                <option value="Atendente">Atendente</option>
                <option value="Gerente">Gerente</option>
            </select>

            <p><b>Necessário 4 a 6 caracteres </b></p>
            <label>Senha:</label>
            <input name="senha_cadastro" required="required" autocomplete="off" type="password" placeholder="Senha" maxlength="6" minlength="4" /><br/><br/>

            <p><b>Dicas de segurança da senha</b></p>
            <label>Cor preferida:</label>
            <input name="dica1_cadastro" required="required" type="text" autocomplete="off" placeholder="Azul" /><br/><br/>
            <label>Ano de nascimento:</label>
            <input name="dica2_cadastro" required="required" type="number" autocomplete="off" placeholder="1998" minlength="4" maxlength="4" /><br/><br/>
            <label>Apelido:</label>
            <input name="dica3_cadastro" required="required" type="text" autocomplete="off" placeholder="Armandinho" /><br/><br/>

            <input type="submit" value="Cadastrar"/>
            <button name="voltar" onClick="javaScript:history.back(1)">Voltar</button>            
        </form>
    </body>
</html>