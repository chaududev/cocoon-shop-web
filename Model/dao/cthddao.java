package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.cthdbean;

public class cthddao {
	public ArrayList<cthdbean> getcthd() throws Exception {
		ArrayList<cthdbean> ds = new ArrayList<cthdbean>();
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "select * from cthd inner join hang on cthd.mahang=hang.mahang";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
	
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			String macthd = rs.getString("macthd");
			String mahang = rs.getString("mahang");
			String tenhang = rs.getString("tenhang");
			String dungtich = rs.getString("dungtich");
			long gia = rs.getLong("gia");
			long slmua = rs.getLong("slmua");
			String anh = rs.getString("anh");
			String mahoadon = rs.getString("mahoadon");
			
			ds.add(new cthdbean(macthd,mahang,tenhang,dungtich,gia,slmua,gia*slmua,anh,mahoadon));
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
	public ArrayList<cthdbean> getcthd2(String mahd) throws Exception {
		ArrayList<cthdbean> ds = new ArrayList<cthdbean>();
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "select * from cthd inner join hang on cthd.mahang=hang.mahang where cthd.mahoadon=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		cmd.setString(1,mahd);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			String macthd = rs.getString("macthd");
			String mahang = rs.getString("mahang");
			String tenhang = rs.getString("tenhang");
			String dungtich = rs.getString("dungtich");
			long gia = rs.getLong("gia");
			long slmua = rs.getLong("slmua");
			String anh = rs.getString("anh");
			String mahoadon = rs.getString("mahoadon");
			
			ds.add(new cthdbean(macthd,mahang,tenhang,dungtich,gia,slmua,gia*slmua,anh,mahoadon));
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
	public void addcthd(String mh, Long slm, String mahd) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "insert into cthd(mahang,slmua,mahoadon) values(?,?,?)";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);

		cmd.setString(1,mh);
		cmd.setLong(2,slm);
		cmd.setString(3,mahd);

		cmd.executeUpdate();
		dc.cn.close();
	}
}
