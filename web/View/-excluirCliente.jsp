<%-- 
    Document   : -excluirCliente
    Created on : 05/12/2020, 00:19:33
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
        <title>Excluir Clientes</title>
        <link rel="stylesheet" href="../Styles.css">
    </head>
    <body>
        <jsp:useBean id="cliente" scope="request" class="Entity.Cliente"/>
        <jsp:setProperty name="cliente" property="idCliente"/>
        <jsp:setProperty name="cliente" property="nome"/>
        
        <%
            clienteDAO.destroy(cliente.getIdCliente());
        %>
        
        <div class="formulario">
            <p>Cliente Excluido!</p><br><br> 
            <p>ID: <jsp:getProperty name="cliente" property="idCliente"/></p>
            <p>Nome: <jsp:getProperty name="cliente" property="nome" /></p>
            <form action="exibirCliente.jsp">
                <input type="submit" value="Retornar!">
            </form>
        </div>
    </body>
</html>
