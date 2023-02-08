package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import bean.loaibean;

public class loaidao {
	public ArrayList<loaibean> getloai() throws Exception {
		ArrayList<loaibean> ds = new ArrayList<loaibean>();
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "select * from loai";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// Thực thi
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			String maloai = rs.getString("maloai");
			String tenloai = rs.getString("tenloai");
			String anh = rs.getString("anh");
			String anhbanner = rs.getString("anhbanner");
			ds.add(new loaibean(maloai, tenloai,anh,anhbanner));
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
	public int insertloai(String ml,String tl,String anh) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "insert into loai(maloai,tenloai,anhbanner) values(?,?,?)";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan
		cmd.setString(1,ml);
		cmd.setString(2,tl);
		cmd.setString(3,anh);
		// Thực thi
		int add = cmd.executeUpdate();
		dc.cn.close();
		return add;
	}
	public int deleteloai(String ml) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "delete from loai where maloai=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan
		cmd.setString(1,ml);
		// Thực thi
		int check2 = cmd.executeUpdate();
		dc.cn.close();
		return check2;
	}
	public int updateloai(String ml,String tl,String anh) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "update loai set tenloai=?,anhbanner=? where maloai=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan
		cmd.setString(1,tl);
		cmd.setString(2,anh);
		cmd.setString(3,ml);
		// Thực thi
		int check = cmd.executeUpdate();
		dc.cn.close();
		return check;
	}
	public int updateloai2(String ml,String tl) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "update loai set tenloai=? where maloai=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan
		cmd.setString(1,tl);
		cmd.setString(2,ml);
		// Thực thi
		int check = cmd.executeUpdate();
		dc.cn.close();
		return check;
	}
	public int kttrung(String ml) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "select * from loai where maloai=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan
		cmd.setString(1, ml);
		// Thực thi
		ResultSet rs = cmd.executeQuery();
		if (rs.next() == false)
			return 1;
		else return 0;
	}
}
