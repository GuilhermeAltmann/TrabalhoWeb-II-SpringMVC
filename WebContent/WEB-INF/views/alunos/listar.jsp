<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h2>Listagem de Alunos</h2>
<br />
<!-- <div class="row">
	<div class="col-md-9">
		<div class="form-group">
			<label>Álbum a ser pesquisado:</label>
			<input type="text" id="txt-pesquisa" class="form-control" />
		</div>
	</div>
	<div class="col-md-3">
		<button id="btn-pesquisar" class="btn btn-default" style="margin-top:26px;"><i class="glyphicon glyphicon-search"></i> Pesquisar</button>
	</div>
</div> -->
<table class="table table-striped" id="tbl-albuns">
	<thead>
		<tr>
			<th>ID</th>
			<th>Nome</th>
			<th>Telefone</th>
			<th>Endereço</th>
			<th>E-mail</th>
			<th>Matricula</th>
			<th>CPF</th>
			<th>Ações</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${!empty alunos}">
			<c:forEach items="${alunos}" var="aluno">
				<tr>
					<td>${aluno.id}</td>
					<td>${aluno.nome}</td>
					<td>${aluno.telefone}</td>
					<td>${aluno.endereco}</td>
					<td>${aluno.email}</td>
					<td>${aluno.matricula}</td>
					<td>${aluno.cpf}</td>
					<td>
						<a href="/trabalho-dois-spring/alunos/alterar/${aluno.id}" class="btn btn-primary" role="button">
							<i class="glyphicon glyphicon-pencil"></i>
						</a>
						<c:if test="${empty aluno.getNotas()}">
							<a href="/trabalho-dois-spring/alunos/excluir/${aluno.id}" class="btn btn-danger" role="button">
								<i class="glyphicon glyphicon-remove"></i>
							</a>
						</c:if>
						<c:if test="${!empty aluno.getNotas()}">
							<a href="#" class="btn btn-danger disabled" role="button" >
								<i class="glyphicon glyphicon-remove"></i>
							</a>
						</c:if>
					</td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${empty alunos}">
			<tr>
				<td colspan="8" class="text-center">Sem dados para apresentar</td>
			</tr>
		</c:if>
	</tbody>
</table>
<br />
<a href="/trabalho-dois-spring/alunos/adicionar" class="btn btn-default" role="button">Criar</a>
