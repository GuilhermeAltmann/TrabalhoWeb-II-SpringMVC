<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><tiles:insertAttribute name="title" ignore="true"></tiles:insertAttribute></title>
</head>
<body>
	<div style="width: 100%">
		<tiles:insertAttribute name="header" ignore="false"></tiles:insertAttribute>
	</div>
	<div style="width: 100%">
		<tiles:insertAttribute name="body" ignore="false"></tiles:insertAttribute>
	</div>
	<div style="width: 100%">
		<tiles:insertAttribute name="footer" ignore="false"></tiles:insertAttribute>
	</div>
</body>
</html>