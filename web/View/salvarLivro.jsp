<%-- 
    Document   : salvarLivro
    Created on : 05/12/2020, 12:19:18
    Author     : Nicollas1305
--%>

<%@page import="Controller.JpaUtil"%>
<%@page import="Controller.LivroJpaController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    LivroJpaController livroDAO = new LivroJpaController(JpaUtil.getEmf());
%>
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
            <a href="editarCliente.jsp">Exibir Clientes</a>
            <a href="exibirLivro.jsp">Exibir Livros</a>
        </div>
        
        <jsp:useBean id="livro" scope="request" class="Entity.Livro" />
        <jsp:setProperty name="livro" property="idLivro"/>
        <jsp:setProperty name="livro" property="exemplar"/>
        <jsp:setProperty name="livro" property="autor"/>
        <jsp:setProperty name="livro" property="edicao"/>
        <jsp:setProperty name="livro" property="ano"/>
        <jsp:setProperty name="livro" property="disponibilidade"/>
        
        <%
            livroDAO.create(livro);
        %>
        
        <div class="formulario">
            <p>Livro Cadastrado!</p><br><br>   
            <p>ID: <jsp:getProperty name="livro" property="idLivro"/>   NOME: <jsp:getProperty name="livro" property="exemplar" /></p>
            <form action="../index.html">
                <input type="submit" value="Voltar">
            </form>
        </div>
    </body>
</html>
