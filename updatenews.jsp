<%@ page contentType="text/html;charset=GB2312" language="java" %>
<%@ page import="java.sql.*" %>
<%@ include file="head.txt" %>

<html>
	<style> 
		html { width:100%; height:100%; } 
		body { background-image:url('images/bg1.jpg');  font-size:18px; font-family:"Arial", "Tahoma", "΢���ź�", "�ź�";
		 line-height:18px; padding:0; margin:0; text-align:center; } 
		div { padding:18px } 
		img { border:0px; vertical-align:middle; padding:0px; margin:0px; } 
		input, button { font-family:"Arial", "Tahoma", "΢���ź�", "�ź�"; border:0;
		 vertical-align:middle; margin:8px; line-height:18px; font-size:18px; } 
		.btns { width:143px; height:40px; color:#000000;} 
	</style> 
	<body>
			<center>
				<br><br><h1>���£��޸ģ�����ҳ��</h1>
				<h2>�����򱣳�ԭֵ���䣬����<span style="color:red">��Ų���Ϊ��</span></h2><br>
				<form action="updatenews" method="post">
					<table border="2">
						<tr><th>��ţ�XXX)</th><th><input type="text" name="num"></th></tr>
						<tr><th>����</th><th><input type="text" name="content"></th></tr>
						<tr><th>ʱ�䣨XXXX��XX��XX�գ�</th><th><input type="text" name="time"></th></tr>
						<tr><th>������</th><th><input type="text" name="link"></th></tr>
					</table>
					<input type="submit" class="btns" value="����">
				</form>
				<div id="news">
				<h3>��������</h3>
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
						rs = sql.executeQuery("SELECT * FROM textnews");
						rs.last();
						 out.print("<font size=3>");
				   		out.print("<table border=2>");
				   		out.print("<tr><th>���</th><th>����</th><th>ʱ��</th><th>������</th></tr>");
						do{
				  	 		out.print("<tr><th width=40>"+rs.getString(1)+"</th><th>"+rs.getString(2)+"</th><th width=130>"+rs.getString(3)+"</th><th>"+rs.getString(4)+"</th></tr>");
						}while(rs.previous());
				   out.print("</table>");
					out.print("</font>");
						con.close();
				   }
				   catch(SQLException e){
						out.print("���������ˣ�");
						out.print(e);
				   }
				%>
			</center>
	</body>
</html>