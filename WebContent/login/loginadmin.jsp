<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.AdminDao" %>
<jsp:useBean id="admin" class="model.Admin"></jsp:useBean>
<jsp:setProperty property="*" name="admin" />

<%
	int i = AdminDao.validate(admin);
	if(i==1){
		response.sendRedirect("../control-panel/dashboard.jsp");
		session.setAttribute("user", request.getParameter("username"));
		session.setAttribute("pass", request.getParameter("password"));
	}else{
		response.sendRedirect("login.html");
	}
%>