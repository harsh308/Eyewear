package com.Controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.Model.product;
import com.datasource.Datasource;

/**
 * Servlet implementation class AddProductController
 */
@WebServlet("/AddProductController")
@MultipartConfig(maxFileSize = 99999999L)
public class AddProductController extends HttpServlet 
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
	product pro = new product();
	pro.setProductname(req.getParameter("productname"));
	pro.setDescription(req.getParameter("description"));
	pro.setPrice(Float.parseFloat(req.getParameter("price")));
	pro.setQuantity(Integer.parseInt(req.getParameter("quantity")));
	pro.setFrametype(req.getParameter("frametype"));
	pro.setFramesize(req.getParameter("framesize"));
	pro.setFramecolor(req.getParameter("framecolor"));
	pro.setGlassnumber(req.getParameter("glassnumber"));
	
	Part part=req.getPart("image");
	InputStream is=part.getInputStream();
	
	try 
	{
	Connection con = Datasource.getConnection();
	PreparedStatement ps = con.prepareStatement("insert into  products(productname,price,quantity,description,image,frametype,framesize,framecolor,glassnumber) values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1, pro.getProductname());
	ps.setFloat(2, pro.getPrice());
	ps.setInt(3, pro.getQuantity());
	ps.setString(4, pro.getDescription());
	ps.setBlob(5, is);
	ps.setString(6, pro.getFrametype());
	ps.setString(7, pro.getFramesize());
	ps.setString(8, pro.getFramecolor());
	ps.setString(9, pro.getGlassnumber());
	ps.executeUpdate();
	con.close();
	resp.sendRedirect("displayproduct.jsp");
	} 
	catch (Exception e) 
	{
	System.out.println(e);
	}
	
	}

}
