package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.dangnhapbean;
import bo.dangnhapbo;

/**
 * Servlet implementation class quanlytaikhoan
 */
@WebServlet("/quanlytaikhoan")
public class quanlytaikhoan extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quanlytaikhoan() {
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
		    dangnhapbo lb = new dangnhapbo();
			String tendn = request.getParameter("tendn");
			String matkhau = request.getParameter("matkhau");
			String quyen = request.getParameter("quyen");
			boolean q=Boolean.parseBoolean(quyen);
			String add = request.getParameter("them");
			if(tendn!=null && matkhau!=null){
				// cap nhat
				dangnhapbean dnbean = new dangnhapbean(tendn,matkhau,q);
				request.setAttribute("dangnhapct", dnbean);
				RequestDispatcher rd= request.getRequestDispatcher("themsuataikhoan.jsp");
				rd.forward(request, response);  
			}else if(add!=null) {
				RequestDispatcher rd= request.getRequestDispatcher("themsuataikhoan.jsp");
				rd.forward(request, response);  
			}
			else {
				ArrayList<dangnhapbean> danhsach = lb.getdangnhap();
				request.setAttribute("danhsach", danhsach);
				RequestDispatcher rd= request.getRequestDispatcher("quanlytaikhoan.jsp");
				rd.forward(request, response);  
			}
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
