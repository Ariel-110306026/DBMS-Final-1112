<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Manager Page</title>
    <link rel="stylesheet" href="manager_book.css">
</head>
<body>
    <h1>尚有空缺的值班時間</h1>
    <section>
    <input type="checkbox">2023-07-01 08:00~12:00</input>
    <input type="checkbox">2023-07-03 10:00~20:00</input>
    <br><br>
    <input type="checkbox">2023-07-01 16:00~20:00</input>
    <input type="checkbox">2023-07-03 08:00~12:00</input>
    <br><br>
    <input type="checkbox">2023-07-03 12:00~16:00</input>
    <input type="checkbox">2023-07-03 16:00~20:00</input>
    <br><br>
</section>


<button class = "book" onclick="window.location.href='manager_success.jsp'">登記所選時間</button>
</body>
    </html>