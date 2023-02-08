package bo;

import java.util.ArrayList;

import bean.cthdbean;
import dao.cthddao;

public class cthdbo {
	cthddao ctdao = new cthddao();

	public ArrayList<cthdbean> getcthd() throws Exception {
		return ctdao.getcthd();
	}
	public ArrayList<cthdbean> getcthd2(String mahd) throws Exception {
		return ctdao.getcthd2(mahd);
	}
	public void addc(String mh, Long slm, String mahd) throws Exception{
		ctdao.addcthd(mh, slm, mahd);
	}
}
