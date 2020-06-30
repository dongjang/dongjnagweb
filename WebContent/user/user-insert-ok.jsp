<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.Connector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num");
String name = request.getParameter("name");
String id = request.getParameter("id");

Connection conn = Connector.getConnection();

String sql = "insert into user(name, id) ";
sql += "values(?,?)";
PreparedStatement ps= conn.prepareStatement(sql);

ps.setString(1,name);
ps.setString(2,id);
int result = ps.executeUpdate();




%>

num : <%=num%><br>
name : <%=name%><br>
id : <%=id%><br>
실행결과 : <%=result%>
<script> 
location.href="/web/user/user-list.jsp"

</script>