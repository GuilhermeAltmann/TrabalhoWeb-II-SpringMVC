<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<h2>Inserção novo usuário</h2>
<c:url var="actionAdicionar" value="/usuarios/adicionar"></c:url>
<form:form action="${actionAdicionar}" method="post" modelAttribute="usuario" cssClass="bs-component">
	<div class="col-lg-4 col-md-6 col-xs-12">
		<div class="form-group">
			<label class="form-control-label">Nome:</label>
			<form:input path="username" cssClass="form-control" />
				<form:errors path="username" cssClass="invalid-feedback"></form:errors>
		</div>
		<div class="form-group">
			<label class="form-control-label">Senha:</label>
			<form:password path="password" cssClass="form-control" />
			<div class="invalid-feedback">
				<form:errors path="password" cssClass="invalid-feedback"></form:errors>
			</div>
		</div>
		<div class="form-group">
			<label class="form-control-label">Perfil:</label>
			<select name="role" class="form-control">
				<option value="ROLE_ADMIN">Adminstrador</option>
				<option value="ROLE_USER">Usuário comum</option>
			</select>
		</div>
		<input type="submit" value="Salvar" class="btn btn-primary"/>
	</div>
</form:form>