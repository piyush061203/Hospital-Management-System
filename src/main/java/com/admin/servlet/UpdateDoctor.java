package com.admin.servlet;

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


@WebServlet("/update_doctor")
public class UpdateDoctor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {

			String fullname = req.getParameter("fullname");
			String dob = req.getParameter("dob");
			String qualification = req.getParameter("qualification");
			String specialist = req.getParameter("specialist");
			String email = req.getParameter("email");
			String mobile = req.getParameter("mobile");
			String password = req.getParameter("password");
			
			int id=Integer.parseInt(req.getParameter("id"));

			Doctor doctor = new Doctor(id,fullname, dob, qualification, specialist, email, mobile, password);

			DoctorDao dao = new DoctorDao(DBconnect.getConn());
			boolean f = dao.updateDoctor(doctor);
			HttpSession session = req.getSession();

			if (f) {
				session.setAttribute("succMsg", "Doctor data Updated Successfully");
				resp.sendRedirect("admin/doctor.jsp");
			} else {
				session.setAttribute("errMsg", "Error");
				resp.sendRedirect("admin/doctor.jsp");
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
