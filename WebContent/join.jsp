<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style type="text/css">
input::-webkit-input-placeholder { font-size: 50%; }
input::-moz-placeholder { font-size: 50%; }
input:-ms-input-placeholder { font-size: 50%; }
input:-moz-placeholder { font-size: 50%; }
input::placeholder { font-size: 50%; }

<%
	request.setCharacterEncoding("utf-8");
%>
</style>
<title>Insert title here</title>
</head>
<body>
<c:set var="fieldCheck" value="${joinfield.fieldCheckmessage}"></c:set>

<form action="joincheck.do" method="post">
<center>
	<table >
		<!--  ���̵� �Է�â       -->
		<tr>
			<td colspan="2">���̵�</td>
		</tr>
		<tr>
			<td colspan="2"><input type="text" name="userid" value="${joinfield.userid }" placeholder="���̵� �Է����ּ���." style="width:400px;height:40px;font-size:18px;"></td>
		</tr>
		<tr>
			<td colspan="2"><c:if test="${fieldCheck eq '���̵� �Է��� �ּ���.'||fieldCheck eq '�ߺ��� ���̵� �Դϴ�.'}" ><font size="2" color="red"><c:out value="${fieldCheck }"></c:out></font></c:if></td>
			<td><input type="submit" value="�ߺ�Ȯ��"></td>
		</tr>
		<!--  ���̵� �Է�â       -->
		
		
		<!--  ��й�ȣ �Է�â       -->
		<tr>
			<td colspan="2">��й�ȣ</td>
		</tr>
		<tr>
			<td colspan="2"><input type="password" name="userpw" value="${joinfield.userpw }" placeholder="��й�ȣ�� �Է����ּ���." style="width:400px;height:40px;font-size:18px;"></td>
		</tr>
		<tr>
			<td colspan="2"><c:if test="${fieldCheck eq '��й�ȣ�� �Է��� �ּ���.'}" ><c:out value="${fieldCheck}"></c:out></c:if></td>
		</tr>
		<!--  ��й�ȣ �Է�â       -->
			
		<!--  ��й�ȣ Ȯ��â       -->
		<tr>
			<td colspan="2">��й�ȣ Ȯ��</td>
		</tr>
		<tr>
			<td colspan="2"><input type="password" name="userpwCheck" value="${joinfield.userpwCheck }" placeholder="��й�ȣ Ȯ��." style="width:400px;height:40px;font-size:18px;"></td>
		</tr>
		<tr>
			<td colspan="2"><c:if test="${fieldCheck eq '��й�ȣ�� ��ġ���� �ʽ��ϴ�.'}" ><c:out value="${fieldCheck}"></c:out></c:if></td>
		</tr>
		
		<!--  ��й�ȣ Ȯ��â       -->
		
		<!--  �̸��Է�       -->
		
		<tr>
			<td colspan="2">�̸�</td>
		</tr>
		<tr>
			<td colspan="2"><input type="text" name="username" value="${joinfield.username }" placeholder="�̸��� �Է����ּ���." style="width:400px;height:40px;font-size:18px;"></td>
		</tr>
		<tr>
			<td colspan="2"><c:if test="${fieldCheck eq '�̸��� �Է��� �ּ���.'}" ><c:out value="${fieldCheck }"></c:out></c:if></td>		
		</tr>
		
		<!--  �̸��Է�       -->
		
		<tr>
			<td>����          ����</td>
		</tr>
		<!--  ���� üũ       -->
		<tr>
			<td>
				<select name="usergender">
					<option value="">���þ���</option>
					<option value="����">����</option>
					<option value="����">����</option>
				</select>
			
			
			
				<input type="text" name="userage" size="3">
			</td>
		</tr>
		
		
		<!-- ��ȭ��ȣ �Է� -->
		<tr>
			<td>��ȭ��ȣ</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="text" name="usertel" style="width:400px;height:40px;font-size:18px;">
			</td>
		</tr>
		
		<!-- ��ȭ��ȣ �Է� -->
		
		<!-- �ּ� �Է� -->
		<tr>
			<td>�ּ� �Է�</td>
		</tr>
		<tr>	
			<td><input type="text" name="useraddress" style="width:400px;height:40px;font-size:18px;"></td>
		</tr>
		<!-- �ּ� �Է� -->
		
		<tr>
			<td>����</td>
		</tr>
		<tr>
			<td><input type="text" name="userbday"></td>
		</tr>
		
		
		<tr>
			<td colspan="2" align="center"><input type="submit" value="ȸ������ �Ϸ�"></td>
		</tr>
		
		
		
		
		
		
		
	</table>
</form>
</center>
</body>
</html>