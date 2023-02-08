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
 * Servlet implementation class gioithieu
 */
@WebServlet("/gioithieu")
public class gioithieu extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public gioithieu() {
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
			loaibo loai = new loaibo();
			hangbo sbo = new hangbo();
			loaibean timloai=null;
			ArrayList<hangbean> dshang = sbo.gethang();
			ArrayList<loaibean> dsloai = loai.getloai();
			String ml = request.getParameter("ml");
			String key = request.getParameter("key");
			if (ml != null) {
				dshang = sbo.TimMaloai(ml);
				timloai=loai.TimMaloai(ml);
			}
			else if (key != null)
				dshang = sbo.Tim(key);
			request.setAttribute("dsloai", dsloai);
			request.setAttribute("dshang", dshang);
			request.setAttribute("timloai", timloai);
			RequestDispatcher rd = request.getRequestDispatcher("gioithieu.jsp");
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
