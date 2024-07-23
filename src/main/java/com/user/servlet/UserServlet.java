package com.user.servlet;

import java.io.IOException;

import com.dao.UserDao;
import com.db.DBconnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/user_register")
public class UserServlet  extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String fullname=req.getParameter("name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		HttpSession session=req.getSession();
		
		User user=new User(fullname, email, password);
		
		UserDao dao=new UserDao(DBconnect.getConn());
	    boolean f=dao.UserRegistration(user);
	    
	    if(f) {
			session.setAttribute("succMsg", "Registration Sucessful");
			resp.sendRedirect("signUp.jsp");
		}
		else {
			session.setAttribute("errMsg", "invalid Admin email or password");
			resp.sendRedirect("user_login.jsp");
		}	   
		
	}
	
	
	
	

}
