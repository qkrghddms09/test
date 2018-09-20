<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.*" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록조회</title>
<style>
  table
  {
    text-align:center;
    width:100%;
  }
</style>
<link href="../css/style.css" rel="Stylesheet" type="text/css">
</head>
<body>
  <H3 style="text-align:center">회원목록조회</H3>
  <hr />
  <table border="1">
  	<tr>
       	<th>아이디</th>
       	<th>회원이름</th>
       	<th>이메일</th>
       	<th>연락처</th>
  	</tr>
    <%
   
    //오라클 DB
   
    Connection con = null;
    String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@127.0.0.1:1521:XE";
    String username = "scott";
    String passwd= "tiger";
   
    Class.forName(JDBC_DRIVER);
    con = DriverManager.getConnection(url, username, passwd);
    Statement stmt = con.createStatement();
   
    String sql = "Select * FROM CUSTOM_01 ORDER BY p_id ASC";
    ResultSet rst = stmt.executeQuery(sql);
   
   
    try{
     while(rst.next()){
%>
  <tr>
  	<td><%=rst.getString("p_id") %></td>
  	<td><%=rst.getString("c_name") %></td>
  	<td><%=rst.getString("c_email") %></td>
  	<td><%=rst.getString("c_tel") %></td>
  </tr>
 
<%   	
     }
   
    }catch(Exception e){
     e.printStackTrace();
    }finally{
      if(stmt != null)
      	stmt.close();
      if(con != null)
      	con.close();
    	if(rst != null)
      	rst.close();
    }
   
%>
  </table>
  <hr />
  <div>
    <b>
      HRDKOREA Copyrightⓒ2015 All rights reserved. Human Resources Development Service of Korea
    </b>
  </div>
</body>
</html>
