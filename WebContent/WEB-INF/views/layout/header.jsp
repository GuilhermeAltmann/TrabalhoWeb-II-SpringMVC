<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<nav class="navbar navbar-default">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Gerenciador de notas</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<sec:authorize access="isAuthenticated()">
			<sec:authentication property="principal" var="principal"/>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Usuarios <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/trabalho-dois-spring/usuarios/listar">Listar</a></li>
							<li><a href="/trabalho-dois-spring/usuarios/adicionar">Cadastrar</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Alunos <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/trabalho-dois-spring/alunos/listar">Listar</a></li>
							<li><a href="/trabalho-dois-spring/alunos/adicionar">Cadastrar</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Professores <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/trabalho-dois-spring/professores/listar">Listar</a></li>
							<li><a href="/trabalho-dois-spring/professores/adicionar">Cadastrar</a></li>
						</ul></li>
				</ul>
				<ul class="nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Disciplinas <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/trabalho-dois-spring/disciplinas/listar">Listar</a></li>
							<li><a href="/trabalho-dois-spring/disciplinas/adicionar">Cadastrar</a></li>
						</ul></li>
				</ul>
				<ul class="pull-right nav navbar-nav">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">${principal.username} <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="/trabalho-dois-spring/logout">Sair</a></li>
						</ul></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</sec:authorize>
	</div>
	<!-- /.container-fluid -->
</nav>