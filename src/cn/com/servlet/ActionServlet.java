package cn.com.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.com.dao.UserDao;
import cn.com.entity.User;

public class ActionServlet extends HttpServlet {
	public void service(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException{
		res.setContentType("text/html;charset=utf-8");
		req.setCharacterEncoding("utf-8");
		PrintWriter out = res.getWriter();
		String uri = req.getRequestURI();
		String action =uri.substring(uri.lastIndexOf("/")+1,uri.lastIndexOf("."));
		
		
		
		if (action.equals("login")) {
			String name=req.getParameter("name");
			String password=req.getParameter("pwd");
		//	String number= req.getParameter("vcode");
			HttpSession session=req.getSession();
		//	String code=session.getAttribute("code").toString();
			UserDao userDao = new UserDao();
			try {
				User u =userDao.findByUsername(name);
				
				if (/*number.equals(code) && */name.equals(u.getUsername()) && password.equals(u.getPassword())) {
					HttpSession session2=req.getSession();
					System.out.println(session2.getId());
					session.setMaxInactiveInterval(10);
					session.setAttribute("username",name);
					res.sendRedirect(res.encodeRedirectURL("index.jsp"));
				} else {
					req.setAttribute("msg","账号或密码错误");
					req.getRequestDispatcher("login.jsp").forward(req,res);
				}
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	
	/*
		if(action.equals("login")){//判断动作为登录时
			String username=req.getParameter("name");
			String password = req.getParameter("pwd");
			UserDao userDao=new UserDao();
			try{
				User u =userDao.findByUsername(username);
				
				if(username == null || !u.getPassword().equals(password)){
					req.setAttribute("login_error","登录失败");
					req.getRequestDispatcher("error.jsp").forward(req, res);
				}else{
					res.sendRedirect("cart.jsp");
				}
			}catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				throw new ServletException(e);
			}
			
		}else */if(action.equals("regist")){//判断动作为注册时
			UserDao userdao = new UserDao();
			String username = req.getParameter("name");
			String password1 = req.getParameter("pwd");
			try {
				User u =userdao.findByUsername(username);
				if(u.getUsername() != null){
					req.setAttribute("regist_error","注册失败");
					
					req.getRequestDispatcher("regist.jsp").forward(req, res);
				}else{
					u = new User();
					u.setUsername(username);
					u.setPassword(password1);
					userdao.save(u);
					res.sendRedirect("login.jsp");
				}
			} catch (Exception e) {
				e.printStackTrace();
				throw new ServletException();
			}
		}
			 else if (action.equals("logout")) {
					HttpSession session = req.getSession();
					//session失效
					session.invalidate();
					res.sendRedirect("login.jsp");
				}
		
		
		/*HttpSession session = req.getSession();
		System.out.println(session.getId());
		
		if(action.equals("login")){
			String nameString= req.getParameter("username");
			String pasString=req.getParameter("password");
			if(nameString.equals("1234") && pasString.equals("1234")){
				session.setAttribute("username",nameString);
				res.sendRedirect("index.jsp");
			}else {
				req.setAttribute("msg","错误");
				req.getRequestDispatcher("login.jsp").forward(req, res);
			}
		}else if (action.equals("logout")) {
				session.invalidate();
				res.sendRedirect("login.jsp");
			}*/
		out.close();
		
	}
}
