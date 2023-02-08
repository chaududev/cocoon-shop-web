package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.hangbean;
import bo.hangbo;

/**
 * Servlet implementation class quanlyhanghoa
 */
@WebServlet("/quanlyhanghoa")
public class quanlyhanghoa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quanlyhanghoa() {
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
		    hangbo hb=new hangbo();
		    String mahang = request.getParameter("mahang");
			String tenhang = request.getParameter("tenhang");
			String anh= request.getParameter("anh");
			String soluong = request.getParameter("soluong");
			Long sl = Long.valueOf(soluong);
			String gia = request.getParameter("gia");
			Long g=Long.valueOf(gia);
			String mota= request.getParameter("mota");
			String maloai= request.getParameter("maloai");
			String thanhphan = request.getParameter("thanhphan");
			String hdsd = request.getParameter("hdsd");
			String congdung= request.getParameter("congdung");
			String dungtich= request.getParameter("dungtich");
			
			String add = request.getParameter("them2");
			if(mahang!=null && tenhang!=null && soluong!=null && gia!=null  && mota!=null && maloai!=null && thanhphan!=null && hdsd!=null && congdung!=null && dungtich!=null){
				// cap nhat
				hangbean hbean = new hangbean(mahang,tenhang,sl,g,anh,maloai,mota,thanhphan, hdsd,congdung, dungtich);
				request.setAttribute("hang", hbean);
				RequestDispatcher rd= request.getRequestDispatcher("themsuahang.jsp");
				rd.forward(request, response);  
			}else if(add!=null) {
				RequestDispatcher rd= request.getRequestDispatcher("themsuahang.jsp");
				rd.forward(request, response);  
			}
			else 
			{
				ArrayList<hangbean> ds = hb.gethang();
				String key=request.getParameter("key");
				if(key!=null) ds=hb.Tim(key);
				request.setAttribute("ds", ds);
				RequestDispatcher rd= request.getRequestDispatcher("quanlyhang.jsp");
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
