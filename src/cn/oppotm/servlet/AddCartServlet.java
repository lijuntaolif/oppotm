package cn.oppotm.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.oppotm.dao.GoodDao;
import cn.oppotm.dao.ImageDao;
import cn.oppotm.dao.ShopCartDao;
import cn.oppotm.entity.Good;
import cn.oppotm.entity.Image;

public class AddCartServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException {
	
		String goodid=req.getParameter("good_id");
		int good_id=Integer.parseInt(goodid);
    	String userid=req.getParameter("user_id");
    	int user_id=Integer.parseInt(userid);
    	ShopCartDao shopCartDao=new ShopCartDao();
    	int t=shopCartDao.selectCount(good_id, user_id);
    	int flag=0;
    	if(t==0){
    		flag=shopCartDao.addCart(user_id, good_id);
    		if(flag==1){
    			//执行成功
    			resp.getWriter().print("1");
    		}else {
    			//执行失败
				resp.getWriter().print("3");
			}
    		
    	}else{
    		//已加入购物车
    		resp.getWriter().print("2");
    	}
    	
	}

}
