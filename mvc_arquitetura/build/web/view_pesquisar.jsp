<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- A linha abaixo faz a importação do código do topo--%>
<c:import url="topo.jsp" />

<div class="alert-success text-center espaco">
    Tela de Pesquisa
</div>

<form name="pesquisar" method="post" action="AlunosController">
    <div class="row">
        <div class="col-md-5 mb-3">
            <input type="hidden" name="operacao" value="Pesquisar" />
            <input
                type="submit"
                class="form-control btn btn-primary"
                name="bt_pesquisar"
                value="Pesquisar"/>
        </div>
    </div>
</form>

<%-- A linha abaixo faz a importação do código do rodapé--%>
<c:import url="rodape.jsp" />