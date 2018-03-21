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
	/**
	 * 查找所有商品
	 * 
	 * @return 商品列表
	 */
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
	/**
	 * 根据关键词和价格区间查询商品
	 * @param key  关键字
	 * @param low	最低价
	 * @param high	最高价
	 * @return 商品数组
	 */
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
	/**
	 * 根据商品价格排序
	 * @return 商品数组
	 */
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
	/**
	 * 根据名称查询商品
	 * @param Name 商品名
	 * @return 商品数组
	 */
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
	/**
	 * 查询大于或等于该价格的商品
	 * @param num 商品价格
	 * @return 商品数组
	 */
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
	/**
	 * 查找给定价格区间内的商品
	 * @param low 最低价
	 * @param high 最高价
	 * @return 商品数组
	 */
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
	/**
	 * 根据商品id查找商品
	 * @param good_id
	 * @return good
	 */
	public Good selectByGoodid(int good_id){
		Good good=new Good();
		conn=DBUtils.getconn();
		String sql="select * from good where good_id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, good_id);
			rs=pstmt.executeQuery();
			while(rs.next()){
				good.setGood_id(good_id);
				good.setGood_name(rs.getString("good_name"));
				good.setDiscountedPrice(rs.getInt("DiscountedPrice"));
				good.setGood_type(rs.getString("Good_type"));
				good.setOriginalPrice(rs.getInt("OriginalPrice"));
				good.setIntroduce(rs.getString("Introduce"));
				good.setInventory(rs.getInt("Inventory"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		
		return good;
	}
	public int updateInventory(int inventory,int good_id){
		int flag=0;
		conn=DBUtils.getconn();
		String sql="update  good set inventory=? where good_id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, inventory);
			pstmt.setInt(2, good_id);
			flag=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		
		
		return flag;
	}

}
