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
import bean.loaibean;
import bo.hangbo;
import bo.loaibo;

/**
 * Servlet implementation class chitietsanpham
 */
@WebServlet("/chitietsanpham")
public class chitietsanpham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chitietsanpham() {
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
			hangbean timhang=null;
			loaibo loai = new loaibo();
			ArrayList<loaibean> dsloai = loai.getloai();
			request.setAttribute("dsloai", dsloai);
			String mh = request.getParameter("mh");
			hangbo sbo = new hangbo();
			if (mh != null) {
				timhang=sbo.TimMahang(mh);
			}
			request.setAttribute("timhang", timhang);
			RequestDispatcher rd = request.getRequestDispatcher("chitietsanpham.jsp");
			rd.forward(request, response);
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
