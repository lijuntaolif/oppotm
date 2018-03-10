package cn.oppotm.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.Session;

import cn.oppotm.entity.Good;

public class FormCommitServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//接收购物车页面传来的值
		String[] str=req.getParameterValues("choose");
		String[] good_num=req.getParameterValues("good_num");
		for(int i=1;str!=null&&i<str.length-1;i++){
			if(str[i]==null){
				good_num[i-1]=null;
			}
		
		}
		req.setAttribute("str", good_num);
		
		req.getRequestDispatcher("Account.jsp").forward(req, resp);
		
		
	}

}
