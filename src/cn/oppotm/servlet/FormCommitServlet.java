package cn.oppotm.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Session;

import cn.oppotm.dao.GoodDao;
import cn.oppotm.dao.ImageDao;
import cn.oppotm.entity.Good;
import cn.oppotm.entity.UnfinishedForm;

public class FormCommitServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//接收购物车页面传来的值
		String strSum=req.getParameter("allcountnum");
    	String strPay=req.getParameter("allcountpay");
    	String userid=req.getParameter("user_id");

    	int user_id=Integer.parseInt(userid);
		String allcountGood_ids= req.getParameter("allcountGood_id");
		String allcountGood_nums= req.getParameter("allcountGood_Num");
		String[] good_ids=allcountGood_ids.split(",");
		String[] good_nums=allcountGood_nums.split(",");
		
		List<UnfinishedForm> ufForms=new ArrayList<UnfinishedForm>();
		GoodDao goodDao=new GoodDao();
		ImageDao imageDao=new ImageDao();
		
		for(int i=0;i<good_ids.length;i++){
				
				UnfinishedForm uForm=new UnfinishedForm();
				int good_id=Integer.parseInt(good_ids[i]);
				Good good2=goodDao.selectByGoodid(good_id);
				
				uForm.setGood_id(good_id);
				
				uForm.setNum(Integer.parseInt(good_nums[i]));
				uForm.setImage_name(imageDao.getFirstImage(good_id));
				uForm.setDiscountedPrice(good2.getDiscountedPrice());
				uForm.setIntroduce(good2.getIntroduce());
				double pay=good2.getDiscountedPrice()*Integer.parseInt(good_nums[i]);
				
				uForm.setPay(pay);
				uForm.setUser_id(user_id);
				ufForms.add(uForm);
				
			
		}

		req.setAttribute("ufForms", ufForms);

		req.setAttribute("strSum", strSum);
		req.setAttribute("strPay", strPay);
		
		
		req.getRequestDispatcher("Account.jsp").forward(req, resp);
		
		
	}

}
