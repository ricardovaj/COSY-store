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
 * Servlet implementation class getcarinfo
 */
@WebServlet("/getcarinfo")
public class getcarinfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getcarinfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sessionid= request.getSession().getId();
		DBHelper Dal = new DBHelper();
		String strSql = " select * from tbshoppingcar where sessionid=? ";
		List<Object> params = new ArrayList<Object>();
		params.add(sessionid);
		List<Map<String, Object>> list = null;
		try {
			list = Dal.executeQuery(strSql, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		String listStr="";
		//{\"name\":\"\",\"imgurl\":\"1.jpg\",\"price\":\"1000\"},{\"name\":\"\",\"imgurl\":\"1.jpg\",\"price\":\"1000\"},{\"name\":\"\",\"imgurl\":\"1.jpg\",\"price\":\"1000\"}
		int kk=0;
		for (Map<String, Object> m : list) {
			kk++;
			if(kk==list.size())
			{
				listStr+="{\"name\":\""+m.get("proname").toString()+"\",\"imgurl\":\""+m.get("imgurl").toString()+"\",\"price\":\""+m.get("price").toString()+"\"}";
			}
			else {
				listStr+="{\"name\":\""+m.get("proname").toString()+"\",\"imgurl\":\""+m.get("imgurl").toString()+"\",\"price\":\""+m.get("price").toString()+"\"},";
			}
		}
		String res="{\"procount\":\" "+list.size()+" \",\"prolist\":["+listStr+"]}";
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json;charset=utf-8");
		response.getWriter().write(res);
	}

}
