package com.entity;

public class Appointment {
	
	private int id;
	private int userid;
	private String fullname;
	private String gender;
	private String age;
	private String appointment;
	private String email;
	private String phone;
	private String diseases;
	private int doctorid;
	private String address;
	private String status;
	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Appointment(int userid, String fullname, String gender, String age, String appointment, String email,
			String phone, String diseases, int doctorid, String address, String status, String string) {
		super();
		this.userid = userid;
		this.fullname = fullname;
		this.gender = gender;
		this.age = age;
		this.appointment = appointment;
		this.email = email;
		this.phone = phone;
		this.diseases = diseases;
		this.doctorid = doctorid;
		this.address = address;
		this.status = status;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getAppointment() {
		return appointment;
	}
	public void setAppointment(String appointment) {
		this.appointment = appointment;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getDiseases() {
		return diseases;
	}
	public void setDiseases(String diseases) {
		this.diseases = diseases;
	}
	public int getDoctorid() {
		return doctorid;
	}
	public void setDoctorid(int doctorid) {
		this.doctorid = doctorid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Appointment [id=" + id + ", userid=" + userid + ", fullname=" + fullname + ", gender=" + gender
				+ ", age=" + age + ", appointment=" + appointment + ", email=" + email + ", phone=" + phone
				+ ", diseases=" + diseases + ", doctorid=" + doctorid + ", address=" + address + ", status=" + status
				+ "]";
	}
	

}
