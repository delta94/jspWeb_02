<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- test_11 -->


이름 :<%request.getAttribute("name"); %> <br>
제목 : <%request.getAttribute("title"); %> <br>

------------------------<br>

	<%request.getAttribute("textarea"); %><br>
 
 
 
 --------------------
저장되었습니다.



</body>
</html>