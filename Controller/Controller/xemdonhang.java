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
import bo.cthdbo;

/**
 * Servlet implementation class xemdonhang
 */
@WebServlet("/xemdonhang")
public class xemdonhang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xemdonhang() {
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
		String ms = request.getParameter("ms");
		if (ms!=null) {
			cthdbo cthd=new cthdbo();
			ArrayList<cthdbean> dsct = cthd.getcthd2(ms);
			request.setAttribute("dsct", dsct);
			request.setAttribute("ms", ms);
			RequestDispatcher rd= request.getRequestDispatcher("xemdonhang.jsp");
			rd.forward(request, response);
		}
		}
		catch (Exception e) {
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
