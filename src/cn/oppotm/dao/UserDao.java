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
	/**
	 * 根据用户id查找用户
	 * @param id
	 * @return
	 */
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
	
	/**
     * 通过用户名来查询数据库中的数据条数，已确认数据库中是否有此用户。
     * @param name 用户名
     * @return i 返回的数据条数
     */
    public int selectByName(String name){
        int i=0;
    	conn=DBUtils.getconn();
    	String sql="select count(*) from user_info where user_name=?";
    	try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs=pstmt.executeQuery();
			while(rs.next()){
	    		i=rs.getInt(1);
	    	}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(conn, pstmt, rs);
		}
    	return i;
    }
    /**
     * 通过用户名和密码来查询数据条数，确认数据库是否有该用户名和密码。
     * @param name 用户名
     * @param pwd  密码
     * @return i 数据条数
     */
    public int selectByNameAndPwd(String name,String pwd){
    	int i=0;
    	conn=DBUtils.getconn();
    	String sql="select count(*) from user_info where user_name=? and password=?";
    	try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, pwd);
			rs=pstmt.executeQuery();
			while(rs.next()){
				i=rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(conn, pstmt, rs);
		}
    	return i;
    }
    /**
     * 在数据库中插入新的用户
     * @param name  用户名
     * @param password  密码
     * @return i 更新的数据条数
     */
    public int insertUser(String name,String password){
    	int i=0;
    	conn=DBUtils.getconn();
    	String sql="insert into user_info values(idseq.nextval,?,?)";
    	try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, password);
			i=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(conn, pstmt, null);
		}
    	return i;
    }
    /**
     * 根据用户名来查询用户id
     * @param name 用户名
     * @return 用户id
     */
    public int selectIdBYName(String name){
    	int userid=0;
    	conn=DBUtils.getconn();
    	String sql="select user_id from user_info where user_name=?";
    	try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs=pstmt.executeQuery();
			while(rs.next()){
				userid=rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(conn, pstmt, rs);
		}
    	return userid;
    }


}
