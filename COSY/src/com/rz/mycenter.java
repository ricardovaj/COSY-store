package com.rz;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class mycenter
 */
@WebServlet("/mycenter")
public class mycenter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public mycenter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Map<String, Object> obj=(Map<String,Object>)request.getSession().getAttribute("currentmember");	
		if(obj==null)
		{
			response.sendRedirect("uilogin.jsp");
			return;
		}
		String memberid=obj.get("id").toString();
		List<Map<String, Object>> listall = null;
		List<Object> params = new ArrayList<Object>();
		DBHelper Dal=new DBHelper();
		String strSql=" select * from tborderhead where memberid='"+memberid+"' "; 
		/*String strSql=" select * from tborderhead where memberid=? "; 
		params.add(memberid);*/
		try {
			listall=Dal.executeQuery(strSql, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		//分页
		int currentpage=1;
		try
		{
			String p=request.getParameter("p"); 
			currentpage = Integer.valueOf(p);
		}
		catch(Exception e){
			currentpage=1;
		}
		//获取分页信息
		Pager pageobj=new Pager();
		pageobj.allrecordcount=listall.size();
		pageobj.pagesize=10;//每页显示条数
		pageobj.currentpage=currentpage;
		pageobj.urlname="";

		//分页查询
		int startindex=pageobj.pagesize*(pageobj.currentpage-1);
		String strSqlpager=" select * from tborderhead order by id desc limit "+startindex+","+pageobj.pagesize+""; 
		List<Map<String, Object>> listpage = null;
		try {
			listpage=Dal.executeQuery(strSqlpager, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}

		String pagestr=pageobj.GetPageInfo();
		
		request.setAttribute("pagestr", pagestr);
		request.setAttribute("listall", listpage);
		request.getRequestDispatcher("/mycenter.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
