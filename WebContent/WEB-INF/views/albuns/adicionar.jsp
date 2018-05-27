<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<c:url var="actionAdicionar" value="/albuns/adicionar"></c:url>
<form:form action="${actionAdicionar}" method="post" modelAttribute="album" cssClass="bs-component">
	<div class="col-lg-4">
		<div class="form-group">
			<label class="form-control-label">Nome:</label>
			<form:input path="nome" cssClass="form-control" />
			<div class="invalid-feedback">
				<form:errors path="nome"></form:errors>
			</div>
		</div>
		<div class="form-group">
			<label>Ano de lançamento:</label>
			<form:input path="anoDeLancamento"/>
			<form:errors path="anoDeLancamento"></form:errors>
			<input type="submit" value="Salvar" class="btn btn-primary"/>
		</div>
	</div>
</form:form>
