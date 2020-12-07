<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="com.room.bbc.dao.RoomListDao" %>

    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 상세정보</title>
	<link rel="stylesheet" href="./jquery-ui-1.12.1/jquery-ui.min.css">
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="./jquery-ui-1.12.1/jquery-ui.min.js"></script> 
	<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
	  <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDFg2V1t9yHFnpoPxoNjwYxfoDruN8EE6M&callback=initMap&libraries=&v=weekly"
      defer
    ></script>
    <style type="text/css">
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 500px;
      }

      /* Optional: Makes the sample page fill the window. */
      html,
      body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      
      	*{
		margin: 0;
		padding: 0;
	}
	
	table{
		border-collapse: collapse;
		margin-top: 10px;
		margin-left: auto;
  	  	margin-right: auto;
		
	}
	
	a{
		text-decoration: none;
		color: inherit;
	}
	
	h1 {
	  text-align: center;
	  margin-bottom: 20px;
	}
		
	.wrap{
		padding: 30px;
		
	}
	
	.wrap .registerBtn{
		margin-bottom: 10px;
		padding: 10px;
		
	}
	
	.sub_news{
		width: 50%;
	
	}
	
	.sub_news #trtr{
		border-bottom: 1px solid #999;
	
	}
	
	.sub_news th, .sub_news td{
		padding: 20px;
		font-size: 15px;
	}
	
	.sub_news th{
		padding: 5px 0 6px;
		border-top: solid 2px #999;
		border-bottom: solid 2px #b2b2b2;
		background-color: #f1f1f4;
		color: #333;
		font-weight: bold;
		line-height: 20px;
		vertical-align: top;
	}
	
	.sub_news .thth{
		border-right: solid 1px #999;
	}
	.sub_news .title{
		border-top: solid 2px #999;
		border-bottom: solid 2px #999;
		text-align: left;
	}
	
	.sub_news td{
		text-align: center;
	}
	
	.sub_news .tdtd{
		text-align: left;
	}
	

	.sub_news .bold{
		border-top: 1px solid #999;
	}
	
	.sub_news #bold1{
		border-right: 1px solid #999;
	}
	.sub_news .bold2{
		border-bottom: 1px solid #999;
	}
	
	.sub_news .img{
		padding-bottom: 40px;
	}
	
	.sub_news .page a{
		font-size: 18px;
		padding-right: 10px;
	
	}
	
	#btn {
       margin-left: 25%;
       width: 84px;
       height: 40px;   
       font-size:14px;
       font-weight:700;
       margin-top: 10px;
       margin-bottom: 10px;
	   padding: 0px;
	}
      
      
      
      
      
    </style>
    
    
    <%
    request.setCharacterEncoding("utf-8"); 
    %>
   <script>
    "use strict";

    function initMap() {
      const myLatLng = {
        lat: <%=session.getAttribute("GPSX")%>,
        lng: <%=session.getAttribute("GPSY")%>
      };
      const map = new google.maps.Map(document.getElementById("map"), {
        zoom: 15,
        center: myLatLng,
        fullscreenControl: true,
        zoomControl: true,
        streetViewControl: false
      });
      new google.maps.Marker({
        position: myLatLng,
        map,
        title: "Hello World!"
      });
    }






    
    function check(){
    	theForm = document.book;
		 
		if(theForm.date1.value.trim()==0){
			alert("체크인 날짜를 선택해주세요.");
			return false;
			
		} else if(theForm.date2.value.trim()==0){
			alert("체크아웃 날짜를 선택해주세요.");
			return false;
		} 
    } 
 
    function openWindowPop(url, name){
        var options = 'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no';
        window.open(url, name, options);
    }



	$(function(){
		
		$("#date1").datepicker({
			numberOfMonths:[1,2],
			minDate:0,
			nextText:"다음",
			prevText:"이전",
			onClose:function(selectedDate){
				$("#date2").datepicker("option","minDate", selectedDate);
			}
			
		});
		
		$("#date2").datepicker({
			numberOfMonths:[1,2],
			nextText:"다음",
			prevText:"이전",
			onClose:function(selectedDate){
				$("#date1").datepicker("option","maxDate", selectedDate);
			}
			
		});

	});
	
    
    </script>
