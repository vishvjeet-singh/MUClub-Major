package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBConnection;
import com.entity.user;


@WebServlet("/user_register")
public class UserRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String email=req.getParameter("email");
			String fullName =req.getParameter("fullname");
			String dipartment=req.getParameter("dipartment");
			String password=req.getParameter("password");

			user u =new user(email,fullName,dipartment, password);
			HttpSession session=req.getSession();
			
			UserDao dao= new UserDao(DBConnection.getconn());
			boolean f = dao.register(u);
			
			if (f) {
				
				session.setAttribute("sucMsg", "Register Successfully");
				resp.sendRedirect("signup.jsp");
				
			}else {
				session.setAttribute("errMsg", "Something Went Wrong");
				resp.sendRedirect("signup.jsp");			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
}
