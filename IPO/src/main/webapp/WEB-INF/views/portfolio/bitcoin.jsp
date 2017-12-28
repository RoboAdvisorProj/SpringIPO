<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="noIE" lang="kr">
<head>
<title>D O ! P O</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="location" value="${pageContext.request.contextPath}" />
<script type="text/javascript" src="https://canvasjs.com/assets/script/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script type="text/javascript">
window.onload = function () {
var dataPoints = [];
$.getJSON("${location}/resources/assets/json/test.json", function(data) {  
	$.each(data, function(key, value){
		dataPoints.push({ds: value[0], y: value[1]});
	});
	var chart = new CanvasJS.Chart("chartContainer",{
		title:{
			text:"Rendering Chart with dataPoints from External JSON"
		},
		data: [{
			type: "line",
			dataPoints : dataPoints,
		}]
	});
	chart.render();
});
}
</script>
</head>

<body>
	<%@ include file="../include/topmenu.jsp"%>
	<!-- Section Background -->
	<section class="section-background">
		<div class="container">
			<ol class="breadcrumb">
				<li><a href="${location}/index">Home</a></li>
				<li class="active">&nbsp;비트코인</li>
			</ol>
		</div>
		<!-- /.container -->
	</section>
<div id="chartContainer" style="height: 300px; width: 100%;"></div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
