<%-- 
    Document   : salvarCliente
    Created on : 03/12/2020, 01:13:25
    Author     : Nicollas1305
--%>

<%@page import="Controller.JpaUtil"%>
<%@page import="Controller.ClienteJpaController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClienteJpaController clienteDAO = new ClienteJpaController(JpaUtil.getEmf());
%>
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
        
        <jsp:useBean id="cliente" scope="request" class="Entity.Cliente" />
        <jsp:setProperty name="cliente" property="idCliente"/>
        <jsp:setProperty name="cliente" property="nome"/>
        <jsp:setProperty name="cliente" property="dataNasc"/>
        <jsp:setProperty name="cliente" property="sexo"/>
        <jsp:setProperty name="cliente" property="cpf"/>
        <jsp:setProperty name="cliente" property="endereco"/>
        <jsp:setProperty name="cliente" property="fone"/>

        <%
            clienteDAO.create(cliente);
        %>
        <div class="formulario">
            <p>Cliente Cadastrado!</p><br><br>   
            <p>ID: <jsp:getProperty name="cliente" property="idCliente"/>    Nome: <jsp:getProperty name="cliente" property="nome"/></p>
            <form action="../index.html">
                <input type="submit" value="Voltar">
            </form>
        </div>
    </body>
</html>
