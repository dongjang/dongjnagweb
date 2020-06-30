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

	String sql = "SELECT * FROM user ";

	ResultSet rs = stmt.executeQuery(sql);
	%>
	
	
	
	<table border="1">
	<button>삭제</button>
	<form action="/web/user/user-list.jsp">
	<a href="/web/user/user-insert.jsp"><button>회원정보다시입력</button></a>
	
	<tr>
	
	<th> <input type="checkbox" id="all" onclick="checkAll()"></th>
	<th>	번호	</th>	
	<th>	이름	</th>	
	<th>	ID</th>

</tr>
	<%
	
	while(rs.next()) {
		%>
		<tr>
		<td> <input type="checkbox" name="ch" value="<%=rs.getInt("num") %>"></td>
		<td><%=rs.getInt("num") %></td>
		<td><%=rs.getString("name") %></td>
		<td><%=rs.getString("ID") %></td>
		
		
</tr>



<% 		
	}
%>
</table>
</form>
	<script>
	
	
	function checkAll(){
		
		var obj = document.getElementById('all');
		var objs = document.getElementsByName('ch');
		for(var i=0; i<objs.length;i++){
			
			objs[i].checked = obj.checked;
		
		}
		
	}
	
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
</body>
</html>