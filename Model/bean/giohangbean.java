package bean;

public class giohangbean {
	private String mahang;
	private String tenhang;
	private String dungtich;
	private Long gia;
	private Long slmua;
	private Long thanhtien;
	private String anh;
	public giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public giohangbean(String mahang, String tenhang, String dungtich, Long gia, Long slmua, String anh) {
		super();
		this.mahang = mahang;
		this.tenhang = tenhang;
		this.dungtich = dungtich;
		this.gia = gia;
		this.slmua = slmua;
		this.anh = anh;
		this.thanhtien=gia*slmua;
	}
	public String getMahang() {
		return mahang;
	}
	public void setMahang(String mahang) {
		this.mahang = mahang;
	}
	public String getTenhang() {
		return tenhang;
	}
	public void setTenhang(String tenhang) {
		this.tenhang = tenhang;
	}
	public String getDungtich() {
		return dungtich;
	}
	public void setDungtich(String dungtich) {
		this.dungtich = dungtich;
	}
	public Long getGia() {
		return gia;
	}
	public void setGia(Long gia) {
		this.gia = gia;
	}
	public Long getSlmua() {
		return slmua;
	}
	public void setSlmua(Long slmua) {
		this.slmua = slmua;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public Long getThanhtien() {
		return slmua*gia;
	}
	public void setThanhtien(Long thanhtien) {
		this.thanhtien = thanhtien;
	}
}
