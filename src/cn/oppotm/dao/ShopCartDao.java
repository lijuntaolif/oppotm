package cn.oppotm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.oppotm.entity.Good;
import cn.oppotm.tools.DBUtils;

public class ShopCartDao {
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	
	/**
	 * 根据用户id搜索购物车商品信息列表
	 * @param user_id
	 * @return 商品信息数组
	 */
	public List<Good> selectByUser_id(int user_id){
		List<Good> list=new ArrayList<Good>();
		conn=DBUtils.getconn();
		String sql="select good.* from shopcart,good where shopcart.good_id=good.good_id and shopcart.user_id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, user_id);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				Good good=new Good();
				good.setGood_id(rs.getInt("good_id"));
				good.setGood_name(rs.getString("good_name"));
				good.setGood_type(rs.getString("good_type"));
				good.setIntroduce(rs.getString("introduce"));
				good.setInventory(rs.getInt("inventory"));
				good.setOriginalPrice(rs.getDouble("OriginalPrice"));
				good.setDiscountedPrice(rs.getDouble("discountedPrice"));
				list.add(good);
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	/**
	 * 按照用户id查询出购物车物品的数量
	 * @param user_id
	 * @return 购物车物品数量
	 */
	public int countByUser_id(int user_id){
		int num=0;
		conn=DBUtils.getconn();
		String sql="select count(*) from shopcart where user_id=? group by user_id";
		try {
			pstmt=conn.prepareStatement(sql);	
			pstmt.setInt(1, user_id);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				num=rs.getInt("count(*)");
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		return num;
		
	}
	/**
	 * 添加购物车
	 * @param user_id
	 * @param good_id
	 * @return
	 */
	public int addCart(int user_id,int good_id){
		int flag=0;
		conn=DBUtils.getconn();
		String sql="insert into shopcart values(?,?)";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, user_id);
			pstmt.setInt(2, good_id);
			flag=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return flag;
	}
	/**
	 * 删除购物车商品
	 * @param good_id
	 * @return
	 */
	public int deletCart(int good_id){
		int flag=0;
		conn=DBUtils.getconn();
		String sql="delete from shopcart where good_id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, good_id);
			flag=pstmt.executeUpdate();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return flag;
	}
	public int selectCount(int good_id,int user_id){
		int flag=1;
		conn=DBUtils.getconn();
		String sql="select count(*) from shopcart where good_id=? and user_id=?";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, good_id);
			pstmt.setInt(2, user_id);
			rs=pstmt.executeQuery();
			while (rs.next()) {
				flag=rs.getInt("count(*)");
				
			}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		return flag;
	}
	
}
