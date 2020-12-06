<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<link rel="stylesheet" href="./css/signup.css"> 

<%

	request.setCharacterEncoding("utf-8");
%>

<title>ȸ������</title>
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
<div class="wrap">
    <h1>ȸ������</h1>
	<table> 
		<!--  ���̵� �Է�â       -->
		<tr>
			<td colspan="3">���̵�</td>
		</tr>
		<tr>
			<td colspan="3"><input type="text" name="userId" value="${joinfield.userId}" placeholder="���̵� �Է����ּ���." style="width:400px;height:40px;font-size:15px;"></td>
		</tr>
		<tr>
			<td colspan="3">
				<c:if test="${fieldCheck eq '���̵� �Է��� �ּ���.'||fieldCheck eq '�ߺ��� ���̵� �Դϴ�.' ||fieldCheck eq '�ùٸ� ���̵�(�̸���)�� �ƴմϴ�.'}" ><font size="2" color="red"><c:out value="${fieldCheck }"></c:out></font></c:if>
				<font size="2" color="green">${IDC}</font>
			</td>
		</tr>
		<!--  ���̵� �Է�â       -->
		
		
		<!--  ��й�ȣ �Է�â       -->
		<tr>
			<td colspan="3">��й�ȣ</td>
		</tr>
		<tr>
			<td colspan="3"><input type="password" name="userPw" value="${joinfield.userPw}" placeholder="��й�ȣ�� �Է����ּ���." style="width:400px;height:40px;font-size:15px;"></td>
		</tr>
		<tr>
			<td colspan="3"><c:if test="${fieldCheck eq '��й�ȣ�� �Է��� �ּ���.'}" ><font size="2" color="red"><c:out value="${fieldCheck}"></c:out></font></c:if></td>
		</tr>
		<!--  ��й�ȣ �Է�â       -->
			
		<!--  ��й�ȣ Ȯ��â       -->
		<tr>
			<td colspan="3">��й�ȣ Ȯ��</td>
		</tr>
		<tr>
			<td colspan="3"><input type="password" name="userPwCheck" value="${PWCFIELD}" placeholder="��й�ȣ Ȯ���� ���� �ٽ� �Է����ּ���." style="width:400px;height:40px;font-size:15px;"></td>
		</tr>
		<tr>
			<td colspan="3"><font size="2" color="red">${ PWCMSG}</font>
			<font size="2" color="green">${PWC}</font>
			</td>
		</tr>
		
		<!--  ��й�ȣ Ȯ��â       -->
		
		<!--  �̸��Է�       -->
		
		<tr>
			<td colspan="3">�̸�</td>
		</tr>
		<tr>
			<td colspan="3"><input type="text" name="userName" value="${joinfield.userName }" placeholder="�̸��� �Է����ּ���." style="width:400px;height:40px;font-size:15px;"></td>
		</tr>
		<tr>
			<td colspan="3"><c:if test="${fieldCheck eq '�̸��� �Է��� �ּ���.'}" ><font size="2" color="red"><c:out value="${fieldCheck }"></c:out></font></c:if></td>		
		</tr>
		
		<tr>
			<td>��ȭ��ȣ  <font size="2">( - �����ؼ� �����ּ���.)</font></td>
		</tr>
		<tr>
			<td colspan="3">
				<input type="text" name="userTel" value="${joinfield.userTel}" style="width:400px;height:40px;font-size:15px;" placeholder="010-0000-0000">
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
			<td colspan="2"><input placeholder="���θ� �ּ�" type="text" style="width:400px;height:40px;font-size:15px;" id="roadAddrPart1"  name="userAddress" readonly="readonly"  onClick="goPopup();" value="${joinfield.userAddress}"/>
			</td>
			<td>
			<input type="button" onClick="goPopup();" value="�ּ� ã��" style="width:70px;height:30px;font-size:14px;"/>
			</td>
		</tr>
		<tr>
			<td>�� �ּ�</td>
		</tr>
		<tr>
			<td colspan="3"><input placeholder="���ּ�" type="text" style="width:400px;height:40px;font-size:15px;" id="addrDetail" value="${joinfield.userAddressDetail }"  name="userAddressDetail" style="width:500px;" /></td>
		</tr>
		<!-- �ּ� �Է� -->
		<tr>
			<td><input type="button" value="�� ��" 
			id="input_submit"
	        class="input_field"
	        onClick="history.go(-1)" style="width:100px; height:30px;">
	        </td>
			<td align="right"><input type="submit" value="�� ��" 
			id="input_submit"
	        class="input_field"
	        style="width:100px; height:30px;">
	        </td>
			<td></td>
		</tr>
	</table>
</div>
</form>
</body>
</html>