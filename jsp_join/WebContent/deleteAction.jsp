<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ page import="bbs.bbsDAO"%> --%>
<%-- <%@ page import="bbs.bbsDTO"%> --%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="java.io.File" %>
<%	request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title>별별게시판</title>
</head>
<body>
	<%
		String u_id = null;
		//로그인 완료된 회원은 로그인 상태 유지 & 회원가입 페이지 못 들어감
		if (session.getAttribute("u_id") != null) {//유저아이디이름으로 세션이 존재하는 회원들은 
			u_id = (String) session.getAttribute("u_id");//유저아이디에 해당 세션값을 넣어준다.
		}
		if (u_id == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = 'login.jsp'"); //이미 로그인 되면 또 로그인 안 됨
			script.println("</script>");
		} 

	%>
</body>
</html>