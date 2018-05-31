<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h2>Listagem de músicas</h2>
<br />

<table class="table table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>Nome da música</th>
			<th>Data de criação</th>
			<th>Nome do álbum</th>
			<th>Ações</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${!empty musicas}">
			<c:forEach items="${musicas}" var="musica">
				<tr>
					<td>${musica.id}</td>
					<td>${musica.nome}</td>
					<td><fmt:formatDate value="${musica.dataCriacao}" pattern="dd/MM/yyyy" timeZone="UTC"/></td>
					<td>${musica.album.nome}</td>
					<td>
						<a href="/trabalho-dois-spring/musicas/alterar/${musica.id}" class="btn btn-primary" role="button">
							<i class="glyphicon glyphicon-pencil"></i>
						</a>
						<a href="/trabalho-dois-spring/musicas/excluir/${musica.id}" class="btn btn-danger" role="button">
							<i class="glyphicon glyphicon-remove"></i>
						</a>
					</td>
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
<a href="/trabalho-dois-spring/musicas/adicionar" class="btn btn-default" role="button">Criar</a>