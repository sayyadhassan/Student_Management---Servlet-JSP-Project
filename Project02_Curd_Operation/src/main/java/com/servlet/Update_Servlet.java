package com.servlet;

import java.io.IOException;

import com.connection.DB_Connection;
import com.dao.Student_DAO;
import com.entity.Student;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Update")
public class Update_Servlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
		String name = req.getParameter("name");
		String dob = req.getParameter("dob");
		String address = req.getParameter("address");
		String qualification = req.getParameter("qualification");
		String email = req.getParameter("email");
		int id = Integer.parseInt(req.getParameter("id"));
		
		
//		From here we send these valuse in Student.java servlet because just by creating object of this class by using getter and setter we can access these values anywhere in the program
		Student student = new Student(id,name,dob,address,qualification,email);
		
		Student_DAO dao = new Student_DAO(DB_Connection.getConnection());
		
		boolean f = dao.addStudent(student);
		
		if(f) {         // Pending Durgesh Sir from advance page - Here need Ajax call to show that record inserted successfully
			System.out.println("Studnet detail inserted successfully");
		}
		else {
			System.out.println("Record not inserted");
		}
		
	}

}
