package bo;

import java.util.ArrayList;

import bean.hangbean;
import dao.hangdao;

public class hangbo {
	hangdao sdao = new hangdao();

	public ArrayList<hangbean> gethang() throws Exception {
		return sdao.gethang();
	}
	public ArrayList<hangbean> gethang2(Long thang,Long nam) throws Exception {
		return sdao.gethang2(thang,nam);
	}
	public ArrayList<hangbean> TimMaloai(String maloai) throws Exception {
		ArrayList<hangbean> tam = new ArrayList<hangbean>();
		ArrayList<hangbean> ds = gethang();
		for (hangbean s : ds)
			if (s.getMaloai().equals(maloai))
				tam.add(s);
		return tam;
	}
	public hangbean TimMahang(String mahang) throws Exception {
		ArrayList<hangbean> ds = gethang();
		for (hangbean s : ds)
			if (s.getMahang().equals(mahang))
				return s;
		return null;
	}
	public ArrayList<hangbean> Tim(String key) throws Exception {
		ArrayList<hangbean> tam = new ArrayList<hangbean>();
		ArrayList<hangbean> ds = gethang();
		for (hangbean s : ds)
			if (s.getTenhang().toLowerCase().trim().contains(key.toLowerCase().trim())
					|| s.getMaloai().toLowerCase().trim().contains(key.toLowerCase().trim()))
				tam.add(s);
		return tam;
	}
	public int them(String mh,String th,Long sl,Long gia,String anh,String maloai,String mota,String thanhphan,String hdsd,String congdung,String dungtich)throws Exception {
			return sdao.inserthang(mh,th,sl,gia,anh,maloai,mota,thanhphan,hdsd,congdung,dungtich);
	}
		public int sua(String mh,String th,Long sl,Long gia,String anh,String maloai,String mota,String thanhphan,String hdsd,String congdung,String dungtich)throws Exception {
			return sdao.updatehang(mh,th,sl,gia,anh,maloai,mota,thanhphan,hdsd,congdung,dungtich);
		}
		public int xoa(String ml)throws Exception {
			return sdao.deletehang(ml);
		}
		public int kttrung(String ml) throws Exception {
			return sdao.kttrung(ml);
		}

}
