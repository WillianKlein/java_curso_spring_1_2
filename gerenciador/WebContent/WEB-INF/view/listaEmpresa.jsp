<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:url value="entrada?acao=RemoveEmpresa" var="linkServletRemoveEmpresa"/>
<c:url value="entrada?acao=MostraEmpresa" var="linkServletMostraEmpresa"/>
<c:url value="entrada?acao=NovaEmpresaForm" var="linkServletNovaEmpresaForm"/>

<!DOCTYPE html>
<html>
<body>
	Usuário Logado: ${usuarioLogado.login } <br>
	<c:import url="logout-parcial.jsp"/>
	<a href="${linkServletNovaEmpresaForm}"> Novo cadastro </a> <br>
	Lista de empresas: <br/>
	<ul>
		<c:forEach items="${listaEmpresas}" var="empresa">
			<li>
			  ${empresa.nome} - <fmt:formatDate value="${empresa.dataAbertura}" pattern="dd/MM/yyyy"/>
			  <a href="${linkServletMostraEmpresa}&id=${empresa.id}"> Editar </a>
			  <a href="${linkServletRemoveEmpresa}&id=${empresa.id}"> Remover </a>
			</li>
		</c:forEach>
	</ul>
</body>
</html>