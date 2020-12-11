<%@ page contentType="text/html;charset=GB2312" language="java" %>
<%@ page import="mybean.data.Login"%>
<%@ page import="java.sql.*" %>
<jsp:useBean id="login" class="mybean.data.Login" scope="session"/>
<html>
	<style>
		body{
			background-image:url('images/bg1.jpg'); 
		}
	</style>
	<body>
		<center>
			<h2>用户管理</h2>
			<h3><a href="indexf.jsp">返回主页</a>  <a href="showPower.jsp">返回管理页面</a></h3>
				<%
					Connection con;
				   Statement sql;
					ResultSet rs;
					try{
						Class.forName("com.mysql.jdbc.Driver");
				   }
				   catch(Exception e){}
				   try{
						//String uri = "jdbc:mysql://127.0.0.1/lab";
						String uri="jdbc:mysql://localhost:3306/lab?useUnicode=true&characterEncoding=gb2312&serverTimezone=GMT%2B8&useSSL=false";
						String user = "root";
						String password = "12345678";
						con = DriverManager.getConnection(uri,user,password);
						sql = con.createStatement();
						rs = sql.executeQuery("SELECT * FROM member");
						 out.print("<font size=3>");
				   		
				   		out.print("<table border=2>");
				   		out.print("<tr><td>用户名</td><td>用户密码</td><td>用户权限</td><td>管理权限</td></tr>");
						while(rs.next()){
				   			out.print("<tr>");
				   			out.print("<td>");
				   			out.print(rs.getString(1));
				   			out.print("</td>");
				   			out.print("<td>");
				   			out.print(rs.getString(2));
				   			out.print("</td>");
				   			out.print("<td>");
				   			out.print(rs.getString(4));
				   			out.print("</td>");
				   			out.print("<td>");
				   			
				   			if(rs.getInt(3)==1){
								out.print("<form action=\"caopower\" method=\"post\">");
								out.print("<input type=\"hidden\" name=\"name\" value=");
								out.print(rs.getString(1));
								out.print("><input type=\"hidden\" name=\"con\" value=\"0\"><input type=\"submit\" value=关闭></form>");
				   			}
				   			if(rs.getInt(3)==0){
				   				out.print("<form action=\"caopower\" method=\"post\">");
				   				out.print("<input type=\"hidden\" name=\"name\" value=");
				   				out.print(rs.getString(1));
				   				out.print("><input type=\"hidden\" name=\"con\" value=\"1\"><input type=\"submit\" value=开启></form>");
				   			}
				   			
				   			out.print("</td>");
				   			out.print("</tr>");
						}
				   out.print("</table>");
				   
					out.print("</font>");
						con.close();
				   }
				   catch(SQLException e){
						out.print("发生错误了！");
						out.print(e);
				   }
				%>
		</center>
	</body>
</html>