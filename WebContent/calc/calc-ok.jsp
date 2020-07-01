<%@page import="java.sql.PreparedStatement"%>
<%@page import="common.Connector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
double num1 = Double.parseDouble(request.getParameter("num1"));
String op = request.getParameter("op");
double num2 = Double.parseDouble(request.getParameter("num2"));
String ops= num1 +op +num2;
double result= 0 ;



//if
	if ("+".equals(op)) {

	result = num1 + num2;

}
	else if("-".equals(op)){
	
	 result = num1 - num2;
	
}
	else if("*".equals(op)){
	
	result = num1 * num2;
	
}
	else if("/".equals(op)){
	
	 result = num1 / num2;
	
}
//if
Connection conn = Connector.getConnection();
String sql = "insert into calc_his(ops, result)";
sql += "values(?,?)";
PreparedStatement ps= conn.prepareStatement(sql);



ps.setString(1,ops);
ps.setDouble(2,result);

ps.executeUpdate();






%>



