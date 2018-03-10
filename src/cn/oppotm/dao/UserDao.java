package cn.oppotm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import cn.oppotm.entity.User;
import cn.oppotm.tools.DBUtils;

public class UserDao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public User selectUser(int id){
		User user=null;
		conn=DBUtils.getconn();
		String sql="select * from user_info where user_id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,id);
			rs=pstmt.executeQuery();
			if(rs.next()){
				user=new User(rs.getInt("user_id"),rs.getString("user_name"),rs.getString("password"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		
		return user;
	}

}
