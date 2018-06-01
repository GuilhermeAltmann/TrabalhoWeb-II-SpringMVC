<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h2>Listagem de usuários</h2>
<br />

<table class="table table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Role</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${!empty usuarios}">
			<c:forEach items="${usuarios}" var="usuario">
				<tr>
					<td>${usuario.id}</td>
					<td>${usuario.username}</td>
					<td>${usuario.role}</td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${empty musicas}">
			<tr>
				<td colspan="4" class="text-center">Sem dados para apresentar</td>
			</tr>
		</c:if>
	</tbody>
</table>
<br />
<a href="/trabalho-dois-spring/usuarios/adicionar" class="btn btn-default" role="button">Criar</a>