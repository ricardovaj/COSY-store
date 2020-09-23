package com.rz;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class memberedit
 */
@WebServlet("/memberedit")
public class memberedit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public memberedit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 String id=request.getParameter("id"); 
		 DBHelper Dal=new DBHelper();
		 String strSql=" select * from tbmember where id=? "; 
		 Map<String, Object> objbyid = null;
		 List<Object> params = new ArrayList<Object>();
		 params.add(id);
		 objbyid=Dal.getSingleObject(strSql, params);
		 request.setAttribute("objbyid", objbyid);
		 request.getRequestDispatcher("/views/memberedit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");  
		 
		 String id=request.getParameter("id"); 
		 String loginname=request.getParameter("loginname"); 
		 String truename=request.getParameter("truename"); 
		 String tel=request.getParameter("tel"); 
		 String address=request.getParameter("address"); 
		 
		 DBHelper Dal=new DBHelper();
		 String strSql=" update tbmember set loginname=?,truename=?,tel=?,address=? where id=? "; 
		 List<Object> params = new ArrayList<Object>();
		 params.add(loginname);		 
		 params.add(truename);
		 params.add(tel);
		 params.add(address);
		 params.add(id);
		 Dal.excuteSql(strSql, params);
		 response.setCharacterEncoding("utf-8");
		 response.setContentType("text/html;charset=utf-8");
		 response.getWriter().write("<font color='green'>保存成功,2秒之后发生跳转!</font>");
		 response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/views/memberedit?id="+id);
	}

}
