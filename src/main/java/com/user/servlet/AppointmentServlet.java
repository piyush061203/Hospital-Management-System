package com.user.servlet;

import java.io.IOException;

import com.dao.AppointmentDao;
import com.db.DBconnect;
import com.entity.Appointment;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/add_appointment")
public class AppointmentServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int userid=Integer.parseInt(req.getParameter("userid"));
		String fullname=req.getParameter("fullname");
		String gender=req.getParameter("gender");
		String age=req.getParameter("age");
		String appoint_date=req.getParameter("appointmentdate");
		String email=req.getParameter("emil");
		String phone=req.getParameter("phone");
		String diseases=req.getParameter("diseases");
		int doctor_id=Integer.parseInt(req.getParameter("doctorid"));
		String address=req.getParameter("address");
				
		Appointment ap=new Appointment(userid, fullname, gender, age, appoint_date, email, phone, diseases, doctor_id, address, address,"pending");
		
		AppointmentDao dao=new AppointmentDao(DBconnect.getConn());
		boolean f=dao.addAppointment(ap);
		
		HttpSession session = req.getSession();

		if (f) {
			session.setAttribute("succMsg", "Appointment Added Successfully");
			resp.sendRedirect("user_appointment.jsp");
		} else {
			session.setAttribute("errMsg", "Error");
			resp.sendRedirect("user_appointment.jsp");
		}
	}

	
}
