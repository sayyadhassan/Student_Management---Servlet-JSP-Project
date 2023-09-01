package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Student;

//                         All the operation related to database will be done in this class like- insert,update,delete etc

public class Student_DAO {

	private Connection con;

	public Student_DAO(Connection con) {
		super();
		this.con = con;
	}

	public boolean addStudent(Student student) {

		boolean f = false;

		try {
//			Step 3- Execute Query

			String sql = "insert into student_information(name,dob,address,qualification,email) values(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, student.getFullName());
			ps.setString(2, student.getDob());
			ps.setString(3, student.getAddress());
			ps.setString(4, student.getQualification());
			ps.setString(5, student.getEmail());

			int i = ps.executeUpdate();

			System.out.println(i);
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			System.out.println("Exception" + e.getMessage());
		}

		System.out.println(f);
		return f;
	}

//	This method is use to get all the record of Students
	public List<Student> getAllStudents() {
		List<Student> list = new ArrayList<Student>();

		try {

//			Step 3 - Execute Query
			String sql = "select *from student_information";
			PreparedStatement ps = con.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Student s = new Student();
				s.setId(rs.getInt(1));
				s.setFullName(rs.getString(2));
				s.setDob(rs.getString(3));
				s.setAddress(rs.getString(4));
				s.setQualification(rs.getString(5));
				s.setEmail(rs.getString(6));

				list.add(s); // Add one Student type object in the list for every iteration
			}
		} catch (Exception e) {
			System.out.println("Exception " + e.getMessage());
		}

		return list;
	}

	// select student by Id
	public Student getStudentById(int id) {
		Student s = new Student();

//		Step 3 - Execute query  to select particular student with the help of id
		try {
			String sql = "select *from student_information where id=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, id);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				s.setId(rs.getInt(1));
				s.setFullName(rs.getString(2));
				s.setDob(rs.getString(3));
				s.setAddress(rs.getString(4));
				s.setQualification(rs.getString(5));
				s.setEmail(rs.getString(6));

			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return s;
	}
	
	
	
	public boolean updateStudent(Student student) {

		boolean f = false;

		try {
//			Step 3- Execute Query

			String sql = "update student_information name=?,dob=?,address=?,qualification=?,email=? where id=?";
			PreparedStatement ps = con.prepareStatement(sql);

			ps.setString(1, student.getFullName());
			ps.setString(2, student.getDob());
			ps.setString(3, student.getAddress());
			ps.setString(4, student.getQualification());
			ps.setString(5, student.getEmail());
			ps.setInt(6, student.getId());

			int i = ps.executeUpdate();

			System.out.println(i);
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			System.out.println("Exception" + e.getMessage());
		}

		System.out.println(f);
		return f;
	}
	
	
	
	
}
