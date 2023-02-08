package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.cthdbean;
import bean.giohangbean;
import bean.hoadonbean;
import bean.loaibean;
import bo.cthdbo;
import bo.giohangbo;
import bo.hoadonbo;
import bo.loaibo;

/**
 * Servlet implementation class dathang
 */
@WebServlet("/dathang")
public class dathang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dathang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			
			loaibo loai= new loaibo();
			ArrayList<loaibean> dsloai=loai.getloai();
			request.setAttribute("dsloai", dsloai);
			
			String hoten=request.getParameter("name");
		    String sdt=request.getParameter("phone");
		    String dc=request.getParameter("address");
		    String tinh=request.getParameter("calc_shipping_provinces");
		    String quan=request.getParameter("calc_shipping_district");
		    
		    if (tinh.equals("1")) tinh="An Giang";
		    else if (tinh.equals("2")) tinh="Bà Rịa-Vũng Tàu";
		    else if (tinh.equals("3")) tinh="Bạc Liêu";
		    else if (tinh.equals("4")) tinh="Bắc Kạn";
		    else if (tinh.equals("5")) tinh="Bắc Giang";
		    else if (tinh.equals("6")) tinh="Bắc Ninh";
		    else if (tinh.equals("7")) tinh="Bến Tre";
		    else if (tinh.equals("8")) tinh="Bình Dương";
		    else if (tinh.equals("9")) tinh="Bình Định";
		    else if (tinh.equals("10")) tinh="Bình Phước";
		    else if (tinh.equals("11")) tinh="Bình Thuận";
		    else if (tinh.equals("12")) tinh="Cà Mau";
		    else if (tinh.equals("13")) tinh="Cao Bằng";
		    else if (tinh.equals("14")) tinh="Cần Thơ";
		    else if (tinh.equals("15")) tinh="Đà Nẵng";
		    else if (tinh.equals("16")) tinh="Đắk Lắk";
		    else if (tinh.equals("17")) tinh="Đắk Nông";
		    else if (tinh.equals("18")) tinh="Đồng Nai";
		    else if (tinh.equals("19")) tinh="Đồng Tháp";
		    else if (tinh.equals("20")) tinh="Điện Biên";
		    else if (tinh.equals("21")) tinh="Gia Lai";
		    else if (tinh.equals("22")) tinh="Hà Giang";
		    else if (tinh.equals("23")) tinh="Hà Nam";
		    else if (tinh.equals("24")) tinh="Hà Nội";
		    else if (tinh.equals("25")) tinh="Hà Tĩnh";
		    else if (tinh.equals("26")) tinh="Hải Dương";
		    else if (tinh.equals("27")) tinh="Hải Phòng";
		    else if (tinh.equals("28")) tinh="Hòa Bình";
		    else if (tinh.equals("29")) tinh="Hậu Giang";
		    else if (tinh.equals("30")) tinh="Hưng Yên";
		    else if (tinh.equals("31")) tinh="Thành phố Hồ Chí Minh";
		    else if (tinh.equals("32")) tinh="Khánh Hòa";
		    else if (tinh.equals("33")) tinh="Kiên Giang";
		    else if (tinh.equals("34")) tinh="Kon Tum";
		    else if (tinh.equals("35")) tinh="Lai Châu"; 
		    else if (tinh.equals("36")) tinh="Lào Cai";
		    else if (tinh.equals("37")) tinh="Lạng Sơn";
		    else if (tinh.equals("38")) tinh="Lâm Đồng";
		    else if (tinh.equals("39")) tinh="Long An";
		    else if (tinh.equals("40")) tinh="Nam Định";
		    else if (tinh.equals("41")) tinh="Nghệ An";
		    else if (tinh.equals("42")) tinh="Ninh Bình";
		    else if (tinh.equals("43")) tinh="Ninh Thuận";
		    else if (tinh.equals("44")) tinh="Phú Thọ";
		    else if (tinh.equals("45")) tinh="Phú Yên";
		    else if (tinh.equals("46")) tinh="Quảng Bình";
		    else if (tinh.equals("47")) tinh="Quảng Nam";
		    else if (tinh.equals("48")) tinh="Quảng Ngãi";
		    else if (tinh.equals("49")) tinh="Quảng Ninh";
		    else if (tinh.equals("50")) tinh="Quảng Trị";
		    else if (tinh.equals("51")) tinh="Sóc Trăng";
		    else if (tinh.equals("52")) tinh="Sơn La";
		    else if (tinh.equals("53")) tinh="Tây Ninh";
		    else if (tinh.equals("54")) tinh="Thái Bình";
		    else if (tinh.equals("55")) tinh="Thái Nguyên";
		    else if (tinh.equals("56")) tinh="Thanh Hóa";
		    else if (tinh.equals("57")) tinh="Thừa Thiên - Huế";
		    else if (tinh.equals("58")) tinh="Tiền Giang";
		    else if (tinh.equals("59")) tinh="Trà Vinh";
		    else if (tinh.equals("60")) tinh="Tuyên Quang";
		    else if (tinh.equals("61")) tinh="Vĩnh Long";
		    else if (tinh.equals("62")) tinh="Vĩnh Phúc";
		    else if (tinh.equals("63")) tinh="Yên Bái";
		    
		    String diachi=dc+", "+quan+", "+tinh;
		    
		    if (hoten.equals("") || sdt.equals("") || dc.equals("") || tinh.equals("") || quan.equals("")) {
		    	session.setAttribute("kq", "Thông tin cần điền trống!");
		    	response.sendRedirect("thanhtoan");
		    }
		    else {
		    
		  	hoadonbo hd=new hoadonbo();
		  	cthdbo cthd= new cthdbo();
		  	ArrayList<hoadonbean> dshd;
		  	ArrayList<cthdbean> dscthd;
		  	
		  	giohangbo gh1=(giohangbo)session.getAttribute("gh");
		  	
		  	if(gh1!=null){
		  		ArrayList<giohangbean> dsgh=gh1.ds;
		  		String m=hd.addh(sdt,hoten,diachi);
		  		if (dsgh!=null)
					for(giohangbean g: dsgh){
						cthd.addc(g.getMahang(),g.getSlmua(),m);
					}
				request.setAttribute("dsgh",dsgh);
		  	
		  	}
			
			
			dshd=hd.gethd(sdt);
			request.setAttribute("dshd", dshd);
			
			
			dscthd=cthd.getcthd();
			request.setAttribute("dscthd", dscthd);
			
			session.setAttribute("gh",null);
		    }
			  RequestDispatcher rd= request.getRequestDispatcher("dathang.jsp");
			  rd.forward(request, response);
		}	catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
