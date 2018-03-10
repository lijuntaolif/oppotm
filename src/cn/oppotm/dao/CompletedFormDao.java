package cn.oppotm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.oppotm.entity.CompletedForm;
import cn.oppotm.tools.DBUtils;

public class CompletedFormDao {
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	/**
	 * 添加已完成订单
	 * @param completedForm
	 * @return
	 */
	public int addCompletedForm(CompletedForm completedForm){
		int flag=0;
		conn=DBUtils.getconn();
		
		String sql="insert into completedform values(compform.nextval,?,?,?,?,?,sysdate,?,?,?,?)";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, completedForm.getUser_id());
			pstmt.setInt(2, completedForm.getGood_id());
			pstmt.setInt(3, completedForm.getNum());
			pstmt.setInt(4,(int)completedForm.getPay());
			pstmt.setInt(5, completedForm.getExpress());
			pstmt.setString(6, completedForm.getAddress());
			pstmt.setInt(7, completedForm.getPost());
			pstmt.setString(8, completedForm.getName());;
			pstmt.setString(9, completedForm.getPhone());
			flag=pstmt.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}

		return flag;	
	}

		
			
	
}
