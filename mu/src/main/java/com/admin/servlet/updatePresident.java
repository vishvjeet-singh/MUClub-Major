package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.PresidentDao;
import com.db.DBConnection;
import com.entity.president;

@WebServlet("/addPresident")
public class updatePresident extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String fullName = req.getParameter("fullname");
			String Dipartment = req.getParameter("dip");
			String Designation = req.getParameter("designation");
			String club = req.getParameter("club");
			String Email = req.getParameter("email");
			String MobNo = req.getParameter("mobno");
			String Password = req.getParameter("password");
			
			int id =Integer.parseInt(req.getParameter("id"));

			president p = new president(id, fullName, Dipartment, Designation, club, Email, MobNo, Password);
            PresidentDao dao=new PresidentDao(DBConnection.getconn());
            HttpSession session= req.getSession();
            
			
			if (dao.registerPresident(p)) {
				session.setAttribute("sucMsg", "Club Head Updated Successfully..");
				resp.sendRedirect("admin/president.jsp");

			}else {
				session.setAttribute("errMsg", "something wrong on server1");
				resp.sendRedirect("admin/president.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		
		
	}
	
	

}
