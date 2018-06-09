<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h2>Listagem de notas</h2>
<br />
<div class="row">
	<div class="col-md-9">
		<div class="form-group">
			<label>Aluno a ser pesquisado:</label>
			<input type="text" id="txt-pesquisa" class="form-control" />
		</div>
	</div>
	<div class="col-md-3">
		<button id="btn-pesquisar" class="btn btn-default" style="margin-top:26px;"><i class="glyphicon glyphicon-search"></i> Pesquisar</button>
	</div>
</div>
<table class="table table-striped" id="tbl-notas">
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
<script type="text/javascript">
$(document).ready(function(){
	
	$('#btn-pesquisar').on('click', function(){
		
		var textoPesquisa = $('#txt-pesquisa').val();
		
		$.ajax({
			'method': 'GET',
			'url': '/trabalho-dois-spring/notas/pornome',
		    'data': {'nome': textoPesquisa}
		}).done(function(data){
			
			$('#tbl-notas tbody > tr').remove();
			
			$.each(data, function(index, nota){
				
				var status = '';
				
				if(nota.media >= 6){
					
					status = 'Aprovado';
				}else if(nota.media >= 4 && nota.media < 6){
					
					status = 'Faça prova substitutiva';
				}else{
					
					status = 'Reprovado';
				}
				
				$('#tbl-notas tbody').append('<tr><td>' + nota.id 
						+ '</td><td>' + nota.disciplina.nome 
						+ '</td><td>' + nota.aluno.nome
						+ '</td><td>' + nota.nota1 
						+ '</td><td>' + nota.nota2
						+ '</td><td>' + nota.nota3
						+ '</td><td>' + status +'</td>' + 
						'<td>' + '<a href="/trabalho-dois-spring/notas/alterar/' + nota.id + '" class="btn btn-primary" role="button"><i class="glyphicon glyphicon-pencil"></i></a>' +
					    '<a href="/trabalho-dois-spring/notas/excluir/' + nota.id + '" class="btn btn-danger" role="button"><i class="glyphicon glyphicon-remove"></i></a>' + '</td>' +
						'</tr>');
			});
			
			
			
		}).fail(function() {
			
		    alert( "error" );
		});
	});
});
</script>