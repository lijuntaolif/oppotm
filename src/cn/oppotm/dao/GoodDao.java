package cn.oppotm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.oppotm.entity.Good;
import cn.oppotm.tools.DBUtils;

public class GoodDao {
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	public List<Good> selectAll(){
		List<Good> list=new ArrayList<Good>();
		conn=DBUtils.getconn();
		String sql="select * from good";
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Good good=new Good(rs.getInt("good_id"),rs.getString("good_name"),rs.getString("good_type"),
						rs.getString("introduce"),rs.getDouble("originalprice"),rs.getDouble("discountedprice"),
						rs.getInt("inventory"));
				list.add(good);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return list;
	}
	public List<Good> selectLikePrice(String key,int low,int high){
		List<Good> list=new ArrayList<Good>();
		conn=DBUtils.getconn();
		String sql="select * from good where good_name like ? or introduce like ? intersect select * from good where originalprice between ? and ?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+key+"%");
			pstmt.setString(2, "%"+key+"%");
			pstmt.setInt(3, low);
			pstmt.setInt(4, high);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Good good=new Good(rs.getInt("good_id"),rs.getString("good_name"),rs.getString("good_type"),
						rs.getString("introduce"),rs.getDouble("originalprice"),rs.getDouble("discountedprice"),
						rs.getInt("inventory"));
				list.add(good);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return list;
	}
	public List<Good> sortByPrice(){
		List<Good> list=new ArrayList<Good>();
		conn=DBUtils.getconn();
		String sql="select * from good order by originalprice asc";
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Good good=new Good(rs.getInt("good_id"),rs.getString("good_name"),rs.getString("good_type"),
						rs.getString("introduce"),rs.getDouble("originalprice"),rs.getDouble("discountedprice"),
						rs.getInt("inventory"));
				list.add(good);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return list;
	}
	public List<Good> selectByName(String Name){
		List<Good> list=new ArrayList<Good>();
		conn=DBUtils.getconn();
		String sql="select * from good where good_name=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, Name);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Good good=new Good(rs.getInt("good_id"),rs.getString("good_name"),rs.getString("good_type"),
						rs.getString("introduce"),rs.getDouble("originalprice"),rs.getDouble("discountedprice"),
						rs.getInt("inventory"));
				list.add(good);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return list;
	}
	public List<Good> selectBigger(int num){
		List<Good> list=new ArrayList<Good>();
		conn=DBUtils.getconn();
		String sql="select * from good where originalprice >=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Good good=new Good(rs.getInt("good_id"),rs.getString("good_name"),rs.getString("good_type"),
						rs.getString("introduce"),rs.getDouble("originalprice"),rs.getDouble("discountedprice"),
						rs.getInt("inventory"));
				list.add(good);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return list;
	}
	public List<Good> selectBetween(int low,int high){
		List<Good> list=new ArrayList<Good>();
		conn=DBUtils.getconn();
		String sql="select * from good where originalprice between ? and ?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, low);
			pstmt.setInt(2, high);
			rs=pstmt.executeQuery();
			while(rs.next()){
				Good good=new Good(rs.getInt("good_id"),rs.getString("good_name"),rs.getString("good_type"),
						rs.getString("introduce"),rs.getDouble("originalprice"),rs.getDouble("discountedprice"),
						rs.getInt("inventory"));
				list.add(good);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return list;
	}
}
