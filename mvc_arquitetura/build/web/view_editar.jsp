<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- a linha abaixo faz a inclusão de um outro arquivo no arquivo atual --%>
<c:import url="topo.jsp" />

<div class="alert-success text-center espaco">
    Editar Dados do Usuário
</div>
<c:forEach var="aluno" items="${alunoDados}">
    <form name="editar" method="post" action="AlunosController">
        <div class="row">
            <div class="col-md-5 mb-3">
                <label>RA: <strong>${aluno.ra}</strong></label>
            </div>
        </div>
        <div class="row">
            <div class="col-md-5 mb-3">
                <label>NOME</label>
                <input
                    type="text"
                    class="form-control"
                    name="nome"
                    value="${aluno.nome}"
                    />
            </div>
        </div>
        <div class="row">
            <div class="col-md-5 mb-3">
                <label>CURSO</label>
                <input
                    type="text"
                    class="form-control"
                    name="curso"
                    value="${aluno.curso}"
                    />
            </div>
        </div>
        <div class="row">
            <div class="col-md-5 mb-3">
                <input type="hidden" name="operacao" value="Atualizar" />
                <input type="hidden" name="ra" value="${aluno.ra}" />
                <input
                    type="submit"
                    class="form-control btn btn-primary"
                    name="bt_enviar"
                    value="Salvar"/>
            </div>
        </div>
    </form>
</c:forEach>
<c:import url="rodape.jsp" />