package cn.oppotm.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.oppotm.dao.CompletedFormDao;
import cn.oppotm.dao.GoodDao;
import cn.oppotm.dao.ShopCartDao;
import cn.oppotm.entity.CompletedForm;
import cn.oppotm.entity.Good;

public class AccountServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[] good_ids=req.getParameterValues("good_id");
		String address=req.getParameter("address");
		String post1=req.getParameter("post");
		int post=Integer.parseInt(post1);
		String name=req.getParameter("name");
		
		String phone1=req.getParameter("phone");
		
		
		String[] nums=req.getParameterValues("num");
		String[] pays=req.getParameterValues("goodpay");
		String express1=req.getParameter("express");
		int express=Integer.parseInt(express1);
		String user_id1=req.getParameter("user_id");
		int user_id=Integer.parseInt(user_id1);
		CompletedFormDao completedFormDao=new CompletedFormDao();
		boolean flags=false;
		for(int i=0;i<good_ids.length;i++){
			int good_id=Integer.parseInt(good_ids[i]);
			int num=Integer.parseInt(nums[i]);
			int pay=Integer.parseInt(pays[i]);
			CompletedForm completedForm=new CompletedForm();
			completedForm.setGood_id(good_id);
			completedForm.setUser_id(user_id);
			completedForm.setPay(pay);
			completedForm.setName(name);
			completedForm.setAddress(address);
			completedForm.setExpress(express);
			completedForm.setPhone(phone1);
			
			completedForm.setPost(post);
			completedForm.setNum(num);
			int flag=completedFormDao.addCompletedForm(completedForm);
			if(flag==1){
				ShopCartDao shopCartDao=new ShopCartDao();
				GoodDao goodDao=new GoodDao();
				Good good=goodDao.selectByGoodid(good_id);
				int inventory=good.getInventory()-num;
				int flag3=goodDao.updateInventory(inventory, good_id);
				int flag2=shopCartDao.deletCart(good_id);
				
				if(flag2==1&&flag3==1){
					flags=true;
				}
			}
		}
		
		req.setAttribute("flag", flags);
		req.getRequestDispatcher("End.jsp").forward(req, resp);
		
		
		
	}

}
