package Controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.dangnhapbo;
import dao.TestMD5;

/**
 * Servlet implementation class xulitaikhoan
 */
@WebServlet("/xulitaikhoan")
public class xulitaikhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xulitaikhoan() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();
			dangnhapbo lbo = new dangnhapbo();

			String msxoa = request.getParameter("msxoa");
			if(msxoa!=null) {
				int check = lbo.xoa(msxoa);
					session.setAttribute("tb", "xóa thành công");
					response.sendRedirect("quanlytaikhoan");  
				
			}
			else {
				String tendn = request.getParameter("tendn");
				String id=request.getParameter("id");
				String matkhau = request.getParameter("matkhau");
				String quyen = request.getParameter("quyen");
				Boolean q=false;
				if (quyen.equals("1")) q=true;
			
			    if(id==null || id.equals("")) {
				 if (tendn.equals("") || matkhau.equals("")) {
		    		 session.setAttribute("tb", "Thông tin cần điền trống ");
					 response.sendRedirect("quanlytaikhoan");
		    	 }
				 else if (lbo.kttrung(tendn)==0) {
		    		 session.setAttribute("tb", "Trùng tên đăng nhập ");
					 response.sendRedirect("quanlytaikhoan");
		    	 }
				 else {
					 	String pass2=matkhau;
					 	TestMD5 md5 = new TestMD5();

			            try {
			    			pass2=md5.convertHashToString(matkhau);
			    		    
			    		} catch (NoSuchAlgorithmException e) {
			    			// TODO Auto-generated catch block
			    			e.printStackTrace();
			    		}
						int check = lbo.them(tendn, pass2,q);
						session.setAttribute("tb", "thêm thành công");
						response.sendRedirect("quanlytaikhoan"); 
						}
			}
			else  {
				if (matkhau.equals("")) {
		     		session.setAttribute("tb", "Thông tin cần điền trống ");
					 response.sendRedirect("quanlytaikhoan");
		    	 }
		     	else {
		     		String pass2=matkhau;
				 	TestMD5 md5 = new TestMD5();

		            try {
		    			pass2=md5.convertHashToString(matkhau);
		    		    
		    		} catch (NoSuchAlgorithmException e) {
		    			// TODO Auto-generated catch block
		    			e.printStackTrace();
		    		}
		     		int update = lbo.sua(id,pass2,q);
		     		session.setAttribute("tb", "Cập nhật thành công ");
					 response.sendRedirect("quanlytaikhoan");
		     	 }
			}}
		} catch (Exception e) {
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
