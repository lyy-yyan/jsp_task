package myservlet.control;

import mybean.data.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class DelNews extends HttpServlet{
	public void init(ServletConfig config)throws ServletException {
		super.init(config);
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public String handleString(String s) {
		try {
			byte bb[] = s.getBytes("iso-8859-1");
			s =  new String(bb);
			return s;
		} catch (Exception ee) {
			// TODO: handle exception
			return s;
		}
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException {
		Connection con;
		Statement sql;
		ResultSet rs;
		// News resultnews = null;
		// try{
		// 	resultnews = (News)request.getAttribute("resultnews");
		// 	if(resultnews==null){
		// 		resultnews = new News();
		// 		request.setAttribute("resultnews",resultnews);
		// 	}
		// }
		// catch(Exception exp){
		// 	resultnews = new News();
		// 	request.setAttribute("resultnews",resultnews);
		// }

		try{
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch(Exception e){}

		request.setCharacterEncoding("gb2312");
		String num = request.getParameter("num");
		//String user = "root";
		//String password = "12345678";
		if (num==null) {
			fail(request, response,"ɾ��ʧ�ܣ���Ų���Ϊ��");
			return;
		}
		try{
			String uri = "jdbc:mysql://127.0.0.1/lab?"+"user=root&password=12345678&useUnicode=true&characterEncoding=gb2312&serverTimezone=GMT%2B8&useSSL=false";
			con = DriverManager.getConnection(uri);
			sql = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
			String condition = "DELETE FROM textnews WHERE num = "+"'"+num+"'";
			sql.executeUpdate(condition);
			// ResultSetMetaData metaData = rs.getMetaData();
			// int columnCount = metaData.getColumnCount();

			// rs.moveToInsertRow();
			// rs.updateString(1, num);
			// rs.updateString(2, content);
			// rs.updateString(3, time);
			// rs.updateString(4, link);
			// rs.insertRow();

			// resultnews.setContent(content);
			// resultnews.setTime(time);
			// resultnews.setLink(link);
			// resultnews.setRow(row);

			con.close();
			response.sendRedirect("delnews.jsp");
			// RequestDispatcher dispatcher = request.getRequestDispatcher("addnews.jsp");
			// dispatcher.forward(request, response);
		}
		catch(SQLException e){
			System.out.println(e);
			fail(request, response, "ɾ��ʧ��"+e.toString());
		}
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException {
		doPost(request, response);
	}

	public void fail(HttpServletRequest request, HttpServletResponse response, String backNews){
		response.setContentType("text/html;charset=GB2312");
		try{
			PrintWriter out = response.getWriter();
			out.println("<html><body>");
			out.println("<h2>"+backNews+"</h2>");
			out.println("����");
			out.println("<a href=delnews.jsp>ɾ������</a>");
			out.println("</body></html>");
		}
		catch(IOException exp){}
	}
}
