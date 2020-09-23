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
 * Servlet implementation class getorderitems
 */
@WebServlet("/getorderitems")
public class getorderitems extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getorderitems() {
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
		String ordernumber=request.getParameter("ordernum").toString();
		DBHelper Dal = new DBHelper();
		String strSql = " select * from tborderitems where orderid=?";
		List<Map<String, Object>> listall = null;
		List<Object> params = new ArrayList<Object>();
		params.add(ordernumber);
		try {
			listall = Dal.executeQuery(strSql, params);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		String str="{\"list\":[";
		int k=0;
		for (Map<String, Object> m :listall) 
		{
			k++;
			if(k==listall.size())
			{
				str+="{\"id\":\""+m.get("id")+"\",\"orderid\":\""+m.get("orderid")+"\",\"proid\":\""+m.get("proid")+"\",\"proname\":\""+m.get("proname")+"\",\"price\":\""+m.get("price")+"\",\"procount\":\""+m.get("procount")+"\",\"imgurl\":\""+m.get("imgurl")+"\"}";
			}
			else
			{
				str+="{\"id\":\""+m.get("id")+"\",\"orderid\":\""+m.get("orderid")+"\",\"proid\":\""+m.get("proid")+"\",\"proname\":\""+m.get("proname")+"\",\"price\":\""+m.get("price")+"\",\"procount\":\""+m.get("procount")+"\",\"imgurl\":\""+m.get("imgurl")+"\"},";
			}
		}
		str+="]}";
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json;charset=utf-8");
		response.getWriter().write(str);

		
	}

}
