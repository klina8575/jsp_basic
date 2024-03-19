<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");

// 파라미터 값 가져오기 (id, pw, loginChk)
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String loginChk = request.getParameter("loginChk");

// 기존 DB의 사용자 ID, PW
String dbId = "user", dbPw = "1234";

if (dbId.equals(id)) {
	if (dbPw.equals(pw)) {
		// 로그인 작업 -> 세션값 생성(아이디, 비밀번호 저장)
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);
		
		// 사용자의 아이디 기억여부를 null 체크로 확인 
		if (loginChk != null) { 
			Cookie c = new Cookie("id", id); // 체크한 경우 쿠키에 사용자의 id저장
			c.setMaxAge(60 * 60); //초 단위 60분 
			c.setPath("/");
			response.addCookie(c);
		} else {
			Cookie c = new Cookie("id", null); // 체크하지 않은경우 쿠키에 사용자의 id저장 X
			c.setMaxAge(60 * 60); //초 단위 60분 
			c.setPath("/");
			response.addCookie(c);
		}
		%>
		<script>
			location.href = "main.jsp" // 쿠키 정보도 같이 넘어감
		</script>
		<%
	} else {
		%>
		<script>
			alert("비밀번호가 다릅니다.");
			location.href = "index.jsp"
		</script>
		<%
	}
} else {
	%>
	<script>alert("아이디가 다릅니다.");
	location.href = "index.jsp"
	</script>
	<%
}
%>

</body>
</html>