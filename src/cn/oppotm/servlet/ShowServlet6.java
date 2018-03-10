package cn.oppotm.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.oppotm.dao.GoodDao;
import cn.oppotm.entity.Good;

public class ShowServlet6 extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	String tlow=req.getParameter("low");
    	int low=Integer.parseInt(tlow);
    	String thigh=req.getParameter("high");
    	int high=Integer.parseInt(thigh);
    	GoodDao gooddao=new GoodDao();
    	List<Good> glist=gooddao.selectBetween(low, high);
    	req.setAttribute("glist", glist);
    	req.getRequestDispatcher("show.jsp").forward(req, resp);
    }
}
