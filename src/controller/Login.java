package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import dao.AdminDao;
import model.Admin;

/**
 * Servlet implementation class Login
 */

@WebServlet(name = "Login", urlPatterns = {"/login/Login"})
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Admin admin = new Admin();
		admin.setUsername(request.getParameter("username"));
		admin.setPassword(request.getParameter("password"));
		
		//validating the username and password
		int flag = AdminDao.validate(admin);
		
		if(flag==1) {
			HttpSession session = request.getSession();
			session.setAttribute("user", request.getParameter("username"));
			session.setAttribute("pass", request.getParameter("password"));
			response.sendRedirect("../control-panel/dashboard.jsp");
		} else {
			response.sendRedirect("./login.html");
		}
	}
	
}
