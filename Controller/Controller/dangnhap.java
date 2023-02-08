package Controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.dangnhapbean;
import bo.dangnhapbo;
import dao.TestMD5;

/**
 * Servlet implementation class dangnhap
 */
@WebServlet("/dangnhap")
public class dangnhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhap() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
        	String un=request.getParameter("txtun");
        	String pass=request.getParameter("txtpass");
        	String pass2=pass;
        	TestMD5 md5 = new TestMD5();

            try {
    			pass2=md5.convertHashToString(pass);
    		    
    		} catch (NoSuchAlgorithmException e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
        	dangnhapbo dnbo=new dangnhapbo();
		    dangnhapbean dn= dnbo.ktd(un, pass2);
        	if (un==null)
        	{
	     		 RequestDispatcher rd= request.getRequestDispatcher("dangnhap.jsp");
	     		 rd.forward(request, response);  
        	}
        	
        	else 
        		if (dn!=null) {
        			session.setAttribute("dn",dn);
        			session.setAttribute("un",un);
        			response.sendRedirect("quanlyloai");
        		}
        		else {
        			 request.setAttribute("tb", "Tài khoản hoặc mật khẩu không đúng");
		     		 RequestDispatcher rd= request.getRequestDispatcher("dangnhap.jsp");
		     		 rd.forward(request, response);  
        		}
        } catch(Exception tt){
        	tt.printStackTrace(); 
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
