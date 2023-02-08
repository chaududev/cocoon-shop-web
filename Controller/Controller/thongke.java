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
 * Servlet implementation class thongke
 */
@WebServlet("/thongke")
public class thongke extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public thongke() {
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
			String day = request.getParameter("day");
			request.setAttribute("date", day);
			if (day!=null) {
				String thang=day.substring(5);
				String nam=day.substring(0,4);
				Long t = Long.valueOf(thang);
				Long n= Long.valueOf(nam);
				hangbo hang=new hangbo();
				ArrayList<hangbean> dsct = hang.gethang2(t,n);
				request.setAttribute("dsct", dsct);
			}
			RequestDispatcher rd= request.getRequestDispatcher("thongke.jsp");
			rd.forward(request, response);
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
