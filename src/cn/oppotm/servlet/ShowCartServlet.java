package cn.oppotm.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import cn.oppotm.dao.ShopCartDao;
import cn.oppotm.entity.Good;

public class ShowCartServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String  str=req.getParameter("user_id");
		ShopCartDao shopCart=new ShopCartDao();
		int user_id=Integer.parseInt(str);

		List<Good> list=new ArrayList<Good>();
		list=shopCart.selectByUser_id(user_id);
		req.setAttribute("cartlist", list);
		req.getRequestDispatcher("shoppingCart.jsp").forward(req, resp);
		
	}

}
