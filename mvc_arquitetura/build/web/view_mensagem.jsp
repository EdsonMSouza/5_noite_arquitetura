<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- A linha abaixo faz a importação do código do topo--%>
<c:import url="topo.jsp" />

<div class="alert-success text-center espaco">
    Tela de Mensagens
</div>

<c:out value="${mensagem}" />

<%-- A linha abaixo faz a importação do código do rodapé--%>
<c:import url="rodape.jsp" />