package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addPresident")
public class AddPresident extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String fullName =req.getParameter("fullname");
			String Dipartment=req.getParameter("dip");
			String Designation=req.getParameter("designation");
			String club=req.getParameter("club");
			String Email=req.getParameter("email");
			String MobNo=req.getParameter("mobno");
			String Password=req.getParameter("password");
			
			boolean f =d
			
			if (f) {
				resp.sendRedirect("admin/president.jsp");
				
			}
			

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
