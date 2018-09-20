<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB등록</title>
<link href="../css/style.css" rel="Stylesheet" type="text/css">
</head>
<body>
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
    String sql;
    ResultSet rst;
%>
<%
  try{
  // 값 불러오기
  //
  String p_id = request.getParameter("id");
  String p_pw = request.getParameter("pw");
  String c_name = request.getParameter("name");
  String c_email = request.getParameter("email");
  String c_tel = request.getParameter("tel");
%>
<%
  // 값 추가 하기
  sql = "INSERT INTO CUSTOM_01(p_id, p_pw, c_name, c_email, c_tel)";
  sql += " VALUES('"+p_id+"','"+p_pw+"','"+c_name+"','"+c_email+"','"+c_tel+"')";
 
  stmt.executeUpdate(sql);
  }catch(Exception e){
    e.printStackTrace();
  }finally{
    if(stmt != null)
      stmt.close();
 	if(con != null)
 	  con.close();
 	    	
  }
%>
<h3>등록 되었습니다.</h3>
    <input type="button" value="다시 등록" name="serch"
    	onClick="location.href='./member_insert.jsp'">
    <input type="button" value="조회" name="serch"
    	onClick="location.href='./custom01_list.jsp'">
 
</body>
</html>
