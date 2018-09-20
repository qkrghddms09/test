<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록</title>
<style>
  table
  {
    width:100%;
  }
</style>
<link href="../css/style.css" rel="Stylesheet" type="text/css">
</head>
<body>
  <H1 style="text-align:center">회원 등록</H1>
  <form action="./insert_db.jsp" method="post">
    <table border="2">
      <tr>
       <th>아이디</th>
   	<td><input type="text" name="id" size="40"/></td>
      </tr>
      <tr>
    	<th>비밀번호</th>
    	<td><input type="password" name="pw" size="40"/></td>
      </tr>
      <tr>
       <th>성명</th>
   	<td><input type="text" name="name" size="40"/></td>
      </tr>
      <tr>
       <th>이메일</th>
   	<td><input type="text" name="email" size="80"/></td>
      </tr>
      <tr>
       <th>연락처</th>
   	<td><input type="text" name="tel" size="40"/></td>
      </tr>
      <tr>
   	<td>
    	<input type="submit" value="등록"/>
    	<input type="button" value="조회" name="view"
    	onclick="location.href='./custom01_list.jsp'"/>
   	</td>
      </tr>
    </table>
  </form>
 
</body>
</html>