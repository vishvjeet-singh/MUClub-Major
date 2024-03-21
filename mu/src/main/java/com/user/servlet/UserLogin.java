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

@WebServlet("/userLogin")
public class UserLogin  extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
try {
			
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			HttpSession session=req.getSession();
			
			UserDao dao =new UserDao(DBConnection.getconn());
			user User =dao.login(email, password);
			
			if (User!=null) {
			
				session.setAttribute("userObj", User);
				resp.sendRedirect("index.jsp");
			}else {
				session.setAttribute("errMsg", "Invalid email & password");
				resp.sendRedirect("studentLogin.jsp");
				
			}
			

			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	

}
