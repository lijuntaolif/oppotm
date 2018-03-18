package cn.oppotm.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.oppotm.dao.GoodDao;
import cn.oppotm.dao.ImageDao;
import cn.oppotm.entity.Good;

import cn.oppotm.entity.UnfinishedForm;

public class BuyNowServlet extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException {
		String goodid=req.getParameter("good_id");
		String snum=req.getParameter("num");
		String userid=req.getParameter("user_id");
		System.out.println(userid);
		System.out.println(goodid);
		
		int user_id=Integer.parseInt(userid);
		int num=Integer.parseInt(snum);
		int good_id=Integer.parseInt(goodid);
		Good good=new GoodDao().selectByGoodid(good_id);
    	
    	ImageDao imageDao=new ImageDao();
    	
    	
    	List<UnfinishedForm> ufForms=new ArrayList<UnfinishedForm>();
    	UnfinishedForm unfinishedForm=new UnfinishedForm();
    	unfinishedForm.setGood_id(good_id);
    	unfinishedForm.setImage_name(imageDao.getFirstImage(good_id));
    	unfinishedForm.setDiscountedPrice(good.getDiscountedPrice());
    	unfinishedForm.setIntroduce(good.getIntroduce());
    	unfinishedForm.setNum(num);
    	double pay=num*good.getDiscountedPrice();
    	unfinishedForm.setPay(pay);
    	unfinishedForm.setUser_id(user_id);
    	ufForms.add(unfinishedForm);
    	
    	req.setAttribute("ufForms", ufForms);
    	req.getRequestDispatcher("Account.jsp").forward(req, resp);
	}

}
