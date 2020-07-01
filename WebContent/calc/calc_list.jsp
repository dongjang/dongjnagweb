<%@page import="vo.CalcHis"%>
<%@page import="java.util.List"%>
<%@page import="service.CalcService"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.Connector"%>
<%@page import="java.sql.Connection"%>
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
	
	
CalcService cs = new CalcService();
List<CalcHis> chList = cs.getCalcList();
%>

	<table border="1">
	<tr>
	
	<th>번호</th>
	<th>연산</th>
	<th>결과</th>
	</tr>
	

<% 

for(CalcHis ch:chList){


	%>
	
	
	<tr>
	
	<th><%=ch.getNum() %></th>
	<th><%=ch.getOps() %></th>
	<th><%=ch.getResult() %></th>
	</tr>
	
	
	
	
	
	
	<% 
	
}
				
		%>
		



	
</table>
</body>
</html>