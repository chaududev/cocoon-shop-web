package dao;

import java.nio.charset.Charset;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import bean.hoadonbean;

public class hoadondao {

	public ArrayList<hoadonbean> gethd(String sdt) throws Exception {
		ArrayList<hoadonbean> ds = new ArrayList<hoadonbean>();
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "select * from hoadon where sdt=?  order by mahoadon desc";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1,sdt);
		// Thực thi
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			String mahoadon = rs.getString("mahoadon");
			Timestamp now = rs.getTimestamp("ngaymua");
			Date ngaymua = new Date(now.getTime());
			long tinhtrang = rs.getLong("tinhtrang");
			String sodt = rs.getString("sdt");
			String hoten = rs.getString("hoten");
			String diachi = rs.getString("diachi");
			ds.add(new hoadonbean(mahoadon,ngaymua,tinhtrang,sodt,hoten,diachi));
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
	public String addhd(String sdt, String hoten,String diachi) throws Exception {
		DungChung dc = new DungChung();
		String mahd=null;
		dc.KetNoi();
		String sql = "insert into hoadon(ngaymua,tinhtrang,sdt,hoten,diachi) values(GETDATE(),1,?,?,?)";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan
		cmd.setString(1,sdt);
		cmd.setString(2, hoten);
		cmd.setString(3, diachi);
		// Thực thi
		cmd.executeUpdate();
		
		String sql2 = "SELECT @@IDENTITY asLastID";
		PreparedStatement cmd2 = dc.cn.prepareStatement(sql2);
		// Thực thi
		ResultSet rs = cmd2.executeQuery();
		while (rs.next()) {
			mahd = rs.getString("asLastID");
		}
		rs.close();
		dc.cn.close();
		return mahd;
	}
	public ArrayList<hoadonbean> gethd2() throws Exception {
		ArrayList<hoadonbean> ds = new ArrayList<hoadonbean>();
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "select * from hoadon order by MaHoaDon desc";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// Thực thi
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			String mahoadon = rs.getString("mahoadon");
			Timestamp now = rs.getTimestamp("ngaymua");
			Date ngaymua = new Date(now.getTime());
			long tinhtrang = rs.getLong("tinhtrang");
			String sodt = rs.getString("sdt");
			String hoten = rs.getString("hoten");
			String diachi = rs.getString("diachi");
			ds.add(new hoadonbean(mahoadon,ngaymua,tinhtrang,sodt,hoten,diachi));
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
	public void updatehd(String mahd,Long tinhtrang) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql="update hoadon set tinhtrang=? where mahoadon=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan
		cmd.setLong(1,tinhtrang);
		cmd.setString(2,mahd);
		// Thực thi
		cmd.executeUpdate();
		dc.cn.close();
	}

}
