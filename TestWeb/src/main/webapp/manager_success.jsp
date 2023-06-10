<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.IOException"%>
<%@page import="work.*"%>
<%@page import="java.sql.SQLException"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manager Success</title>
    <link rel="stylesheet" type="text/css" href="css\manager_success.css">
</head>
<body>
    <img src="img\manager_check.png" alt="check" class="check">
    <h1>您的動作已成功執行</h1>
    <h2>請選擇下一個動作</h2>
    <button class = "button_add" onclick="window.location.href='manager_book.jsp'">登記值班時間</button>
 	<button class = "button_change" onclick="window.location.href='manager_change.jsp'">修改值班時間</button>
 	<button class = "button_change" onclick="window.location.href='manager_build.jsp'">建立班表</button> 
    <button class = "button_check" onclick="window.location.href='manager_check.jsp'">定案排班時間</button>
    <button class = "button_book" onclick="window.location.href='manager.jsp'">回主功能選單</button>  
   
</body>
</html>