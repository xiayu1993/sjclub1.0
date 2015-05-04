package org.sjclub.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.sjclub.dao.UserDao;
import org.sjclub.model.User;

/**
 * Servlet implementation class UserServlet
 */
@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		switch(action){
			case "login":login(request, response);
			case "register":register(request, response);
		}
	}
	
	/**
	 * @see HttpServlet#login(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setHeader("Cache-Control","no-cache");
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		User user = null;
		if(!UserDao.isExist(account, password)){
			out.print("error");
		}else{
			user = UserDao.login(account, password);
			request.getSession().setAttribute("userinfo", user);
			out.print("ok");
		}
	}
	
	/**
	 * @see HttpServlet#register(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setHeader("Cache-Control","no-cache");
		String account = request.getParameter("account");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		if(UserDao.isAccountExist(account)){
			out.print("用户已存在");
		}else{
			User user = new User(account, password, name);
			user = UserDao.register(user);
			request.getSession().setAttribute("user",user);
			UserDao.register(user);
		}
	}

}
