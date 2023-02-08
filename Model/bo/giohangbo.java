package bo;

import java.util.ArrayList;

import bean.giohangbean;

public class giohangbo {
	public ArrayList<giohangbean> ds= new ArrayList<giohangbean>();
    public void Them(String mahang, String tenhang, String dungtich, Long gia, Long slmua,String anh) {
    	for(giohangbean g:ds) {
    		if(g.getMahang().equals(mahang)) {
    			g.setSlmua(g.getSlmua()+slmua);
    			return;
    		}
    	}
    	ds.add(new giohangbean(mahang, tenhang, dungtich, gia,slmua,anh));
    }
    public void Sua(String mahang, String tenhang, String dungtich, Long gia, Long slmua,String anh) {
    	for(giohangbean g:ds) {
    		if(g.getMahang().equals(mahang)) {
    			g.setSlmua(slmua);
    			return;
    		}
    	}
    	ds.add(new giohangbean(mahang, tenhang, dungtich, gia,slmua,anh));
    }
    public void Xoa(String mahang) {
    	for(giohangbean g:ds) {
    		if(g.getMahang().equals(mahang)) {
    			ds.remove(g);
    			return;
    		}
    }
    }
    public void Xoahet() {
    	for(giohangbean g:ds) {
    			ds.remove(g);
    		}
    }
    public Long Tongtien() {
    	long s=0;
    	for(giohangbean g:ds) 
    		s=s+g.getThanhtien();
    	return s;
    }
}
