<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h2>Listagem de Professores</h2>
<br />
<table class="table table-striped" id="tbl-albuns">
	<thead>
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Telefone</th>
			<th>Endereço</th>
			<th>E-mail</th>
			<th>Registro</th>
			<th>CPF</th>
			<th>Salário</th>
			<th>Ações</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${!empty professores}">
			<c:forEach items="${professores}" var="professor">
				<tr>
					<td>${professor.id}</td>
					<td>${professor.nome}</td>
					<td>${professor.telefone}</td>
					<td>${professor.endereco}</td>
					<td>${professor.email}</td>
					<td>${professor.registro}</td>
					<td>${professor.cpf}</td>
					<td>${professor.salario}</td>
					<td>
						<a href="/trabalho-dois-spring/professores/alterar/${professor.id}" class="btn btn-primary" role="button">
							<i class="glyphicon glyphicon-pencil"></i>
						</a>
						<c:if test="${empty professor.getDisciplinas()}">
							<a href="/trabalho-dois-spring/professores/excluir/${professor.id}" class="btn btn-danger" role="button">
								<i class="glyphicon glyphicon-remove"></i>
							</a>
						</c:if>
						<c:if test="${!empty professor.getDisciplinas()}">
							<a href="#" class="btn btn-danger disabled" role="button" >
								<i class="glyphicon glyphicon-remove"></i>
							</a>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${empty professores}">
			<tr>
				<td colspan="9" class="text-center">Sem dados para apresentar</td>
			</tr>
		</c:if>
	</tbody>
</table>
<br />
<a href="/trabalho-dois-spring/professores/adicionar" class="btn btn-default" role="button">Criar</a>