package bo;

import java.util.ArrayList;

import bean.hoadonbean;
import dao.hoadondao;

public class hoadonbo {
	hoadondao hdao = new hoadondao();

	public ArrayList<hoadonbean> gethd(String sdt) throws Exception {
		return hdao.gethd(sdt);
	}
	public ArrayList<hoadonbean> gethd2() throws Exception {
		return hdao.gethd2();
	}
	public String addh(String sdt,String hoten,String diachi) throws Exception {
		return(hdao.addhd(sdt,hoten,diachi));
	}
	public void updatehd(String mahd,Long tinhtrang) throws Exception{
		hdao.updatehd(mahd,tinhtrang);
	}

}
