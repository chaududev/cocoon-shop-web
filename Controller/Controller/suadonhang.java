package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.hoadonbo;

/**
 * Servlet implementation class suadonhang
 */
@WebServlet("/suadonhang")
public class suadonhang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suadonhang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String madon=request.getParameter("madon");
		String tinhtrang=request.getParameter("tinhtrang");
		HttpSession session = request.getSession();
		Long tt = Long.valueOf(tinhtrang);
		try {
		if(madon!=null){
			hoadonbo hd=new hoadonbo();
		    if(request.getParameter("cxn")!=null) {
		    	if (tt<4)
				hd.updatehd(madon, tt+1);
		    	session.setAttribute("tb", "Update thành công ");
		    	response.sendRedirect("quanlydonhang");
		    }
		    else if(request.getParameter("kg")!=null) {
		    	long a=5;
				hd.updatehd(madon,a);
		    	session.setAttribute("tb", "Update thành công ");
		    	response.sendRedirect("quanlydonhang");
		    }
		    if(request.getParameter("huy")!=null) {
		    	long b=0;
				hd.updatehd(madon,b);
		    	session.setAttribute("tb", "Update thành công ");
		    	response.sendRedirect("quanlydonhang");
		    }
		}
		} catch (Exception e) {
			// TODO Auto-generated catch block
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
