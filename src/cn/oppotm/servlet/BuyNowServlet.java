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
		String goodid=req.getParameter("goodid");
		String snum=req.getParameter("goodnum");
		String userid=req.getParameter("userid");
		String goodpay=req.getParameter("goodpay");

		System.out.println(userid);
		System.out.println(goodid);
		System.out.println(snum);
	
		
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
    	double pay=good.getDiscountedPrice()*num;
  
    	unfinishedForm.setPay(pay);
    	unfinishedForm.setUser_id(user_id);
    	ufForms.add(unfinishedForm);
    	
    	req.setAttribute("ufForms", ufForms);
    	req.setAttribute("strSum", snum);
    	req.setAttribute("strPay", goodpay);
    	req.getRequestDispatcher("Account.jsp").forward(req, resp);
	}

}
