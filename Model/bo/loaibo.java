package bo;

import java.util.ArrayList;
import bean.loaibean;
import dao.loaidao;

public class loaibo {
	loaidao ldao = new loaidao();

	public ArrayList<loaibean> getloai() throws Exception {
		return ldao.getloai();
	}
	public loaibean TimMaloai(String maloai) throws Exception {
		ArrayList<loaibean> ds = getloai();
		for (loaibean s : ds)
			if (s.getMaloai().equals(maloai))
				return s;
		return null;
	}
	public int them(String ml,String tl,String anh)throws Exception {
		return ldao.insertloai(ml,tl,anh);
	}
	public int sua(String ml,String tl,String anh)throws Exception {
		return ldao.updateloai(ml,tl,anh);
	}
	public int sua2(String ml,String tl)throws Exception {
		return ldao.updateloai2(ml,tl);
	}
	public int xoa(String ml)throws Exception {
		return ldao.deleteloai(ml);
	}
	public int kttrung(String ml) throws Exception {
		return ldao.kttrung(ml);
	}
	public ArrayList<loaibean> Timloai(String key) throws Exception {

		return ldao.findOrderByKeyword(key);
	}
}
