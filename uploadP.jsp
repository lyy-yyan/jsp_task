<%@ page contentType="text/html;charset=GB2312" language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="mybean.data.Login"%>
<jsp:useBean id="login" class="mybean.data.Login" scope="session"/>
<html>
	<style>
		body{
			background-image:url('images/bg1.jpg'); 
		}
	</style>
	<body>
		<center>
			<br><br><br>
			<h1>首页图片新闻更新</h1>
			<h2>文件被上传至子目录images中</h2>
			<h2>选择要更新的图片编号</h2><h2>选择要上传的图片文件</h2>
			<h3><span style="color:red">PS:假设你要更改编号1的图片，图片名必须为1.jpg</span></h3>
			<h3><a href="indexf.jsp">返回主页</a>  <a href="showPower.jsp">返回管理页面</a></h3>

			<form action="test.jsp" method="post" enctype="multipart/form-data">
				<input type="file" name="selPicture" size="40">
				<input type="submit" name="upload" id="upload" style="width: 70px; height: 25px" value="上传">${msg}
			</form>
			
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
					 rs = sql.executeQuery("SELECT * FROM picnews");
			   
			   		out.print("<table border=2>");
			   		out.print("<tr><td>1</td><td>2</td><td>3</td><td>4</td></tr>");
			   		out.print("<tr>");
			   		rs.next();
			   		out.print("<td><img src=\""+rs.getString(2)+"\" width=200 heigth=200></td>");
			   		rs.next();
			   		out.print("<td><img src=\""+rs.getString(2)+"\" width=200 heigth=200></td>");
			   		rs.next();
			   		out.print("<td><img src=\""+rs.getString(2)+"\" width=200 heigth=200></td>");
			   		rs.next();
			   		out.print("<td><img src=\""+rs.getString(2)+"\" width=200 heigth=200></td>");
			   		out.print("</tr>");
			   		out.print("</table>");
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