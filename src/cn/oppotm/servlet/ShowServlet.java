package cn.oppotm.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.oppotm.dao.GoodDao;
import cn.oppotm.entity.Good;

public class ShowServlet extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException {
        	GoodDao gooddao=new GoodDao();
        	List<Good> glist=gooddao.selectAll();
        	req.setAttribute("glist", glist);
        	req.getRequestDispatcher("show.jsp").forward(req, resp);
    	};
}
