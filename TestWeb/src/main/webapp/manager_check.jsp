<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.io.IOException"%>
<%@page import="work.*"%>
<%@page import="java.sql.SQLException"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.ResultSetMetaData" %>
<%! Connection conn = null; %>
<%!ArrayList<String>c=new ArrayList<String>(); %>
<% String connectionURL = "jdbc:mysql://my-database-1.ck5d9adueifx.ap-southeast-2.rds.amazonaws.com/part-time training system"; 
		String username = "admin";
		String password = "LN6MVu8Jr38vmyylUBD0";
		
		// Establishing database connection
		try {
		    Class.forName("com.mysql.jdbc.Driver");
		    conn = DriverManager.getConnection(connectionURL, username, password);
		    String sql = "SELECT d.duty_date, d.start_time,d.end_time, d.duty_time_id,u.user_id,u.grade FROM register AS r, duty_time AS d, user AS u WHERE  r.duty_time_id=d.duty_time_id AND r.registrant_id=u.user_id AND r.verdict=FALSE ORDER BY d.duty_time_id";
   		    PreparedStatement statement = conn.prepareStatement(sql);
		    boolean success;
			success =statement.execute(sql);
			int index = 0;
			if(success) {
				ResultSet result = statement.getResultSet();
				c=work.Connect.showResultSet(result);
			}	
            statement.close();
		} catch (Exception e) {
		    e.printStackTrace();
		}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Manager Check</title>
    <link rel="stylesheet" href="css/manager_check.css"> 
</head>
<body>
    <h1>尚未定案的登記</h1>
    <section>
        <input type="checkbox" name="dt1" value="1" onclick="uncheckall(1);">2023-07-01 08:00~12:00</input>
        <span> </span>
        <input type="checkbox" name="dt2" value="2" onclick="uncheckall(1);">2023-07-01 12:00~16:00</input>
        <br><br>
        <input type="checkbox" name="pw1" id="p1" value="5" >工讀生01------------------</input> 
        <input type="checkbox" name="pw3" id="p3" value="7">工讀生03------------------</input>
<br><br>
        <input type="checkbox" name="pw2" id="p2" value="6">工讀生02------------------</input>
        <input type="checkbox" name="fw4" id="f4" value="4">正職04------------------</input>
         <br><br>
        <input type="checkbox" name="fw2" id="f2"  value="2">正職02------------------</input>
        <input type="checkbox" name="fw1" id="f1"  value="1">正職01------------------</input>
<br><br>
        <input type="checkbox" name="fw3" id="f3"  value="3">正職03------------------</input>
        
        <br><br>
        <input type="checkbox" id="full1" onclick="checkall(1);">全選                  </input>
        <input type="checkbox" id="full2" onclick="checkall(2);">全選                  </input>
    </section>

    <button class = "button_back" onclick="execute();">送出</button>
<script>
	let arr1=["p1","p2","f2","f3"];
	let arr2=["p3","f1","f4"];
	var j=0;
	function checkall(i){
		if(i==1){
			for(j=0;j<arr1.length;j++){
				document.getElementById(arr1[j]).checked=true;
			}
		}else if(i==2){
			for(j=0;j<arr2.length;j++){
				document.getElementById(arr2[j]).checked=true;
			}
		}
	}
	function uncheckall(i){
		if(i==1){
			for(j=0;j<arr1.length;j++){
				document.getElementById(arr1[j]).checked=false;
			}
		}else if(i==2){
			for(j=0;j<arr2.length;j++){
				document.getElementById(arr2[j]).checked=false;
			}
		}
	}
	function execute(){
	<%
		// Retrieving form values
		String[] names=["pw1","pw2","pw3","fw1","fw2","fw3","fw4"];
		String[] IsDti=["1","1","2","2","1","1","2"];
		String[][] regs=new String[7][2];
		for(int i=0;i<=7;i++){
			if(request.getParameter(names[i])!=null){
				regs[i][0] = request.getParameter(names[i]);
				regs[i][1] = IsDti[i];
			}else{
				regs[i][0] = null;
				regs[i][1] = IsDti[i];
			}
		}
		
			
		// Inserting form values into the database
		try {
			for(int i=0;i<7;i++){
				String uid=request.getParameter("uid");
				if(regs[i]!=null){
					String sql = "UPDATE register SET verdict=TRUE, verdict_person_id=? WHERE duty_time_id=? AND registrant_id=?";
		            PreparedStatement statement = conn.prepareStatement(sql);
		            statement.setString(1, uid);
		            statement.setString(2, regs[i][1]);
		            statement.setString(3, regs[i][0]);
		            statement.executeUpdate();
		            statement.close();
				}
		    	
			}
		} catch (SQLException e) {
		    e.printStackTrace();
		}
	%>
		window.location.href ="manager_success.jsp";
	}
</script>

</html>