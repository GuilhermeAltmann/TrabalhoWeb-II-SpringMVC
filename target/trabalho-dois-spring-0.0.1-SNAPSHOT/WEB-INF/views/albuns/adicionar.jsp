<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC</title>
</head>
<body>
	<c:url var="actionAdicionar" value="/albuns/adicionar"></c:url>
	<form:form action="${actionAdicionar}" method="post" modelAttribute="album">
		<label>Nome:</label>
		<form:input path="nome"/>
		<form:errors path="nome"></form:errors>
		<label>Ano de lançamento:</label>
		<form:input path="anoDeLancamento"/>
		<form:errors path="anoDeLancamento"></form:errors>
		<input type="submit" value="Salvar" />
	</form:form>
</body>
</html>