package cn.oppotm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import cn.oppotm.tools.DBUtils;

public class ImageDao {
   private Connection conn=null;
   private PreparedStatement pstmt=null;
   private ResultSet rs=null;
   /**
    * 根据商品id查询相应手机图片的路径
    * @param goodid 商品id
    * @return 手机图片路径数组
    */
   public List<String> selectByGoodid(int goodid){
	   List<String> list=new ArrayList<String>();
	   String sql="select image_name from image where good_id=? and type=1";
	   conn=DBUtils.getconn();
	   try {
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1, goodid);
		rs=pstmt.executeQuery();
		while(rs.next()){
            list.add(rs.getString("image_name"));
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}finally{
		DBUtils.closeAll(conn, pstmt, rs);
	}
	   return list;
   }
   /**
    * 根据商品id查询相应介绍图片的路径
    * @param goodid 商品id
    * @return 商品介绍图片的路径
    */
   public List<String> selectByGoodid2(int goodid){
	   List<String> list=new ArrayList<String>();
	   String sql="select image_name from image where good_id=? and type=2";
	   conn=DBUtils.getconn();
	   try {
		   pstmt=conn.prepareStatement(sql);
		   pstmt.setInt(1, goodid);
		   rs=pstmt.executeQuery();
		   while(rs.next()){
			   list.add(rs.getString("image_name"));
		   }
	   } catch (SQLException e) {
		   e.printStackTrace();
	   }finally{
		   DBUtils.closeAll(conn, pstmt, rs);
	   }
	   return list;
   }
   /**
	 * 获取商品的第一个图片
	 * @param good_id
	 * @return 图片路径
	 */
	public String getFirstImage(int good_id){
		String url=null;
		conn=DBUtils.getconn();
		String sql="select image_name from(select rownum rn,image.* from image where good_id=? and type=1 order by image_id)t where t.rn=2";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, good_id);
		    rs=pstmt.executeQuery();
		    while (rs.next()) {
				url=rs.getString("image_name");
				
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}finally {
			DBUtils.closeAll(conn, pstmt, rs);
		}
		return url;
	}
}
