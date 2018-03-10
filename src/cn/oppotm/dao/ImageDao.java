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
}
