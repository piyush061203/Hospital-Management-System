package com.admin.servlet;

import java.io.IOException;

import com.dao.DoctorDao;
import com.db.DBconnect;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/delete_doctor")
public class DeleteDoctor extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		DoctorDao dao = new DoctorDao(DBconnect.getConn());
		boolean f = dao.deleteDoctorDetail(id);
		HttpSession session = req.getSession();
		
		if (f) {
			session.setAttribute("succMsg", "Doctor delete Successfully");
			resp.sendRedirect("admin/doctor.jsp");
		} else {
			session.setAttribute("errMsg", "Error");
			resp.sendRedirect("admin/doctor.jsp");
		}
	}

}
