<%@page import="cn.oppotm.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
       String uname=request.getParameter("uname");
       UserDao userDao=new UserDao();
       int i=userDao.selectByName(uname);
       if(i==0){
    	   out.print("false");
       }else{
    	   out.print("true");
       }
    %>