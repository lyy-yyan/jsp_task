package myservlet.control;

import mybean.data.*;
import java.sql.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class ConPages extends HttpServlet{
	public void init(ServletConfig config)throws ServletException {
		super.init(config);
	}
	
	// public String handleString(String s) {
	// 	try {
	// 		byte bb[] = s.getBytes("iso-8859-1");
	// 		s =  new String(bb);
	// 		return s;
	// 	} catch (Exception ee) {
	// 		// TODO: handle exception
	// 		return s;
	// 	}
	// }
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException {
		String myPower = request.getParameter("myPower");
		String num = request.getParameter("num");
		try {
			boolean p = Boolean.valueOf(myPower);
			if(!p){
				response.sendRedirect("login.jsp");
			}
			else{
				if (num.equals("1")) {
					response.sendRedirect("uploadP.jsp");
				}
				if (num.equals("2")) {
					response.sendRedirect("addnews.jsp");
				}
				if (num.equals("3")) {
					response.sendRedirect("conMem.jsp");
				}
			}
		} 
		catch (Exception ee) {
			response.sendRedirect("indexf.jsp");
		}
		// RequestDispatcher dispatcher = request.getRequestDispatcher("showPower.jsp");
		// dispatcher.forward(request, response);
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException {
		doPost(request, response);
	}
}
