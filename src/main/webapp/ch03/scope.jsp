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
    pageContext.setAttribute("page_today", "2022-12-15");
    request.setAttribute("req_today", "2022-12-16");
    session.setAttribute("session_today", "2022-12-17");
    application.setAttribute("app_today", "2022-12-18");
%>

<%=pageContext.getAttribute("page_today")%>,
<%=request.getAttribute("req_today")%>,
<%=session.getAttribute("session_today") %>,
<%=application.getAttribute("app_today") %>,
</body>
</html>
