package bean;

public class loaibean {
	private String maloai;
	private String tenloai;
	private String anh;
	private String anhbanner;
	public loaibean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public loaibean(String maloai, String tenloai, String anh, String anhbanner) {
		super();
		this.maloai = maloai;
		this.tenloai = tenloai;
		this.anh = anh;
		this.anhbanner = anhbanner;
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getTenloai() {
		return tenloai;
	}
	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getAnhbanner() {
		return anhbanner;
	}
	public void setAnhbanner(String anhbanner) {
		this.anhbanner = anhbanner;
	}
	
}
