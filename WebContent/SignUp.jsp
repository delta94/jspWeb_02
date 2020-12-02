<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<style type="text/css">
input::-webkit-input-placeholder { font-size: 50%; }
input::-moz-placeholder { font-size: 50%; }
input:-ms-input-placeholder { font-size: 50%; }
input:-moz-placeholder { font-size: 50%; }
input::p

.laceholder { font-size: 50%; }

<%
	request.setCharacterEncoding("utf-8");
%>
</style>
<title>Insert title here</title>
</head>
<body>

<c:set var="fieldCheck" value="${joinfield.fieldCheckmessage}"></c:set>

<form action="SignUpCheck.room" method="post">
<center>

	<table >
		<!--  아이디 입력창       -->
		<tr>
			<td colspan="2">아이디</td>
		</tr>
		<tr>
			<td colspan="2"><input type="text" name="userId" value="${joinfield.userId}" placeholder="아이디를 입력해주세요." style="width:400px;height:40px;font-size:18px;"></td>
		</tr>
		<tr>
			<td colspan="2">
				<c:if test="${fieldCheck eq '아이디를 입력해 주세요.'||fieldCheck eq '중복된 아이디 입니다.' ||fieldCheck eq '올바른 아이디(이메일)가 아닙니다.'}" ><font size="2" color="red"><c:out value="${fieldCheck }"></c:out></font></c:if>
				<font size="2" color="green">${IDC}</font>
			</td>
		</tr>
		<!--  아이디 입력창       -->
		
		
		<!--  비밀번호 입력창       -->
		<tr>
			<td colspan="2">비밀번호</td>
		</tr>
		<tr>
			<td colspan="2"><input type="password" name="userPw" value="${joinfield.userPw}" placeholder="비밀번호를 입력해주세요." style="width:400px;height:40px;font-size:18px;"></td>
		</tr>
		<tr>
			<td colspan="2"><c:if test="${fieldCheck eq '비밀번호를 입력해 주세요.'}" ><font size="2" color="red"><c:out value="${fieldCheck}"></c:out></font></c:if></td>
		</tr>
		<!--  비밀번호 입력창       -->
			
		<!--  비밀번호 확인창       -->
		<tr>
			<td colspan="2">비밀번호 확인</td>
		</tr>
		<tr>
			<td colspan="2"><input type="password" name="userPwCheck" value="${PWCFIELD}" placeholder="비밀번호 확인." style="width:400px;height:40px;font-size:18px;"></td>
		</tr>
		<tr>
			<td colspan="2"><font size="2" color="red">${ PWCMSG}</font>
			<font size="2" color="green">${PWC}</font>
			
			</td>
		</tr>
		
		<!--  비밀번호 확인창       -->
		
		<!--  이름입력       -->
		
		<tr>
			<td colspan="2">이름</td>
		</tr>
		<tr>
			<td colspan="2"><input type="text" name="userName" value="${joinfield.userName }" placeholder="이름을 입력해주세요." style="width:400px;height:40px;font-size:18px;"></td>
		</tr>
		<tr>
			<td colspan="2"><c:if test="${fieldCheck eq '이름을 입력해 주세요.'}" ><font size="2" color="red"><c:out value="${fieldCheck }"></c:out></font></c:if></td>		
		</tr>
		
		<tr>
			<td>전화번호  <font size="2">( - 포함해서 적어주세요.)</font></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="text" name="userTel" value="${joinfield.userTel}" style="width:400px;height:40px;font-size:18px;">
			</td>
		</tr>
		<tr>
			<td><font size="2" color="red">${telMsg}</font><font size="2">${telMsgEx }</font></td>
		</tr>
		
		<!-- 전화번호 입력 -->
		
		<!-- 주소 입력 -->
		<tr>
			<td>주소 입력</td>
		</tr>
		<tr>	
			<td><input type="text" name="userAddress" style="width:400px;height:40px;font-size:18px;"></td>
		</tr>
		<!-- 주소 입력 -->
		
		
		<tr>
			<td></td>
		</tr>
		
		
		
		
		
		<tr>
			<td colspan="2" align="center"><input type="submit" value="회원가입 완료"></td>
		</tr>
		
		
		
		
		
		
		
	</table>
</form>
</center>
</body>
</html>