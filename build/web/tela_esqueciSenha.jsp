<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Cadastrar Nova Senha</title>
    </head>
    <body>
        <form method="post" action="">
            <h1>Redefini��o de Senha</h1>

            <label>Usu�rio:</label>
            <input name="usuario_esquecimento" required="required" type="text" placeholder="Apvictor" /><br/><br/>

            <!-- Haver� um if que far� a valida��o do usu�rio com o banco, o if estando true, ir� aparecer as dicas -->
            <h3>Perguntas de Seguran�a da Senha</h3>
            <label>Cor preferida:</label>
            <input name="dica1_esquecimento" required="required" type="text" placeholder="Azul" /><br/><br/>

            <label>Ano de nascimento:</label>
            <input name="dica2_esquecimento" required="required" type="text" placeholder="1998" /><br/><br/>

            <label>Apelido:</label>
            <input name="dica3_esquecimento" required="required" type="text" placeholder="Armandinho" /><br><br/>

            <h3>Cadastre uma Nova Senha</h3>
            <p>Necess�rio 4 a 8 caracteres</p>

            <!-- Haver� um if que far� valida��o das dicas com o banco, o if estando true, vir� os inputs para trocar senha -->
            <label>Nova senha:</label>
            <input name="senha_esquecimento" required="required" type="password" placeholder="Nova Senha" minlength="4" maxlength="8"/><br/><br/>

            <button type="submit">Cadastrar</button><br><br>

            Lembrou? <a href="login.jsp">Clique aqui</a>
        </form>
    </body>
</html>