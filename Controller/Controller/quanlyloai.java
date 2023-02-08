package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.loaibean;
import bo.loaibo;

/**
 * Servlet implementation class quanlyloai
 */
@WebServlet("/quanlyloai")
public class quanlyloai extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quanlyloai() {
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
		    loaibo lb = new loaibo();
			String maloai = request.getParameter("maloai");
			String tenloai = request.getParameter("tenloai");
			String anhbanner = request.getParameter("anhbanner");
			String add = request.getParameter("them");
			if(maloai!=null && tenloai!=null){
				// cap nhat
				loaibean lbean = new loaibean(maloai, tenloai,null,anhbanner);
				request.setAttribute("loai", lbean);
				RequestDispatcher rd= request.getRequestDispatcher("themsualoai.jsp");
				rd.forward(request, response);  
			}else if(add!=null) {
				RequestDispatcher rd= request.getRequestDispatcher("themsualoai.jsp");
				rd.forward(request, response);  
			}
			else {
				ArrayList<loaibean> danhsach = lb.getloai();
				String key=request.getParameter("key");
				if(key!=null) danhsach=lb.Timloai(key);
				request.setAttribute("danhsach", danhsach);
				RequestDispatcher rd= request.getRequestDispatcher("quanlyloai.jsp");
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
