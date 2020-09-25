<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%-- A linha abaixo faz a importação do código do topo--%>
<c:import url="topo.jsp" />

<div class="alert-success text-center espaco">
    Tela de Mensagens
</div>

<%-- A variável abaixo é substituída pelo envio do Controller--%>
<div class="row">
    <div class="col-md-5 mb-3">
        <label>O RA digitado foi</label>
        <strong><c:out value="${msg_ra}" /></strong><br>
    </div>
</div>
<div class="row">
    <div class="col-md-8 mb-3">
        <label>O NOME digitado foi</label>
        <strong><c:out value="${msg_nome}" /></strong><br>
    </div>
</div>
<div class="row">
    <div class="col-md-8 mb-3">
        <label>O CURSO digitado foi</label>
        <strong><c:out value="${msg_curso}" /></strong><br>
    </div>
</div>
<%-- A linha abaixo faz a importação do código do rodapé--%>
<c:import url="rodape.jsp" />