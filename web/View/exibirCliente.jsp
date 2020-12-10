<%-- 
    Document   : ExibirCliente
    Created on : 03/12/2020, 01:03:15
    Author     : Nicollas1305
--%>

<%@page import="java.util.List"%>
<%@page import="Entity.Cliente"%>
<%@page import="Entity.Cliente"%>
<%@page import="Controller.JpaUtil"%>
<%@page import="Controller.ClienteJpaController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ClienteJpaController clienteDAO = new ClienteJpaController(JpaUtil.getEmf());
    List<Cliente> clientes = clienteDAO.findClienteEntities();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exibir Clientes</title>
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
        
        
        <table>
            <tr>
                <td>ID</td>
                <td>Nome</td>
                <td>Data de nascimento</td>
                <td>Sexo</td>
                <td>CPF</td>
                <td>Endereço</td>
                <td>Telefone</td>
            </tr>
            <%
                for(Cliente c : clientes){
            %>
            <tr>
                <td><%= c.getIdCliente()%></td>
                <td><%= c.getNome()%></td>
                <td><%= c.getDataNasc()%></td>
                <td><%= c.getSexo()%></td>
                <td><%= c.getCpf()%></td>
                <td><%= c.getEndereco()%></td>
                <td><%= c.getFone()%></td>
                
                <td>
                    <form method="get" action="editarCliente.jsp">
                        <input type="hidden" value="<%= c.getIdCliente()%>" name="idCliente" />
                        <input type="hidden" value="<%= c.getNome() %>" name="nome" />
                        <input type="hidden" value="<%= c.getDataNasc() %>" name="dataNasc" />
                        <input type="hidden" value="<%= c.getSexo() %>" name="sexo" />
                        <input type="hidden" value="<%= c.getCpf()%>" name="cpf" />
                        <input type="hidden" value="<%= c.getEndereco() %>" name="endereco" />
                        <input type="hidden" value="<%= c.getFone()%>" name="fone" />
                        <input type="submit" value="Editar" />
                    </form>
                </td>
                 <td>
                    <form method="get" action="-excluirCliente.jsp">
                        <input type="hidden" value="<%= c.getIdCliente()%>" name="idCliente" />
                        <input type="hidden" value="<%= c.getNome()%>" name="nome"/>
                        <input type="submit" value="Excluir" />
                    </form>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>
