package com.entity;

public class specialist {
	private int id;
	private String specialistName;
	public specialist() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public specialist(int id, String specialistName) {
		super();
		this.id = id;
		this.specialistName = specialistName;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSpecialistName() {
		return specialistName;
	}
	public void setSpecialistName(String specialistName) {
		this.specialistName = specialistName;
	}
	@Override
	public String toString() {
		return "specialist [id=" + id + ", specialistName=" + specialistName + "]";
	}
	

}
