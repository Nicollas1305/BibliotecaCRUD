<%-- 
    Document   : editarCliente
    Created on : 03/12/2020, 01:02:53
    Author     : Nicollas1305
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cliente</title>
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
        
        <div class="formulario">
        <form method="get" action="-alterarCliente.jsp">
                <input type="hidden" value="<jsp:getProperty name="cliente" property="idCliente" />" name="idCliente" />
                Id: <jsp:getProperty name="cliente" property="idCliente"/> - 
                Nome: <input type="text" name="nome" value="<jsp:getProperty name="cliente" property="nome"/>"/> <br>
                Data de Nascimento: <input type="text" name="dataNasc" value="<jsp:getProperty name="cliente" property="dataNasc" />">
                Sexo: <input type="text" name="sexo" value="<jsp:getProperty name="cliente" property="sexo" />">
                CPF: <input type="text" name="cpf" value="<jsp:getProperty name="cliente" property="cpf" />"><br>
                Endereço: <input type="text" name="endereco" value="<jsp:getProperty name="cliente" property="endereco" />">
                Telefone: <input type="text" name="fone" value="<jsp:getProperty name="cliente" property="fone" />"><br>
                <input type="submit" value="Salvar" name="salvar" /><br>
            </form>
        </div>        
    </body>
</html>
