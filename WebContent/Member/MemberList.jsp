<%@ page language="java" contentType="text/html; charset=EUC-KR"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="net.member.db.*" %>

<%
	List list=(List)request.getAttribute("memberlist");
	int listcount=((Integer)request.getAttribute("listcount")).intValue();
	int nowpage=((Integer)request.getAttribute("page")).intValue();
	int maxpage=((Integer)request.getAttribute("maxpage")).intValue();
	int startpage=((Integer)request.getAttribute("startpage")).intValue();
	int endpage=((Integer)request.getAttribute("endpage")).intValue();
%>
<html>
<head>
	<title>MVC �Խ���</title>
</head>

<body>
<!-- �Խ��� ����Ʈ -->
<table width=50% border="0" cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="4">MVC �Խ���</td>
		<td align=right>
			<font size=2>ȸ������ : ${listcount }</font>
		</td>
	</tr>
	
	<tr align="center" valign="middle" bordercolor="#333333">
		<td style="font-family:Tahoma;font-size:8pt;" width="35%" height="26">
			<div align="center">���̵�</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="35%">
			<div align="center">�̸�</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="15%">
			<div align="center">������</div>
		</td>
		<td style="font-family:Tahoma;font-size:8pt;" width="15%">
			<div align="center">����</div>
		</td>
	</tr>
	
	<%
	
		for(int i=0;i<list.size();i++){
			MemberBean bl=(MemberBean)list.get(i);
			
	%>
	
	<tr align="center" valign="middle" bordercolor="#333333"
		onmouseover="this.style.backgroundColor='F8F8F8'"
		onmouseout="this.style.backgroundColor=''">
		<td height="23" style="font-family:Tahoma;font-size:10pt;">
			<a href="./MemberDetailAction.do?id=<%=bl.getId()%>"><%=bl.getId()%></a>
		</td>
		 
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center">
			
			<%=bl.getName()%>
		
			</div>/
		</td>
		
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><%=bl.getMaster() %></div>
		</td>
		<td style="font-family:Tahoma;font-size:10pt;">
			<div align="center"><a href="MemberDeleteAction.do?id=<%=bl.getId()%>">delete</a></div>
		</td>	
	</tr>
	<%} %>
	<tr align=center height=20>
		<td colspan=7 style=font-family:Tahoma;font-size:10pt;>
			<%if(nowpage<=1){ %>
			[����]&nbsp;
			<%}else{ %>
			<a href="./MemberListAction.do?page=<%=nowpage-1 %>">[����]</a>&nbsp;
			<%} %>
			
			<%for(int a=startpage;a<=endpage;a++){
				if(a==nowpage){%>
				[<%=a %>]
				<%}else{ %>
				<a href="./MemberListAction.do?page=<%=a %>">[<%=a %>]</a>&nbsp;
				<%} %>
			<%} %>
			<%if(nowpage>=maxpage){ %>
			[����]
			<%}else{ %>
			<a href="./MemberListAction.do?page=<%=nowpage+1 %>">[����]</a>
			<%} %>
		</td>
	</tr>
	<tr align="right">
		<td colspan="5">
	   		<a href="javascript:history.go(-1)">[�ڷ�]</a>
		</td>
	</tr>
</table>
</body>
</html>