</head>
	
<body>

<form name="book" action="bookPage2.room?roomId=<%=session.getAttribute("ROOMID") %>" method="post" onsubmit="return check()">
	<table class="sub_news">
		<c:forEach items = "${list }" var = "dto">
		<colgroup>
			<col width="80%">
		</colgroup>
			<tr>
				<td colspan="2">${dto.roomTitle }</td>
			</tr>
			
			<tr>
				<td colspan="2">최대 인원 ${dto.roomCapa }명</td>
			</tr>
			<tr>
				<td colspan="2">${dto.roomContent }</td>
			</tr>
			<tr>
				<td colspan="2">체크인 : ${dto.roomCheckIn }</td>
			</tr>
			<tr>
				<td colspan="2">체크아웃 : ${dto.roomCheckOut }</td>
			</tr>
			
			<tr>
				<td colspan="2"><div id="map" style="width: 100%; height: 400px"></div></td>
			</tr>
			<tr>
				<td colspan="2">전화 문의 주세요!</td>
			</tr>
			<tr>
				
				<td colspan="2">숙박 기간을 선택하세요.</td>
			</tr>
			<tr>
				<td align="right">체크인</td><td>체크아웃</td>
			</tr>
			<tr>
			<c:choose>
				<c:when test ="${empty sessionScope.DATE1 }">
				<td align="right"><input type="text" name="date1" id="date1" value="" placeholder="체크인 날짜를 입력하세요" /></td>
				<td align="right"><input type="text" name="date2" id="date2" value="" placeholder="체크아웃 날짜를 입력하세요" /></td></c:when>
				
				<c:when test ="${not empty sessionScope.DATE1 }" >
				<td align="right"><input type="text" name="date1" id="date1" value="<%=session.getAttribute("DATE1")%>" placeholder="" readonly="readonly"/></td>
				<td align="right"><input type="text" name="date2" id="date2" value="<%=session.getAttribute("DATE2")%>" placeholder="" readonly="readonly"/></td></c:when>
			</c:choose>
			
			</tr>
			</c:forEach>
			
			
			
			
			<tr>
			<!-- -------------------------------- -->
			<!--  수정 해야되는 부분 -->
			<c:choose>
				<c:when test ="${empty sessionScope.DATE1 }">
				<td align="left" colspan="2">게스트<input type="number" name="guest" id="guest" value="" placeholder="인원수를 입력하세요" max="${dto.roomCapa} " min="1" step="1"/> 명 </td></c:when>
				<c:when test ="${not empty sessionScope.DATE1 }" >
				<td align="left" colspan="2">게스트<input type="number" name="guest" id="guest" value="<%=session.getAttribute("GUEST") %>" placeholder="인원수를 입력하세요" max="${dto.roomCapa} " min="1" step="1"/> 명 </td></c:when>
			</c:choose>	
			
			
			</tr>
			<tr>
				<c:choose>
					<c:when test="${empty sessionScope.USERID}">
						<td colspan="2"><input type="button" onclick="location.href='login.jsp'" value="예약하기"></td>
					</c:when>
					<c:otherwise>
						<td colspan="2"><input type="submit" value="예약하기"></td>

					</c:otherwise>
				</c:choose>
			</tr>
			<tr>
				<td colspan="2">후기</td>
			</tr>
			<c:forEach items="${reviewList}" var="dto2" begin="0" end="4" step="1">
				<tr>
					<td>${dto2.userinfo_Userid}</td><td> ${dto2.reviewDate}</td>
				</tr>
				<tr>
					<td>${dto2.reviewContent}</td>
				</tr>
			</c:forEach>
			<tr>
				<td><input type="button" value="모든 후기 보기" onclick="window.open('Rating_list.room?roomId=<%=session.getAttribute("ROOMID")%>','','width=500, height=500, scrollbars=yes')"></td>
				<td><input type="button" class ="registerBtn" value="뒤로가기" onclick="history.back();"></td></td>
			</tr>
 	</table>
 </form>
</body>
</html>