<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<h2>Alteração do professor "${professor.id}"</h2>

<c:url var="actionAlterar" value="/professores/alterar"></c:url>
<form:form action="${actionAlterar}" method="post" modelAttribute="professor" cssClass="bs-component">
	<div class="col-lg-4 col-md-6 col-xs-12">
		<div class="form-group">
			<label class="form-control-label">Id:</label>
			<form:input path="id" cssClass="form-control" readonly="true"/>
		</div>
		<div class="form-group">
			<label class="form-control-label">Nome:</label>
			<form:input path="nome" cssClass="form-control" />
			<form:errors path="nome" cssClass="invalid-feedback"></form:errors>
		</div>
		<div class="form-group">
			<label class="form-control-label">Telefone:</label>
			<form:input path="telefone" cssClass="form-control" />
			<form:errors path="telefone" cssClass="invalid-feedback"></form:errors>
		</div>
		<div class="form-group">
			<label class="form-control-label">Endereço:</label>
			<form:input path="endereco" cssClass="form-control" />
			<form:errors path="endereco" cssClass="invalid-feedback"></form:errors>
		</div>
		<div class="form-group">
			<label class="form-control-label">E-mail:</label>
			<form:input path="email" cssClass="form-control" />
			<form:errors path="email" cssClass="invalid-feedback"></form:errors>
		</div>
		<div class="form-group">
			<label class="form-control-label">Registro:</label>
			<form:input path="registro" cssClass="form-control" />
			<form:errors path="registro" cssClass="invalid-feedback"></form:errors>
		</div>
		<div class="form-group">
			<label class="form-control-label">Cpf:</label>
			<form:input path="cpf" cssClass="form-control" />
			<form:errors path="cpf" cssClass="invalid-feedback"></form:errors>
		</div>
		<div class="form-group">
			<label class="form-control-label">Salário:</label>
			<form:input path="salario" cssClass="form-control" />
			<form:errors path="salario" cssClass="invalid-feedback"></form:errors>
		</div>
		<input type="submit" value="Salvar" class="btn btn-primary"/>
	</div>
</form:form>