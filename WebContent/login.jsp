<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <%
        // 인코딩 처리
        request.setCharacterEncoding("utf-8"); 
    %>
    <title>로그인 화면</title>
    
    <!-- css 파일 분리 -->
   
    <script type="text/javascript">
    
        function checkValue()
        {
            inputForm = eval("document.loginInfo");
            if(!inputForm.id.value)
            {
                alert("아이디를 입력하세요");    
                inputForm.id.focus();
                return false;
            }
            if(!inputForm.password.value)
            {
                alert("비밀번호를 입력하세요");    
                inputForm.password.focus();
                return false;
            }
        }
    

    </script>
 
</head>
<body>
    <div id="wrap">
        <form name="loginInfo" method="post" action="loginPro.jsp" 
                onsubmit="return checkValue()">
        
     
            <br><br>
            
            <table>
                <tr>
                    <td bgcolor="skyblue">아이디</td>
                    <td><input type="text" name="userId" id ="id" maxlength="50"></td>
                </tr>
                <tr>
                    <td bgcolor="skyblue">비밀번호</td>
                    <td><input type="password" name="userPw" id="password" maxlength="50"></td>
                </tr>
            </table>
            <br>
            <input type="submit" value="로그인"/>
            <input type="button" value="회원가입" onclick="location.href='SignUp.jsp'">
            <input type="button" value="아이디찾기" onclick="location.href='FindID.jsp'">
        </form>
        
        <% 
            // 아이디, 비밀번호가 틀릴경우 화면에 메시지 표시
            // LoginPro.jsp에서 로그인 처리 결과에 따른 메시지를 보낸다.
            String msg=request.getParameter("msg");
            
            if(msg!=null && msg.equals("0")) 
            {
                out.println("<br>");
                out.println("<font color='purple' size='5'>비밀번호를 확인해 주세요.</font>");
            }
            else if(msg!=null && msg.equals("-1"))
            {    
                out.println("<br>");
                out.println("<font color='green' size='5'>아이디를 확인해 주세요.</font>");
            }
            else if(msg!=null && msg.equals("2"))
            {    
                out.println("<br>");
                out.println("<font color='blue' size='5'>이미 탈퇴된 회원입니다. 다시 가입 해주세요</font>");
            }
        %>    
    </div>    
</body>


