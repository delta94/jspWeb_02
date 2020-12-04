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
<script type="text/javascript">
	function goPopup(){
		// �ּҰ˻��� ������ �˾� �������� ȣ���մϴ�.
		// ȣ��� ������(jusopopup.jsp)���� ���� �ּҰ˻�URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)�� ȣ���ϰ� �˴ϴ�.
		var pop = window.open("jusoPopup.jsp","pop","width=50,height=50, scrollbars=yes, resizable=yes"); 
		
		// ����� ���� ���, ȣ��� ������(jusopopup.jsp)���� ���� �ּҰ˻�URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)�� ȣ���ϰ� �˴ϴ�.
	    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}
	
	function jusoCallBack(roadAddrPart1, addrDetail){
		// �˾����������� �ּ��Է��� ������ �޾Ƽ�, �� �������� ������ ����մϴ�.
		document.form.roadAddrPart1.value = roadAddrPart1;
		document.form.addrDetail.value = addrDetail;
	
}

</script>
<c:set var="fieldCheck" value="${joinfield.fieldCheckmessage}"></c:set>

<form id="form" name="form" action="SignUpCheck.room" method="post">
<center>

	<table >
		<!--  ���̵� �Է�â       -->
		<tr>
			<td colspan="2">���̵�</td>
		</tr>
		<tr>
			<td colspan="2"><input type="text" name="userId" value="${joinfield.userId}" placeholder="���̵� �Է����ּ���." style="width:400px;height:40px;font-size:18px;"></td>
		</tr>
		<tr>
			<td colspan="2">
				<c:if test="${fieldCheck eq '���̵� �Է��� �ּ���.'||fieldCheck eq '�ߺ��� ���̵� �Դϴ�.' ||fieldCheck eq '�ùٸ� ���̵�(�̸���)�� �ƴմϴ�.'}" ><font size="2" color="red"><c:out value="${fieldCheck }"></c:out></font></c:if>
				<font size="2" color="green">${IDC}</font>
			</td>
		</tr>
		<!--  ���̵� �Է�â       -->
		
		
		<!--  ��й�ȣ �Է�â       -->
		<tr>
			<td colspan="2">��й�ȣ</td>
		</tr>
		<tr>
			<td colspan="2"><input type="password" name="userPw" value="${joinfield.userPw}" placeholder="��й�ȣ�� �Է����ּ���." style="width:400px;height:40px;font-size:18px;"></td>
		</tr>
		<tr>
			<td colspan="2"><c:if test="${fieldCheck eq '��й�ȣ�� �Է��� �ּ���.'}" ><font size="2" color="red"><c:out value="${fieldCheck}"></c:out></font></c:if></td>
		</tr>
		<!--  ��й�ȣ �Է�â       -->
			
		<!--  ��й�ȣ Ȯ��â       -->
		<tr>
			<td colspan="2">��й�ȣ Ȯ��</td>
		</tr>
		<tr>
			<td colspan="2"><input type="password" name="userPwCheck" value="${PWCFIELD}" placeholder="��й�ȣ Ȯ��." style="width:400px;height:40px;font-size:18px;"></td>
		</tr>
		<tr>
			<td colspan="2"><font size="2" color="red">${ PWCMSG}</font>
			<font size="2" color="green">${PWC}</font>
			
			</td>
		</tr>
		
		<!--  ��й�ȣ Ȯ��â       -->
		
		<!--  �̸��Է�       -->
		
		<tr>
			<td colspan="2">�̸�</td>
		</tr>
		<tr>
			<td colspan="2"><input type="text" name="userName" value="${joinfield.userName }" placeholder="�̸��� �Է����ּ���." style="width:400px;height:40px;font-size:18px;"></td>
		</tr>
		<tr>
			<td colspan="2"><c:if test="${fieldCheck eq '�̸��� �Է��� �ּ���.'}" ><font size="2" color="red"><c:out value="${fieldCheck }"></c:out></font></c:if></td>		
		</tr>
		
		<tr>
			<td>��ȭ��ȣ  <font size="2">( - �����ؼ� �����ּ���.)</font></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="text" name="userTel" value="${joinfield.userTel}" style="width:400px;height:40px;font-size:18px;">
			</td>
		</tr>
		<tr>
			<td><font size="2" color="red">${telMsg}</font><font size="2">${telMsgEx }</font></td>
		</tr>
		
		<!-- ��ȭ��ȣ �Է� -->
		
		<!-- �ּ� �Է� -->
		<tr>
			<td>�ּ� �Է�</td>
		</tr>
		<tr>
			<td><input placeholder="���θ� �ּ�" type="text"  style="width:500px;" id="roadAddrPart1"  name="userAddress" readonly="readonly"  onClick="goPopup();" value="${joinfield.userAddress}"/>
			&nbsp;
			<input type="button" onClick="goPopup();" value="�ּ� ã��" style="width:500px;"/>
			</td>
		</tr>
		<tr>
			<td>�� �ּ�</td>
		</tr>
		<tr>
			<td><input placeholder="���ּ�" type="text"  style="width:500px;" id="addrDetail" value="${joinfield.userAddressDetail }"  name="userAddressDetail" style="width:500px;" /></td>
		</tr>
		<!-- �ּ� �Է� -->
		<tr>
			<td></td>
		</tr>
		
		<tr>
			<td colspan="2" align="center"><input type="submit" value="ȸ������ �Ϸ�"></td>
		</tr>
	</table>
</form>
</center>
</body>
</html>