package cn.oppotm.servlet;

import java.util.List;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.oppotm.dao.GoodDao;
import cn.oppotm.entity.Good;

public class ShowServlet2 extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String key=req.getParameter("key");
        int low,high;
        String plow=req.getParameter("low");
        if(plow==null||"".equals(plow)){
        	low=0;
        }else{
        	low=Integer.parseInt(plow);
        }
        String phigh=req.getParameter("high");
        if(phigh==null||"".equals(phigh)){
        	high=10000;
        }else{
        	high=Integer.parseInt(phigh);
        }
        GoodDao gooddao=new GoodDao();
        List<Good> glist=gooddao.selectLikePrice(key, low, high);
        req.setAttribute("glist", glist);
        req.getRequestDispatcher("show.jsp").forward(req, resp);
    }
}
