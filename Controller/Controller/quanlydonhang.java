package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.hoadonbean;
import bo.hoadonbo;

/**
 * Servlet implementation class quanlydonhang
 */
@WebServlet("/quanlydonhang")
public class quanlydonhang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public quanlydonhang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
				hoadonbo hd=new hoadonbo();
				ArrayList<hoadonbean> ds = hd.gethd2();
				String key=request.getParameter("key");
				if(key!=null) ds=hd.gethd(key);
				request.setAttribute("ds", ds);
				RequestDispatcher rd= request.getRequestDispatcher("quanlydonhang.jsp");
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
