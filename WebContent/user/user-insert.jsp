<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user insert</title>
</head>
<body>

<form action="/web/user/user-insert-ok.jsp">




이름  : <input type="text" id="name" name="name"><br>
아이디  : <input type="text" id ="id" name="id"><br>


<button>회원정보입력</button>




</form>

<script>
 		function userInsert(){
 	
 
 	
 		var name = document.getElementById('name').value;
 	
 		var id = document.getElementById('id').value;
 	
 		
 		var str = 'num :' + num +', name :' + name + 'id : ' + id;
 		alert(str);
 		
 		
 	}
 		
</script>


</body>
</html>