package cn.oppotm.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.oppotm.dao.GoodDao;
import cn.oppotm.dao.ImageDao;
import cn.oppotm.entity.Good;
import cn.oppotm.entity.Image;

public class BuyServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException {
		String goodid=req.getParameter("good_id");
		int good_id=Integer.parseInt(goodid);
		Good good=new GoodDao().selectByGoodid(good_id);
    	req.setAttribute("good", good);
    	ImageDao imageDao=new ImageDao();
    	List<String> ilist=(List<String>)imageDao.selectByGoodid(good_id);
    	List<String> ilist2=(List<String>)imageDao.selectByGoodid2(good_id);
    	req.setAttribute("urllist", ilist);
    	req.setAttribute("urllist2", ilist2);
    	req.getRequestDispatcher("Detail.jsp").forward(req, resp);
	}

	
}
