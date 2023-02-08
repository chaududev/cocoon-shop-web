package dao;

import java.sql.PreparedStatement;

import java.sql.ResultSet;
import java.util.ArrayList;

import bean.dangnhapbean;
public class dangnhapdao {
	
	public dangnhapbean ktd(String un, String pass) throws Exception{
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "select * from dangnhap where tendn=? and matkhau=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan

		cmd.setString(1, un);
		cmd.setString(2, pass);
		ResultSet rs = cmd.executeQuery();
		if (rs.next() == false)
			return null;
		else {
			String tendn = rs.getString("tendn");
			String mk = rs.getString("matkhau");
			Boolean q = rs.getBoolean("quyen");
			dangnhapbean dn = new dangnhapbean(tendn, mk, q);
			rs.close();
			dc.cn.close();
			return dn;
		}
	}

	public ArrayList<dangnhapbean> getdangnhap() throws Exception {
		ArrayList<dangnhapbean> ds = new ArrayList<dangnhapbean>();
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "select * from dangnhap";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// Thực thi
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			String tendn = rs.getString("tendn");
			String matkhau = rs.getString("matkhau");
			Boolean q = rs.getBoolean("quyen");
			ds.add(new dangnhapbean(tendn,matkhau,q));
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
	public int insertdangnhap(String un,String pass,Boolean q) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "insert into dangnhap(tendn,matkhau,quyen) values(?,?,?)";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan
		cmd.setString(1,un);
		cmd.setString(2,pass);
		cmd.setBoolean(3,q);
		// Thực thi
		int add = cmd.executeUpdate();
		dc.cn.close();
		return add;
	}
	public int deletedangnhap(String un) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "delete from dangnhap where tendn=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan
		cmd.setString(1,un);
		// Thực thi
		int check2 = cmd.executeUpdate();
		dc.cn.close();
		return check2;
	}
	public int updatedangnhap(String un,String pass,Boolean q) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "update dangnhap set matkhau=?,quyen=? where tendn=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan
		cmd.setString(1,pass);
		cmd.setBoolean(2,q);
		cmd.setString(3,un);
		// Thực thi
		int check = cmd.executeUpdate();
		dc.cn.close();
		return check;
	}
	public int kttrung(String un) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "select * from dangnhap where tendn=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan
		cmd.setString(1, un);
		// Thực thi
		ResultSet rs = cmd.executeQuery();
		if (rs.next() == false)
			return 1;
		else return 0;
	}

}
