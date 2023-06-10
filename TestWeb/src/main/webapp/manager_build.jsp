<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.IOException"%>
<%@page import="work.*"%>
<%@page import="java.sql.SQLException"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Manager Build</title>
    <link rel="stylesheet" href="css\manager_book.css">
</head>
<body>
<h1>開始新增排班時間</h1>  
<br>
<section class="container1" style="background-color: #d5f7e7"><h2>單一新增</h2>
<label for="Date">日期</label>
<select name = "Date" id=" date"> 
    <option value="2023/7/1">7/1</option>
    <option value="2023/7/2">7/2</option>
    <option value="2023/7/3">7/3</option>
    <option value="2023/7/4">7/4</option>
    <option value="2023/7/5">7/5</option>
    <option value="2023/7/6">7/6</option>
    <option value="2023/7/7">7/7</option>
    <option value="2023/7/8">7/8</option>
    <option value="2023/7/9">7/9</option>
    <option value="2023/7/10">7/10</option>
</select>

<label for="startTime">開始時間</label>
<select name= "startTime" id ="startTime">
    <option value="9:00">9:00</option>
    <option value="10:00">10:00</option>
    <option value="11:00">11:00</option>
    <option value="12:00">12:00</option>
    <option value="13:00">13:00</option>
    <option value="14:00">14:00</option>
    <option value="15:00">15:00</option>
    <option value="16:00">16:00</option>
    <option value="17:00">17:00</option>
    <option value="18:00">18:00</option>
</select>

<label for="endTime">結束時間</label>
<select name ="endTime" id=" endTime">
    <option value="10:00">10:00</option>
    <option value="11:00">11:00</option>
    <option value="12:00">12:00</option>
    <option value="13:00">13:00</option>
    <option value="14:00">14:00</option>
    <option value="15:00">15:00</option>
    <option value="16:00">16:00</option>
    <option value="17:00">17:00</option>
    <option value="18:00">18:00</option>
    <option value="19:00">19:00</option>
</select>
<br><br>
<label for="Femployee">正職人數</label>
<select name="Femployee" id="Femployee">
    <option value="0">0</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
</select>

<label for="Pemployee">工讀人數</label>
<select name="Pemployee" id="Pemployee">
    <option value="0">0</option>
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
    <option value="4">4</option>
</select>
<br><br>
<label for="deadline"> 填寫時限 </label>
<select name="deadline" id="deadline">
    <option value="6/25_23:59">6/25 23:59</option>
    <option value="6/26_23:59">6/26 23:59</option>
    <option value="6/27_23:59">6/27 23:59</option>
    <option value="6/28_23:59">6/28 23:59</option>
</select>
</section>

<br><br>
<section class="container2" style="background-color: #d5f7e7">
    <h2>大量新增</h2>

    <label for= "shifts">班距/label>
    <select name="span" id="span">
        <option value="1">1 shift</option>
        <option value="2">2 shifts</option>
        <option value="3">3 shifts</option>
        <option value="4">4 shifts</option>
    </select>
    
    <label for="Date">開始日期</label>
    <select name = "Date" id=" date"> 
        <option value="2023/7/1">7/1</option>
        <option value="2023/7/2">7/2</option>
        <option value="2023/7/3">7/3</option>
        <option value="2023/7/4">7/4</option>
        <option value="2023/7/5">7/5</option>
        <option value="2023/7/6">7/6</option>
        <option value="2023/7/7">7/7</option>
        <option value="2023/7/8">7/8</option>
        <option value="2023/7/9">7/9</option>
        <option value="2023/7/10">7/10</option>
    </select>

    <label for="Date">結束日期</label>
    <select name = "Date" id=" date"> 
        <option value="2023/7/1">7/1</option>
        <option value="2023/7/2">7/2</option>
        <option value="2023/7/3">7/3</option>
        <option value="2023/7/4">7/4</option>
        <option value="2023/7/5">7/5</option>
        <option value="2023/7/6">7/6</option>
        <option value="2023/7/7">7/7</option>
        <option value="2023/7/8">7/8</option>
        <option value="2023/7/9">7/9</option>
        <option value="2023/7/10">7/10</option>
    </select>
    <label for="startTime">開始時間</label>
    <select name= "startTime" id ="startTime">
        <option value="9:00">9:00</option>
        <option value="10:00">10:00</option>
        <option value="11:00">11:00</option>
        <option value="12:00">12:00</option>
        <option value="13:00">13:00</option>
        <option value="14:00">14:00</option>
        <option value="15:00">15:00</option>
        <option value="16:00">16:00</option>
        <option value="17:00">17:00</option>
        <option value="18:00">18:00</option>
    </select>
    <label for="endTime">結束時間</label>
    <select name ="endTime" id=" endTime">
        <option value="10:00">10:00</option>
        <option value="11:00">11:00</option>
        <option value="12:00">12:00</option>
        <option value="13:00">13:00</option>
        <option value="14:00">14:00</option>
        <option value="15:00">15:00</option>
        <option value="16:00">16:00</option>
        <option value="17:00">17:00</option>
        <option value="18:00">18:00</option>
        <option value="19:00">19:00</option>
    </select>
    <br><br>
    <label for="Femployee">正職人數</label>
    <select name="Femployee" id="Femployee">
        <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
    </select>
    <label for="Pemployee">工讀人數</label>
    <select name="Pemployee" id="Pemployee">
        <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
    </select>
    <br><br>
    <label for="deadline"> 填寫時限 </label>
<select name="deadline" id="deadline">
    <option value="6/25_23:59">6/25 23:59</option>
    <option value="6/26_23:59">6/26 23:59</option>
    <option value="6/27_23:59">6/27 23:59</option>
    <option value="6/28_23:59">6/28 23:59</option>
</select>
<br><br>
<label for="adding"> 一次新增
<select name="adding" id="adding">
    <option value="1">1</option>
    <option value="2">2</option>
    <option value="3">3</option>
</select> 個排班時間</label>
</section>

<br><br>

<button class = "button_add" onclick="window.location.href='manager_success.jsp'">送出指令</button>
    
</body>
</html>