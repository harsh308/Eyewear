package com.Controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Model.users;
import com.datasource.Datasource;


/**
 * Servlet implementation class RegistrationController
 */
@WebServlet("/RegistrationController")
public class RegistrationController extends HttpServlet {
     protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		users user = new users();
		user.setUsername(req.getParameter("username"));
		user.setEmail(req.getParameter("email"));
		user.setPassword(req.getParameter("password"));
		user.setMobile(req.getParameter("mobile"));
		try {
			Connection con = Datasource.getConnection();			
			PreparedStatement ps = con.prepareStatement("insert into users(username,email,password,role,mobile) values(?,?,?,?,?)");
		    ps.setString(1, user.getUsername());
		    ps.setString(2, user.getEmail());
		    ps.setString(3, user.getPassword());
		    ps.setString(4, "user");
		    ps.setString(5, user.getMobile());
		    ps.executeUpdate();
		    resp.sendRedirect("login.jsp");
		}
		catch (Exception e) {
		System.out.println(e);
		}
		
	}

}
