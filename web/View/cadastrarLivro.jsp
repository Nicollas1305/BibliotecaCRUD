<%-- 
    Document   : cadastrarLivro
    Created on : 05/12/2020, 11:53:26
    Author     : Nicollas1305
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Livro</title>
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
            <form method="get" action="salvarLivro.jsp">
                Exemplar: <input type="text" name="exemplar"><br>
                Autor: <input type="text" name="autor"><br>
                Edição: <input type="text" name="edicao"><br>
                Ano: <input type="text" name="ano"><br>
                Disponibilidade: <input type="text" name="disponibilidade"><br>
                <input type="submit" value="  Finalizar cadastro!  " name="salvar" ><br>

            </form>
        </div>
    </body>
</html>
