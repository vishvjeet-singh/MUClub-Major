package com.admin.servlet;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ClubDao;
import com.db.DBConnection;
import com.entity.user;


@WebServlet("/addClub")
public class AddClub extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String clubName=req.getParameter("clubName");
		ClubDao dao = new ClubDao(DBConnection.getconn());
		boolean f =dao.addClub(clubName);
		
         HttpSession session=req.getSession();		
		
		if (f) {
			session.setAttribute("sucMsg", "Club Added");
			resp.sendRedirect("admin/index1.jsp");
		} else {
			session.setAttribute("errMsg", "something wrong on server");
			resp.sendRedirect("admin/index1.jsp");
		}
		
		
	}
	
	

}
