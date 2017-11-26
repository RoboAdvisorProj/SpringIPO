<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>error_common</title>
</head>
<body>
	<h4>${exception.getMessage() }</h4>

	<ul>
		<c:forEach items="${exception.getStackTrace()}" var="stack">
			<li>${stack.toString() }</li>
		</c:forEach>
	</ul>
</body>
</html>
