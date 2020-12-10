<%-- 
    Document   : editarLivro
    Created on : 05/12/2020, 16:30:49
    Author     : Nicollas1305
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Livro</title>
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
        
        <jsp:useBean id="livro" scope="request" class="Entity.Livro" />
        <jsp:setProperty name="livro" property="idLivro"/>
        <jsp:setProperty name="livro" property="exemplar"/>
        <jsp:setProperty name="livro" property="autor"/>
        <jsp:setProperty name="livro" property="edicao"/>
        <jsp:setProperty name="livro" property="ano"/>
        <jsp:setProperty name="livro" property="disponibilidade"/>
        
        <div class="formulario">
            <form method="get" action="-alterarLivro.jsp">
                <input type="hidden" value="<jsp:getProperty name="livro" property="idLivro" />" name="idLivro" />
                Exemplar: <input type="text" name="exemplar" value="<jsp:getProperty name="livro" property="exemplar" />">
                Autor:  <input type="text" name="autor" value="<jsp:getProperty name="livro" property="autor" />">
                Edição: <input type="text" name="edicao" value="<jsp:getProperty name="livro" property="edicao" />">
                Ano: <input type="text" name="ano" value="<jsp:getProperty name="livro" property="ano" />"><br>
                Disponibilidade: <input type="text" name="disponibilidade" value="<jsp:getProperty name="livro" property="disponibilidade" />"><br><br>
                <input type="submit" value="Salvar" name="salvar" /><br>
            </form>
        </div>  
    </body>
</html>
