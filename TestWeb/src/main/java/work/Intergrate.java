package work;

import java.io.IOException;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;


/**
 * Servlet implementation class intergrate
 */
@WebServlet("/intergrate")
public class Intergrate extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public int uid ;   
	public static Connection conn;
	public Statement stat;
	public ArrayList<String>c=new ArrayList<String>();
	
    public Intergrate() throws IOException,SQLException{
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		Connect c=getC();
		
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		if(request.getParameter("userid")!= null) {
			String id = request.getParameter("userid");
			uid = Integer.parseInt(id);
			request.getRequestDispatcher("login.jsp").forward(request, response);
			try {
				String status;
				status=check(uid);
			} 
			catch (ServletException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		request.getRequestDispatcher("login.jsp").forward(request, response);
		System.out.print(request.getParameter("duty_time"));
		init();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		doGet(request, response);
		
	}

	
   public void init() throws ServletException {

        try {
        	String connectionURL = "jdbc:mysql://my-database-1.ck5d9adueifx.ap-southeast-2.rds.amazonaws.com/part-time training system"; 
 	       Connection connection=null;
 	       
 	      Class.forName("com.mysql.jdbc.util.Driver"); 
 	      connection = DriverManager.getConnection(connectionURL, "admin", "LN6MVu8Jr38vmyylUBD0");
 	      if(!connection.isClosed()) {
 	    	 System.out.println("Connected to the database!");
 	    	 conn=connection;
 	    	 stat=conn.createStatement();
 	    	 
 	    	 String query;
 	    	 query ="SELECT * FROM user;";
 	    	 boolean success;
 	    	 success  = stat.execute(query);
 	    	 if(success) {
 	    		 ResultSet result = stat.getResultSet();
 	    		 showResultSet(result);
 	    		 result.close();
 	    	 }
 	      }
 	     
        } catch (SQLException e) {
            // Handle the connection error
            System.out.println("Connection failed! Error: " + e.getMessage());
        } 
    }
   public String check(int uid) throws ServletException, SQLException {
	   String place="a";
	   init();
	   if(conn!=null) {
		   System.out.println("Connected to the database!");
		   stat=conn.createStatement();
		   String query1,query2;
			query1 = "SELECT user_id FROM user;";
			query2 = "SELECT grade FROM user;";
			boolean success;
			success =stat.execute(query1);
			boolean exist;
			
			String [][]re = new String [c.size()][2];
			int index=0;
			if(success) {
				ResultSet result = stat.getResultSet();
				c=showResultSet(result);				
				int i =uid;
				for(int j =0;j<c.size();j++) {
					re[j][0]=c.get(j);
				}
				if(c.contains(Integer.toString(i))) {
					exist = true;
					index= c.indexOf(i);
				}else {
					exist=false;
				}
				result.close();
			}
			boolean success2;
			success2 =stat.execute(query2);
//				String p = "full-time";
			boolean isfull;
			if(exist=true) {
				if(success2) {
				ResultSet result = stat.getResultSet();
				c=showResultSet(result);
				for(int j =0;j<c.size();j++) {
					re[j][1]=c.get(j);
				}
				if(c.get(index).equals("full-time")) {
					isfull = true;
					System.out.println("full-time");
					place = "f";
				}else {
					isfull=false;
					System.out.println("part-time");
					place = "p";
				}
				result.close();
				}
			}
	   } 
	return place;
	   
   }
	
   private static ArrayList showResultSet(ResultSet result)throws SQLException {
		// TODO Auto-generated method stub
		ArrayList<String> cid =new ArrayList<String>();
		ResultSetMetaData metadata = result.getMetaData();
		int columnCount = metadata.getColumnCount();
		for(int i = 1;i<=columnCount;i++) {
			System.out.printf("%15s",metadata.getColumnLabel(i));
		}
		System.out.println();
		
		while(result.next()) {
			for(int j = 1;j<=columnCount;j++) {
				cid.add(result.getString(j));
				System.out.printf("%15s",result.getString(j));
			}
			System.out.println();
		}
		return cid;
	}
	
	
}