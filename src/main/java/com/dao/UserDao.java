package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;

public class UserDao {
	
	private Connection conn;

	public UserDao(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean UserRegistration(User user) {
		
		boolean f=false;
		
		try {
			String sql="insert into user_detail(fullname,email,password) values(?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, user.getFullname());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			
		
		int i=	ps.executeUpdate();
		if(i==1) {
			f=true;
		}
		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		
		
		return f;
	}
	
	public  User login(String em, String pass) {
		User u=null;
		try {
			
			String sql="select * from user_detail where email=? and password=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			
			ps.setString(1, em);
			ps.setString(2, pass);
			
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				u=new User();
				u.setId(rs.getInt(1));
				u.setFullname(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPassword(rs.getString(4));
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
		
		
		return u;
	}

}
