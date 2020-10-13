<%@page import="controle.ControleFuncionario"%>

<%
    ControleFuncionario controleFuncionario = new ControleFuncionario();
    String cpf = request.getParameter("usuario_login");
    String senha = request.getParameter("senha_login");
    controleFuncionario.logar(cpf, senha);

    if (controleFuncionario.result == true) {
        response.sendRedirect("tela_home.jsp");
    }else { 
        out.print("<script>window.onload = function() { alert('Usuário ou Senha incorreto');}</script>");
        out.print("<script>setTimeout(function(){ window.location.href = 'tela_login.jsp' }, 1000);</script>");
    }  
%>
