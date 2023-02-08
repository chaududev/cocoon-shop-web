package bean;

import java.sql.Date;

public class hoadonbean {
	private String mahoadon;
	private Date ngaymua;
	private Long tinhtrang;
	private String sdt;
	private String hoten;
	private String diachi;
	public hoadonbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public hoadonbean(String mahoadon, Date ngaymua, Long tinhtrang, String sdt, String hoten, String diachi) {
		super();
		this.mahoadon = mahoadon;
		this.ngaymua = ngaymua;
		this.tinhtrang = tinhtrang;
		this.sdt = sdt;
		this.hoten = hoten;
		this.diachi = diachi;
	}
	public String getMahoadon() {
		return mahoadon;
	}
	public void setMahoadon(String mahoadon) {
		this.mahoadon = mahoadon;
	}
	public Date getNgaymua() {
		return ngaymua;
	}
	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
	}
	public Long getTinhtrang() {
		return tinhtrang;
	}
	public void setTinhtrang(Long tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getHoten() {
		return hoten;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	
}
