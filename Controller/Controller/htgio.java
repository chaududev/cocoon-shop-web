package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.giohangbean;
import bean.loaibean;
import bo.giohangbo;
import bo.loaibo;

/**
 * Servlet implementation class htgio
 */
@WebServlet("/htgio")
public class htgio extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public htgio() {
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
			ArrayList<loaibean> dsloai = loai.getloai();
			request.setAttribute("dsloai", dsloai);
			HttpSession session = request.getSession();
			  	giohangbo gh1=(giohangbo)session.getAttribute("gh");
			  	if(gh1!=null){
			  		ArrayList<giohangbean> dsgh=gh1.ds;
			  		request.setAttribute("dsgh",dsgh);
			  	}
			  RequestDispatcher rd= request.getRequestDispatcher("gio.jsp");
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
