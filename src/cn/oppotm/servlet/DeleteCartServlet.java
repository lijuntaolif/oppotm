package cn.oppotm.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

import cn.oppotm.dao.ShopCartDao;

public class DeleteCartServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String good_id1=(String) req.getParameter("good_id");
		System.out.println(good_id1);
		PrintWriter out=resp.getWriter();
		int good_id=Integer.parseInt(good_id1);
		ShopCartDao shopCartDao=new ShopCartDao();
		int flag=shopCartDao.deletCart(good_id);
		String flage="false";
		if(flag==1){
			flage="true";
		}else{
			flage="false";
		}
	
		out.print(flage);
	}

}
