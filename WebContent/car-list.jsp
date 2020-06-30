<%@page import="java.sql.*"%>
<%@page import="common.Connector"%>
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
		Connection con = Connector.getConnection();
	Statement stmt = con.createStatement();

	String sql = "SELECT *FROM user";

	ResultSet rs = stmt.executeQuery(sql);
	%>
	
	<table border="1">
	<tr>
	
	<th>	번호	</th>	
	<th>	이름	</th>	
	<th>	ID</th>	
>		
	
	</tr>
	<%
	
	while(rs.next()) {
		%>
		<tr>
		<td><%=rs.getInt("num") %></td>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("ID") %></td>
		
		
</tr>



번호 : <input type="number">
<% 		
	}
%>
	</table>
</body>
</html>