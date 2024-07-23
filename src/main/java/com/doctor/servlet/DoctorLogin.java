package com.doctor.servlet;

import java.io.IOException;

import com.dao.DoctorDao;

import com.db.DBconnect;
import com.entity.Doctor;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/doctor_login")
public class DoctorLogin extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		HttpSession session=req.getSession();
		
		DoctorDao dao=new DoctorDao(DBconnect.getConn());
		Doctor doctor= dao.DoctorLogin(email, password);
		
		if(doctor !=null) {
			session.setAttribute("docObj", doctor);
			resp.sendRedirect("doctor/index.jsp");
		}
		else {
			session.setAttribute("errMsg", "invalid Admin email or password");
			resp.sendRedirect("doctor_login.jsp");
		}
	}

}
