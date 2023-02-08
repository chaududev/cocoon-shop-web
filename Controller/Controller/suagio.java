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
 * Servlet implementation class suagio
 */
@WebServlet("/suagio")
public class suagio extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public suagio() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mh=request.getParameter("mh");
		String sl=request.getParameter("txtsl");
		HttpSession session = request.getSession();
		if(mh!=null){
			giohangbo gh=(giohangbo)session.getAttribute("gh");
		    if(request.getParameter("butxoa")!=null)
				gh.Xoa(mh);
		    if(request.getParameter("butsua")!=null){
		    	if (Long.parseLong(sl)<=0) gh.Xoa(mh);
		    	else
		    	gh.Sua(mh, "", "", (long)0, Long.parseLong(sl),"");
		    }
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
