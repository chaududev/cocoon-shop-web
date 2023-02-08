package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bean.hangbean;

public class hangdao {
	public ArrayList<hangbean> gethang() throws Exception {
		ArrayList<hangbean> ds = new ArrayList<hangbean>();
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "select * from hang";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// Thực thi
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			String mahang= rs.getString("mahang");
			String tenhang = rs.getString("tenhang");
			long soluong = rs.getLong("soluong");
			long gia = rs.getLong("gia");
			String anh = rs.getString("anh");
			String maloai = rs.getString("maloai");
			String mota = rs.getString("mota");
			String thanhphan = rs.getString("thanhphan");
			String hdsd = rs.getString("hdsd");
			String congdung = rs.getString("congdung");
			String dungtich = rs.getString("dungtich");
			ds.add(new hangbean(mahang,tenhang,soluong,gia,anh,maloai,mota,thanhphan,hdsd,congdung,dungtich));
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
	public ArrayList<hangbean> gethang2(Long thang,Long nam) throws Exception {
		ArrayList<hangbean> ds = new ArrayList<hangbean>();
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "select hang.anh,hang.mahang,hang.tenhang,hang.dungtich,hang.gia,hang.soluong,sum(cthd.slmua) as soluongban from hang inner join cthd on hang.mahang=cthd.mahang inner join hoadon on hoadon.mahoadon=cthd.mahoadon where month(hoadon.ngaymua)=? and year(hoadon.ngaymua)=? and (hoadon.tinhtrang!=5) and (hoadon.tinhtrang!=0)  group by hang.anh,hang.mahang,hang.tenhang,hang.dungtich,hang.gia,hang.soluong order by  sum(cthd.slmua) desc";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// Thực thi
		cmd.setLong(1,thang);
		cmd.setLong(2,nam);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			String mahang= rs.getString("mahang");
			String tenhang = rs.getString("tenhang");
			long soluong = rs.getLong("soluong");
			long gia = rs.getLong("gia");
			String anh = rs.getString("anh");
			String dungtich = rs.getString("dungtich");
			String mota= rs.getString("soluongban");
			ds.add(new hangbean(mahang,tenhang,soluong,gia,anh,null,mota,null,null,null,dungtich));
		}
		rs.close();
		dc.cn.close();
		return ds;
	}
	public int inserthang(String mh,String th,Long sl,Long gia,String anh,String maloai,String mota,String thanhphan,String hdsd,String congdung,String dungtich) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "insert into hang(mahang,tenhang,soluong,gia,anh,maloai,mota,thanhphan,hdsd,congdung,dungtich) values(?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan
		cmd.setString(1,mh);
		cmd.setString(2,th);
		cmd.setLong(3,sl);
		cmd.setLong(4,gia);
		cmd.setString(5,anh);
		cmd.setString(6,maloai);
		cmd.setString(7,mota);
		cmd.setString(8,thanhphan);
		cmd.setString(9,hdsd);
		cmd.setString(10,congdung);
		cmd.setString(11,dungtich);
		
		
		// Thực thi
		int add = cmd.executeUpdate();
		dc.cn.close();
		return add;
	}
	public int deletehang(String mh) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "delete from hang where mahang=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan
		cmd.setString(1,mh);
		// Thực thi
		int check2 = cmd.executeUpdate();
		dc.cn.close();
		return check2;
	}
	public int updatehang(String mh,String th,Long sl,Long gia,String anh,String maloai,String mota,String thanhphan,String hdsd,String congdung,String dungtich) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "update hang set tenhang=?,soluong=?,gia=?,anh=?,maloai=?,mota=?,thanhphan=?,hdsd=?,congdung=?,dungtich=? where mahang=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan
		cmd.setString(1,th);
		cmd.setLong(2,sl);
		cmd.setLong(3,gia);
		cmd.setString(4,anh);
		cmd.setString(5,maloai);
		cmd.setString(6,mota);
		cmd.setString(7,thanhphan);
		cmd.setString(8,hdsd);
		cmd.setString(9,congdung);
		cmd.setString(10,dungtich);
		cmd.setString(11,mh);
		// Thực thi
		int check = cmd.executeUpdate();
		dc.cn.close();
		return check;
	}
	public int kttrung(String mh) throws Exception {
		DungChung dc = new DungChung();
		dc.KetNoi();
		String sql = "select * from hang where mahang=?";
		PreparedStatement cmd = dc.cn.prepareStatement(sql);
		// gan
		cmd.setString(1, mh);
		// Thực thi
		ResultSet rs = cmd.executeQuery();
		if (rs.next() == false)
			return 1;
		else return 0;
	}
}
