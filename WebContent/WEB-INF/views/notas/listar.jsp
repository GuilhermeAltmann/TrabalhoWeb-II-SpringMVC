<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h2>Listagem de notas</h2>
<br />

<table class="table table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>Disciplina</th>
			<th>Aluno</th>
			<th>Nota 1</th>
			<th>Nota 2</th>
			<th>Nota 3</th>
			<th>Status</th>
			<th>Ações</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${!empty notas}">
			<c:forEach items="${notas}" var="nota">
				<tr>
					<td>${nota.id}</td>
					<td>${nota.disciplina.nome}</td>
					<td>${nota.aluno.nome}</td>
					<td>${nota.nota1}</td>
					<td>${nota.nota2}</td>
					<td>${nota.nota3}</td>
					<c:if test="${nota.media >= 6}">
						<td>Aprovado</td>
					</c:if>
					<c:if test="${nota.media >= 4 && nota.media < 6}">
						<td>Faça prova substitutiva</td>
					</c:if>
					<c:if test="${nota.media < 4}">
						<td>Reprovado</td>
					</c:if>
					<td>
						<a href="/trabalho-dois-spring/notas/alterar/${nota.id}" class="btn btn-primary" role="button">
							<i class="glyphicon glyphicon-pencil"></i>
						</a>
						<a href="/trabalho-dois-spring/notas/excluir/${nota.id}" class="btn btn-danger" role="button">
							<i class="glyphicon glyphicon-remove"></i>
						</a>
					</td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${empty notas}">
			<tr>
				<td colspan="8" class="text-center">Sem dados para apresentar</td>
			</tr>
		</c:if>
	</tbody>
</table>
<br />
<a href="/trabalho-dois-spring/notas/adicionar" class="btn btn-default" role="button">Criar</a>