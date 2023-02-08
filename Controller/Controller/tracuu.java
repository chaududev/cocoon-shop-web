package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.cthdbean;
import bean.hoadonbean;
import bean.loaibean;
import bo.cthdbo;
import bo.hoadonbo;
import bo.loaibo;

/**
 * Servlet implementation class tracuu
 */
@WebServlet("/tracuu")
public class tracuu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tracuu() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String sdt=request.getParameter("phone");
			
			loaibo loai= new loaibo();
			ArrayList<loaibean> dsloai=loai.getloai();
			request.setAttribute("dsloai", dsloai);
			
			if (sdt!=null) {
		  	
			  	hoadonbo hd= new hoadonbo();
				ArrayList<hoadonbean> dshd=hd.gethd(sdt);
				request.setAttribute("dshd", dshd);
				request.setAttribute("sdt", sdt);
				
				cthdbo cthd= new cthdbo();
				ArrayList<cthdbean> dscthd=cthd.getcthd();
				request.setAttribute("dscthd", dscthd);
			}
			  RequestDispatcher rd= request.getRequestDispatcher("tracuu.jsp");
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
