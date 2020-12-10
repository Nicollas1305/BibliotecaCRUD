<%-- 
    Document   : -excluirLivro
    Created on : 05/12/2020, 16:22:25
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
        <title>Excluir Livro</title>
        <link rel="stylesheet" href="../Styles.css">
    </head>
    <body>
        
        <jsp:useBean id="livro" scope="request" class="Entity.Livro" />
        <jsp:setProperty name="livro" property="idLivro"/>
        <jsp:setProperty name="livro" property="exemplar"/>
        
        
        <%
            livroDAO.destroy(livro.getIdLivro());
        %>
        
        <div class="formulario">
            <p>Cliente Excluido!</p><br><br> 
            <p>ID: <jsp:getProperty name="livro" property="idLivro"/></p>
            <p>Nome: <jsp:getProperty name="livro" property="exemplar"/></p>
            <form action="exibirLivro.jsp">
                <input type="submit" value="Retornar!">
            </form>
        </div>
    </body>
</html>
