<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- a linha abaixo faz a inclusão de um outro arquivo no arquivo atual --%>
<c:import url="topo.jsp" />

<div class="alert-success text-center espaco">
    Listagem de Usuários
</div>
<table class="table table-bordered table-striped text-center">
    <thead>
        <tr>
            <th class="text-justify">RA</th>
            <th class="text-justify">NOME</th>
            <th class="text-justify">CURSO</th>
            <th colspan="2">Operações</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="aluno" items="${listaAlunos}">
        <form name="lista_alunos" method="post" action="AlunosController">
            <tr>
                <td class="align-middle text-justify">${aluno.ra}</td>
                <td class="align-middle text-justify">${aluno.nome}</td>
                <td class="align-middle text-justify">${aluno.curso}</td>
                <td class="align-middle">
                    <input class="btn btn-primary btn-sm text-center"
                           type="submit"
                           name="operacao"
                           value="Editar" />
                </td>

                <td class="align-middle">
                    <input
                        class="btn btn-danger btn-sm text-center"
                        type="submit"
                        name="operacao"
                        value="Excluir" />
                </td>
            </tr>
            <input type="hidden" name="ra" value="${aluno.ra}" />
        </form>
    </c:forEach>
</tbody>
</table>

<c:import url="rodape.jsp" />
