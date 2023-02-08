package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.giohangbo;

/**
 * Servlet implementation class gio
 */
@WebServlet("/gio")
public class gio extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public gio() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		 String mahang=request.getParameter("mh");
		 String tenhang=request.getParameter("th");
		 String dungtich=request.getParameter("dungtich");
		 String giatam=request.getParameter("gia");
		 String anh=request.getParameter("anh");
		 if (mahang!=null) {
		  //Tao cho kh 1 giohang khi dat mua quyen sach dau tien
		  	giohangbo gh=null;
		  	if(session.getAttribute("gh")==null){
			  gh=new giohangbo();//cap phat vung nho
			  session.setAttribute("gh", gh);//tao ra 1 gio
		  	}
		  //b1: Gan session vao bien
		  gh=(giohangbo)session.getAttribute("gh");
		  if(mahang!=null) gh.Them(mahang, tenhang, dungtich, Long.parseLong(giatam), (long)1, anh);//b2
		  session.setAttribute("gh", gh);
		 }
	response.sendRedirect("htgio");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
