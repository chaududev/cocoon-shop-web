package bo;

import java.util.ArrayList;

import bean.dangnhapbean;
import dao.dangnhapdao;

public class dangnhapbo {
	dangnhapdao dndao=new dangnhapdao();

	public ArrayList<dangnhapbean> getdangnhap() throws Exception {
		return dndao.getdangnhap();
	}
	public dangnhapbean ktd(String un, String matkhau) throws Exception {
		return dndao.ktd(un, matkhau);

	}
	public int kt(String un) throws Exception {
		return dndao.kttrung(un);
	}
	public int them(String un,String pass,Boolean q)throws Exception {
		return dndao.insertdangnhap(un,pass,q);
	}
	public int sua(String un,String pass,Boolean q)throws Exception {
		return dndao.updatedangnhap(un,pass,q);
	}
	public int xoa(String un)throws Exception {
		return dndao.deletedangnhap(un);
	}
	public int kttrung(String un) throws Exception {
		return dndao.kttrung(un);
	}

}
