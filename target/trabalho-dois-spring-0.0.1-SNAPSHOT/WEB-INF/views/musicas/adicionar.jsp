<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<h2>Inserção nova música</h2>
<c:url var="actionAdicionar" value="/musicas/adicionar"></c:url>
<form:form action="${actionAdicionar}" method="post" modelAttribute="musica" cssClass="bs-component">
	<div class="col-lg-4 col-md-6 col-xs-12">
		<div class="form-group">
			<label class="form-control-label">Nome:</label>
			<form:input path="nome" cssClass="form-control" />
				<form:errors path="nome" cssClass="invalid-feedback"></form:errors>
		</div>
		<div class="form-group">
			<label class="form-control-label">Data de criação:</label>
			<form:input path="dataCriacao" cssClass="form-control" />
			<div class="invalid-feedback">
				<form:errors path="dataCriacao" cssClass="invalid-feedback"></form:errors>
			</div>
		</div>
		<div class="form-group">
			<label class="form-control-label">Album:</label>
			<form:select path="album.id" cssClass="form-control">
				<form:options items="${albuns}" itemLabel="nome" itemValue="id"/>
			</form:select>
			<div class="invalid-feedback">
				<form:errors path="album.id" cssClass="invalid-feedback"></form:errors>
			</div>
		</div>
		<input type="submit" value="Salvar" class="btn btn-primary"/>
	</div>
</form:form>