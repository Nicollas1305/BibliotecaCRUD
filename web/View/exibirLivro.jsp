<%-- 
    Document   : ExibirLivro
    Created on : 05/12/2020, 12:49:07
    Author     : Nicollas1305
--%>

<%@page import="Entity.Livro"%>
<%@page import="java.util.List"%>
<%@page import="Controller.JpaUtil"%>
<%@page import="Controller.LivroJpaController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    LivroJpaController livroDAO = new LivroJpaController(JpaUtil.getEmf());
    List<Livro> livros = livroDAO.findLivroEntities();
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
                <td>Exemplar</td>
                <td>Autor</td>
                <td>Edição</td>
                <td>Ano</td>
                <td>Disponibilidade</td>
            </tr>
            <%
                for (Livro l : livros) {
            %>
            <tr>
                <td><%= l.getIdLivro()%></td>
                <td><%= l.getExemplar()%></td>
                <td><%= l.getAutor()%></td>
                <td><%= l.getEdicao()%></td>
                <td><%= l.getAno()%></td>
                <td><%= l.getDisponibilidade()%></td>

                <td>
                    <form method="get" action="editarLivro.jsp">
                        <input type="hidden" value="<%= l.getIdLivro()%>" name="idLivro" />
                        <input type="hidden" value="<%= l.getExemplar()%>" name="exemplar" />
                        <input type="hidden" value="<%= l.getAutor()%>" name="autor" />
                        <input type="hidden" value="<%= l.getEdicao()%>" name="edicao" />
                        <input type="hidden" value="<%= l.getAno()%>" name="ano" />
                        <input type="hidden" value="<%= l.getDisponibilidade()%>" name="disponibilidade" />  
                        <input type="submit" value="Editar" />
                    </form>
                </td>
                <td>
                    <form method="get" action="-excluirLivro.jsp">
                        <input type="hidden" value="<%= l.getIdLivro()%>" name="idLivro" />
                        <input type="hidden" value="<%= l.getExemplar()%>" name="exemplar"/>
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
