package com.admin.servlet;

import java.io.IOException;

import com.dao.SpecialistDao;
import com.dao.UserDao;
import com.db.DBconnect;
import com.entity.User;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/add_specialist")
public class AddSpecialist extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String specName=req.getParameter("specname");
		
		SpecialistDao dao=new SpecialistDao(DBconnect.getConn());
		boolean f=dao.addSpecialist(specName);
		
	HttpSession session=req.getSession();
		
		
		
		if(f) {
			session.setAttribute("succMsg", "Specialist Added Successfully");
			resp.sendRedirect("admin/index.jsp");
		}
		else {
			session.setAttribute("errMsg", "Error");
			resp.sendRedirect("admin/index.jsp");
		}
	
		
	}
	

}
