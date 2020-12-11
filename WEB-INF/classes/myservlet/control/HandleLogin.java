package myservlet.control;

import mybean.data.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class HandleLogin extends HttpServlet{
	public void init(ServletConfig config)throws ServletException {
		super.init(config);
		// try {
		// 	Class.forName("com.mysql.jdbc.Driver");
		// } catch (Exception e) {
		// 	// TODO: handle exception
		// }
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
//		Connection connection;
//		Statement sql;
		Login loginBean = null;
		String backnews = "";
		HttpSession session = request.getSession(true);
		try {
			loginBean = (Login)session.getAttribute("login");
			if(loginBean==null) {
				loginBean = new Login();
				session.setAttribute("login",loginBean);
			}
		} catch (Exception ee) {
			// TODO: handle exception
			loginBean = new Login();
			session.setAttribute("login",loginBean);
		}
		String name = request.getParameter("name");
		String password = request.getParameter("password").trim();
		boolean power = loginBean.isPower();
		name = handleString(name); 
		password = handleString(password); 

			boolean boo = (password.length()>0)&&(name.length()>0);
			try {
				if(boo) {
					loginBean.setName(name);
					if(password.equals("1234")) {
						// if(power==true) {
						// 	backnews = "已开启权限";
						// 	loginBean.setBacknews(backnews);
						// }
						// else{
							backnews = "开启权限成功";
							loginBean.setBacknews(backnews);
							loginBean.setPower(true);
						//}
					}
					else {
						if (password.equals("shut")) {
							backnews = "关闭权限成功";
							loginBean.setBacknews(backnews);
							loginBean.setPower(false);
						}
						else{
							backnews = "密码错误，管理权限失败";
							loginBean.setBacknews(backnews);
						}
					}
				}
			} catch (Exception exp) {
				// TODO: handle exception
				backnews = ""+exp;
				loginBean.setBacknews(name);
				loginBean.setBacknews(backnews);
			}
		RequestDispatcher dispatcher = request.getRequestDispatcher("showPower.jsp");
		dispatcher.forward(request, response);
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException {
		doPost(request, response);
	}
}
