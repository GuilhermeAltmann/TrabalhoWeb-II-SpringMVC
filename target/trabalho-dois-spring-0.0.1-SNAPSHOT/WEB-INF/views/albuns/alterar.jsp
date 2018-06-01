<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<h2>Alteração do álbum "${album.id}"</h2>

<c:url var="actionAlterar" value="/albuns/alterar"></c:url>
<form:form action="${actionAlterar}" method="post" modelAttribute="album" cssClass="bs-component">
	<div class="col-lg-4 col-md-6 col-xs-12">
		<div class="form-group">
			<label class="form-control-label">Id:</label>
			<form:input path="id" cssClass="form-control" readonly="true"/>
		</div>
		<div class="form-group">
			<label class="form-control-label">Nome:</label>
			<form:input path="nome" cssClass="form-control" />
			<div class="invalid-feedback">
				<form:errors path="nome"></form:errors>
			</div>
		</div>
		<div class="form-group">
			<label class="form-control-label">Ano de lançamento:</label>
			<form:input path="anoDeLancamento" cssClass="form-control" />
			<div class="invalid-feedback">
				<form:errors path="anoDeLancamento"></form:errors>
			</div>
		</div>
		<input type="submit" value="Salvar" class="btn btn-primary"/>
	</div>
</form:form>