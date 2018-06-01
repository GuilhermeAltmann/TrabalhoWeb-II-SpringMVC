<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h2>Listagem de álbuns</h2>
<br />
<div class="row">
	<div class="col-md-9">
		<div class="form-group">
			<label>Álbum a ser pesquisado:</label>
			<input type="text" id="txt-pesquisa" class="form-control" />
		</div>
	</div>
	<div class="col-md-3">
		<button id="btn-pesquisar" class="btn btn-default" style="margin-top:26px;"><i class="glyphicon glyphicon-search"></i> Pesquisar</button>
	</div>
</div>
<table class="table table-striped" id="tbl-albuns">
	<thead>
		<tr>
			<th>ID</th>
			<th>Nome do álbum</th>
			<th>Ano do lançamento</th>
			<th>Ações</th>
		</tr>
	</thead>
	<tbody>
		<c:if test="${!empty albuns}">
			<c:forEach items="${albuns}" var="album">
				<tr>
					<td>${album.id}</td>
					<td>${album.nome}</td>
					<td>${album.anoDeLancamento}</td>
					<td>
						<a href="/trabalho-dois-spring/albuns/alterar/${album.id}" class="btn btn-primary" role="button">
							<i class="glyphicon glyphicon-pencil"></i>
						</a>
						<a href="/trabalho-dois-spring/albuns/excluir/${album.id}" class="btn btn-danger" role="button">
							<i class="glyphicon glyphicon-remove"></i>
						</a>
					</td>
				</tr>
			</c:forEach>
		</c:if>
		<c:if test="${empty albuns}">
			<tr>
				<td colspan="4" class="text-center">Sem dados para apresentar</td>
			</tr>
		</c:if>
	</tbody>
</table>
<br />
<a href="/trabalho-dois-spring/albuns/adicionar" class="btn btn-default" role="button">Criar</a>
<script type="text/javascript">
$(document).ready(function(){
	
	$('#btn-pesquisar').on('click', function(){
		
		var textoPesquisa = $('#txt-pesquisa').val();
		
		$.ajax({
			'method': 'GET',
			'url': '/trabalho-dois-spring/albuns/pornome',
		    'data': {'nome': textoPesquisa}
		}).done(function(data){
			
			$('#tbl-albuns tbody > tr').remove();
			
			$.each(data, function(index, album){
				
				$('#tbl-albuns tbody').append('<tr><td>' + album.id +'</td><td>' + album.nome + '</td><td>' + album.anoDeLancamento +'</td>' + 
						'<td>' + '<a href="/trabalho-dois-spring/albuns/alterar/' + album.id + '" class="btn btn-primary" role="button"><i class="glyphicon glyphicon-pencil"></i></a>' + '</td>' +
						'<td>' + '<a href="/trabalho-dois-spring/albuns/excluir/' + album.id + '" class="btn btn-danger" role="button"><i class="glyphicon glyphicon-remove"></i></a>' + '</td>' +
						'</tr>');
			});
			
			
			
		}).fail(function() {
			
		    alert( "error" );
		});
	});
});
</script>