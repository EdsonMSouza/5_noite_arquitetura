<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- a linha abaixo faz a inclusão de um outro arquivo no arquivo atual --%>
<c:import url="topo.jsp" />

<div class="alert-success text-center espaco">
    Pesquisar Usuário
</div>

<form name="pesquisar" method="post" action="AlunosController">
    <div class="row">
        <div class="form-group col-md-5 mb-2">
            <input type="text" class="form-control" name="valor" placeholder="Digite o valor para procura"/>
        </div>
        <!-- Inserir um Caixa de Seleção com as opções -->
        <div class="form-group col-md-3 mb-2">
            <select class="form-control" name="tipo">
                <option value="ra">Ra</option>
                <option value="nome">Nome</option>
                <option value="curso">Curso</option>
            </select>
        </div>
        <div class="form-group col-md-3 mb-2">
            <input type="hidden" name="operacao" value="Pesquisar" />
            <input type="submit" class="form-control btn btn-primary"
                   name="bt_pesquisar" value="Pesquisar"/>
        </div>
    </div>
    <span class="erro"><c:out value = "${mensagem}" /></span>
</form>

<c:import url="rodape.jsp" />
