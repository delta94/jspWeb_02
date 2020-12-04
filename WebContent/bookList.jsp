<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 목록</title>
</head>
<body>
	<table border="1">
		<c:forEach items="${roomReservationList }" var = "dto" >
			<tr>
				<td rowspan="2"><img width="80px" height="80px" src="${pageContext.request.contextPath}/upload/${dto.roomImage}"></td>
				<td><a href="bookView.room?bookId=${dto.bookId }"> ${dto.roomTitle }</a></td>
			</tr>
			<tr>
				<td>${dto.bookCheckInDate } ~ ${dto.bookCheckOutDate }</td>
			</tr>
		</c:forEach>
		<tr>
			<td><input type="button" value="이전" onClick="history.go(-1)" style="align-items: right"></td>
		</tr>
	</table>
</body>
</html>