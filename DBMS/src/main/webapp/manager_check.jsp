<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Manager Check</title>
    <link rel="stylesheet" href="manager_check.css"> 
</head>
<body>
    <h1>尚未定案的登記</h1>
    <section>
        <input type="checkbox">2023-07-01 08:00~12:00</input>
        <span> </span>
        <input type="checkbox">2023-07-03 10:00~20:00</input>
        <br><br>
        <input type="checkbox">工讀生01</input> 
        <input type="checkbox">工讀生04</input>
<br><br>
        <input type="checkbox">工讀生02</input>
        <input type="checkbox">工讀生05</input>
         <br><br>
        <input type="checkbox">正職02</input>
        <input type="checkbox">正職01</input>
<br><br>
        <input type="checkbox">正職03</input>
        <input type="checkbox">正職04</input>
        <br><br>
        <input type="checkbox">全選</input>
        <input type="checkbox">全選</input>
    </section>

    <button class = "button_back" onclick="window.location.href='manager_success.jsp'">送出</button>
</html>