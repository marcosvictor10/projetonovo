<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<%@page import="conexao.Conexao"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Login</title>

        <link rel="stylesheet"
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script
        src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/estilo_login.css">

    </head>

    <body class="">
        <main class="w-100">
            <div class="row">
                <article class="cont-login col-md-6 text-center rounded-0-lg rounded-sm ">
                    <img src="img/header/logo.png" class="logo-img" alt="">
                    <p id="titulo">Tela de Login</p>

                    <form method="post" action="executar_entrar_login.jsp">
                        <div class="input-group mb-3 mx-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">Usuário</span>
                            </div>
                            <input class="form-control " name="usuario_login" required="required" type="text" placeholder="CPF">
                        </div>
                        <br>

                        <div class="input-group mb-3 mx-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text" id="basic-addon1">Senha</span>
                            </div>

                            <input  name="senha_login" class="form-control" required="required" type="password" placeholder="Senha">
                        </div>
                        <br>

                        <input class="btn btn-success btn-lg" type="submit" value="Entrar"/><br><br> 

                        <a href="tela_esqueciSenha.jsp"> Esqueci minha senha</a>
                        <p>Não possui Usuário?
                            <a href="tela_funcionario.jsp">Cadastre-se</a>
                        </p>
                    </form>  
                </article>

                <article class="col-sm-0 col-md-6 cont-img">


                    <div class="opacity-img"></div>

                </article>
            </div>
        </main>         
    </body>
</html>