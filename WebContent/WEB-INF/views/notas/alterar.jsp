<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<h2>Edição da nota "${nota.id}"</h2>
<c:url var="actionEditar" value="/notas/alterar"></c:url>
<form:form action="${actionEditar}" method="post" modelAttribute="nota" cssClass="bs-component">
	<div class="col-lg-4 col-md-6 col-xs-12">
		<div class="form-group">
			<label class="form-control-label">Aluno:</label>
			<form:select path="aluno.id" cssClass="form-control">
				<form:options items="${alunos}" itemLabel="nome" itemValue="id"/>
			</form:select>
			<div class="invalid-feedback">
				<form:errors path="aluno.id" cssClass="invalid-feedback"></form:errors>
			</div>
		</div>
		<div class="form-group">
			<label class="form-control-label">Disciplina:</label>
			<form:select path="disciplina.id" cssClass="form-control">
				<form:options items="${disciplinas}" itemLabel="nome" itemValue="id"/>
			</form:select>
			<div class="invalid-feedback">
				<form:errors path="disciplina.id" cssClass="invalid-feedback"></form:errors>
			</div>
		</div>
		<div class="form-group">
			<label class="form-control-label">Nota1:</label>
			<form:input path="nota1" cssClass="form-control" />
				<form:errors path="nota1" cssClass="invalid-feedback"></form:errors>
		</div>
		<div class="form-group">
			<label class="form-control-label">Nota2:</label>
			<form:input path="nota2" cssClass="form-control" />
				<form:errors path="nota2" cssClass="invalid-feedback"></form:errors>
		</div>
		<div class="form-group">
			<label class="form-control-label">Nota3:</label>
			<form:input path="nota3" cssClass="form-control" />
				<form:errors path="nota3" cssClass="invalid-feedback"></form:errors>
		</div>
		<input type="submit" value="Salvar" class="btn btn-primary"/>
	</div>
</form:form>
