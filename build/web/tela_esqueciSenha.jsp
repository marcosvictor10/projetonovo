<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Cadastrar Nova Senha</title>
    </head>
    <body>
        <form method="post" action="">
            <h1>Redefinição de Senha</h1>

            <label>Usuário:</label>
            <input name="usuario_esquecimento" required="required" type="text" placeholder="Apvictor" /><br/><br/>

            <!-- Haverá um if que fará a validação do usuário com o banco, o if estando true, irá aparecer as dicas -->
            <h3>Perguntas de Segurança da Senha</h3>
            <label>Cor preferida:</label>
            <input name="dica1_esquecimento" required="required" type="text" placeholder="Azul" /><br/><br/>

            <label>Ano de nascimento:</label>
            <input name="dica2_esquecimento" required="required" type="text" placeholder="1998" /><br/><br/>

            <label>Apelido:</label>
            <input name="dica3_esquecimento" required="required" type="text" placeholder="Armandinho" /><br><br/>

            <h3>Cadastre uma Nova Senha</h3>
            <p>Necessário 4 a 8 caracteres</p>

            <!-- Haverá um if que fará validação das dicas com o banco, o if estando true, virá os inputs para trocar senha -->
            <label>Nova senha:</label>
            <input name="senha_esquecimento" required="required" type="password" placeholder="Nova Senha" minlength="4" maxlength="8"/><br/><br/>

            <button type="submit">Cadastrar</button><br><br>

            Lembrou? <a href="login.jsp">Clique aqui</a>
        </form>
    </body>
</html>