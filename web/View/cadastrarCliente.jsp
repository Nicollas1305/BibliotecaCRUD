<%-- 
    Document   : cadastrarCliente
    Created on : 03/12/2020, 01:01:51
    Author     : Nicollas1305
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Cliente</title>
        <link rel="stylesheet" href="../Styles.css">
    </head>
    <body>
        <div class="topnav">
            <a class="active" href="../index.html">Home</a>
            <a href="cadastrarCliente.jsp">Novo Cliente</a>
            <a href="cadastrarLivro.jsp">Novo Livro</a>
            <a href="exibirCliente.jsp">Exibir Clientes</a>
            <a href="exibirLivro.jsp">Exibir Livros</a>
        </div>
        
        <div class="formulario">
            <form method="get" action="salvarCliente.jsp">
                Nome: <input type="text" name="nome"><br>
                Data de Nascimento: <input type="text" name="dataNasc"><br>
                Sexo: <input type="text" name="sexo"><br>
                CPF: <input type="text" name="cpf"><br>
                Endereco: <input type="text" name="endereco"><br>
                Telefone: <input type="text" name="fone"><br>
                <input type="submit" value="  Finalizar cadastro!  " name="salvar" ><br>
            </form>
        </div>
    </body>
</html>
