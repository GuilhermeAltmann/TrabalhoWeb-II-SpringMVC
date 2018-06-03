<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<h2>Inserção nova disciplina</h2>
<c:url var="actionAdicionar" value="/disciplinas/adicionar"></c:url>
<form:form action="${actionAdicionar}" method="post" modelAttribute="disciplina" cssClass="bs-component">
	<div class="col-lg-4 col-md-6 col-xs-12">
		<div class="form-group">
			<label class="form-control-label">Nome:</label>
			<form:input path="nome" cssClass="form-control" />
				<form:errors path="nome" cssClass="invalid-feedback"></form:errors>
		</div>
		<div class="form-group">
			<label class="form-control-label">Código:</label>
			<form:input path="codigo" cssClass="form-control" />
				<form:errors path="codigo" cssClass="invalid-feedback"></form:errors>
		</div>
		<div class="form-group">
			<label class="form-control-label">Carga Horária:</label>
			<form:input path="cargaHoraria" cssClass="form-control" />
				<form:errors path="cargaHoraria" cssClass="invalid-feedback"></form:errors>
		</div>
		<div class="form-group">
			<label class="form-control-label">Professor:</label>
			<form:select path="professor.id" cssClass="form-control">
				<form:options items="${professores}" itemLabel="nome" itemValue="id"/>
			</form:select>
			<div class="invalid-feedback">
				<form:errors path="professor.id" cssClass="invalid-feedback"></form:errors>
			</div>
		</div>
		<input type="submit" value="Salvar" class="btn btn-primary"/>
	</div>
</form:form>