package cn.oppotm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.oppotm.tools.DBUtils;

public class ImageDao {
	private Connection conn=null;
	private PreparedStatement pstmt=null;
	private ResultSet rs=null;
	
	/**
	 * 获取商品的第一个图片
	 * @param good_id
	 * @return 图片路径
	 */
	public String getFirstImage(int good_id){
		String url=null;
		conn=DBUtils.getconn();
		String sql="select image_name from(select rownum rn,image.* from image where good_id=? and type=1 order by image_id)t where t.rn=1";
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, good_id);
		    rs=pstmt.executeQuery();
		    while (rs.next()) {
				url=rs.getString("image_name");
				
			}
		} catch (SQLException e) {
		
			e.printStackTrace();
		}
		return url;
	}
}
