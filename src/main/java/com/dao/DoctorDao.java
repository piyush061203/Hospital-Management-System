package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Doctor;

import com.entity.specialist;
import com.mysql.cj.protocol.Resultset;

public class DoctorDao {
private Connection conn;

public DoctorDao(Connection conn) {
	super();
	this.conn = conn;
}

public boolean addDoctor(Doctor d) {
	boolean f=false;
	try {
		String sql="insert into doctor(fullname,dob,qualification,specialist,email,moblie,password)  values(?,?,?,?,?,?,?)";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1,d.getFullname());
		ps.setString(2, d.getDob());
		ps.setString(3, d.getQualification());
		ps.setString(4, d.getSpecialist());
		ps.setString(5, d.getEmail());
		ps.setString(6, d.getMobile());
		ps.setString(7, d.getPassword());
		
		
		int i=ps.executeUpdate();
		
		if(i==1) {
			f=true;
		}
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
	
	return f;
}

public List<Doctor> getAllDoctor(){
	List<Doctor> list=new ArrayList<Doctor>();
	Doctor s=null;
	
	try {
		String sql="select * from doctor order by doctorID desc";
		PreparedStatement ps=conn.prepareStatement(sql);
		
		ResultSet rs=ps.executeQuery();
		
		while(rs.next()) {
			s=new Doctor();
			s.setId(rs.getInt(1));
			s.setFullname(rs.getString(2));
			s.setDob(rs.getString(3));
			s.setQualification(rs.getString(4));
			s.setSpecialist(rs.getString(5));
			s.setEmail(rs.getString(6));
			s.setMobile(rs.getString(7));
			s.setPassword(rs.getString(8));
			
			list.add(s);
			
		}
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
	
	return list;
}


public Doctor getDoctorById(int id){
	
	Doctor s=null;
	
	try {
		String sql="select * from doctor where doctorID=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		
		ResultSet rs=ps.executeQuery();
		
		while(rs.next()) {
			s=new Doctor();
			s.setId(rs.getInt(1));
			s.setFullname(rs.getString(2));
			s.setDob(rs.getString(3));
			s.setQualification(rs.getString(4));
			s.setSpecialist(rs.getString(5));
			s.setEmail(rs.getString(6));
			s.setMobile(rs.getString(7));
			s.setPassword(rs.getString(8));
			
			
			
		}
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
	
	return s;
}


public boolean updateDoctor(Doctor doctor) {
	
	boolean f=false;
	
	try {
		
		String sql="update doctor set fullname=?,dob=?,qualification=?,specialist=?,email=?,moblie=?,password=? where doctorID=?";
		
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setString(1, doctor.getFullname());
		ps.setString(2, doctor.getDob());
		ps.setString(3, doctor.getQualification());
		ps.setString(4, doctor.getSpecialist());
		ps.setString(5, doctor.getEmail());
		ps.setString(6, doctor.getMobile());
		ps.setString(7, doctor.getPassword());
		
		ps.setInt(8, doctor.getId());
		
		
	int i=ps.executeUpdate();
		 
		 if(i==1) {
			 f=true;
		 }
		 
		
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
	
	
	
	return f;
}


public boolean deleteDoctorDetail(int id) {
	
	boolean f=false;
	
	try {
		
		String sql="delete from doctor where doctorID=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		ps.setInt(1, id);
		
		int i=ps.executeUpdate();
		
		 if(i==1) {
			 f=true;
		 }
	
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
	
	
	return f;
}

public Doctor DoctorLogin(String em, String pass) {
	
	Doctor s=null;
	try {
		String sql="select * from doctor where email=? and password=?";
		PreparedStatement ps=conn.prepareStatement(sql);
		
	 ps.setString(1, em);
	 ps.setString(2, pass);
	 
	 ResultSet rs=ps.executeQuery();
	 while(rs.next()) {
		 s=new Doctor();
			s.setId(rs.getInt(1));
			s.setFullname(rs.getString(2));
			s.setDob(rs.getString(3));
			s.setQualification(rs.getString(4));
			s.setSpecialist(rs.getString(5));
			s.setEmail(rs.getString(6));
			s.setMobile(rs.getString(7));
			s.setPassword(rs.getString(8));
		 
	 }
	 
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
	
	
	
	return s;
	
}


}
