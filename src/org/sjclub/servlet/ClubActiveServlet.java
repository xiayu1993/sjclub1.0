package org.sjclub.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.sjclub.dao.ClubActiveDao;
import org.sjclub.model.ClubActive;

/**
 * Servlet implementation class ClubActiveServlet
 */
@WebServlet("/ClubActiveServlet")
public class ClubActiveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClubActiveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		switch(action){
			case"index_active_list":getActiveList(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#getActiveList(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void getActiveList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		List<ClubActive> clubActives = ClubActiveDao.getActiveList();
		if(clubActives != null){
			request.setAttribute("clubActives", clubActives);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else{
			out.print("onContent");
		}
		out.flush();
		out.close();
	}
}
