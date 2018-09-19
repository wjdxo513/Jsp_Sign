<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="net.member.db.*" %>
<%
   MemberBean board = (MemberBean)request.getAttribute("memberdata");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1"> 
<tr>
	<td>이름:</td>
	<td><%=board.getName()%></td>
</tr>
<tr>
	<td>아이디</td>
	<td><%=board.getId()%></td>
</tr>
<tr>
	<td>비번</td>
	<td><%=board.getPw()%></td>
</tr>
<tr>
	<td>폰</td>
	<td><%=board.getPhone()%></td>
</tr>
<tr>
	<td>관리자(0이 관리자 1이 유저)</td>
	<td><%=board.getMaster() %></td>
</tr>
<tr>
	<td>뒤로가기</td>
	<td><a href="javascript:history.go(-1)">[뒤로]</a></td>
</tr>
</table>
</body>
</html>