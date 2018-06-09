<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h2>Listagem de disciplinas</h2>
<br />

<table class="table table-striped">
	<thead>
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Código</th>
			<th>Carga Horária</th>
			<th>Professor</th>
			<th>Ações</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${!empty disciplinas}">
			<c:forEach items="${disciplinas}" var="disciplina">
				<tr>
					<td>${disciplina.id}</td>
					<td>${disciplina.nome}</td>
					<td>${disciplina.codigo}</td>
					<td>${disciplina.cargaHoraria}</td>
					<td>${disciplina.professor.nome}</td>	
					<td>
						<a href="/trabalho-dois-spring/disciplinas/alterar/${disciplina.id}" class="btn btn-primary" role="button">
							<i class="glyphicon glyphicon-pencil"></i>
						</a>
						<c:if test="${empty disciplina.getNotas()}">
							<a href="/trabalho-dois-spring/disciplinas/excluir/${disciplina.id}" class="btn btn-danger" role="button">
								<i class="glyphicon glyphicon-remove"></i>
							</a>
						</c:if>
						<c:if test="${!empty disciplina.getNotas()}">
							<a href="#" class="btn btn-danger disabled" role="button" >
								<i class="glyphicon glyphicon-remove"></i>
							</a>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${empty disciplinas}">
			<tr>
				<td colspan="6" class="text-center">Sem dados para apresentar</td>
			</tr>
		</c:if>
	</tbody>
</table>
<br />
<a href="/trabalho-dois-spring/disciplinas/adicionar" class="btn btn-default" role="button">Criar</a>