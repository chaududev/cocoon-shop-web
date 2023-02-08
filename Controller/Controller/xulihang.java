package Controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import bo.hangbo;

/**
 * Servlet implementation class xulihang
 */
@WebServlet("/xulihang")
public class xulihang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xulihang() {
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
		String msxoa = request.getParameter("msxoa");
		hangbo hbo = new hangbo();
		  int kt = 0;
		if(msxoa!=null) {
			try {
				int xoa = hbo.xoa(msxoa);
				if(xoa > 0 ) {
					 session.setAttribute("tb", "Xoá thành công ");
					 response.sendRedirect("quanlyhang");
				}
				else {
					 session.setAttribute("tb", "Xoá không thành công ");
					 response.sendRedirect("quanlyhang"); 
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
	   }else {	
		  String mahang=null,tenhang=null,anhupload=null,maloai2=null,mota=null,thanhphan=null,hdsd=null,congdung=null,dungtich=null,soluong=null,gia=null;
		  DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
		  ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
	
		try {
		 List<FileItem> fileItems = upload.parseRequest(request);
         for (FileItem fileItem : fileItems) {
 			 if (!fileItem.isFormField()) {//Nếu ko phải các control=>upfile lên
				String nameimg = fileItem.getName();
				if (!nameimg.equals("")) {
					String dirUrl = request.getServletContext().getRealPath("") +  "images";
					File dir = new File(dirUrl);
					if (!dir.exists()) {//nếu ko có thư mục thì tạo ra
						dir.mkdir();
					}
				           String fileImg = dirUrl + File.separator + nameimg;
				           File file = new File(fileImg);//tạo file
				            try {
				               fileItem.write(file);// ghi file
				               anhupload =  "images/"+nameimg;
				              System.out.println(anhupload);
				 } catch (Exception e) {
				    e.printStackTrace();
				}
			}
		 }
			else
			{
				String tentk=fileItem.getFieldName();
				if(tentk.equals("id")) {
					String c = fileItem.getString("UTF-8");
					if(!c.equals("")) {
						mahang = c;
				        kt=1;						
					}
				}
				if(tentk.equals("mahang")) mahang = fileItem.getString("UTF-8");
				if(tentk.equals("tenhang")) tenhang = fileItem.getString("UTF-8");
				if(tentk.equals("maloai2")) maloai2 = fileItem.getString("UTF-8");
				if(tentk.equals("mota")) mota = fileItem.getString("UTF-8");
				if(tentk.equals("thanhphan")) thanhphan = fileItem.getString("UTF-8");
				if(tentk.equals("hdsd")) hdsd = fileItem.getString("UTF-8");
				if(tentk.equals("congdung")) congdung = fileItem.getString("UTF-8");
				if(tentk.equals("dungtich")) dungtich = fileItem.getString("UTF-8");
				if(tentk.equals("soluong")) soluong = fileItem.getString("UTF-8");
				if(tentk.equals("gia")) gia = fileItem.getString("UTF-8");
			}
		}
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
//      Xử lí thêm hoặc sửa
		 try {
	       if(kt==0) { //thêm
	    	 if (mahang.equals("") || tenhang.equals("") || gia.equals("") || soluong.equals("")) {
	    		 session.setAttribute("tb", "Thông tin cần điền trống ");
				 response.sendRedirect("quanlyhang");
	    	 }
	    	 else if (hbo.kttrung(mahang)==0) {
	    		 session.setAttribute("tb", "Trùng mã hàng ");
				 response.sendRedirect("quanlyhang");
	    	 }
	    	 else {
	    		 Long sl = Long.valueOf(soluong);
	    		 Long g=Long.valueOf(gia);
	    		 	int c = hbo.them(mahang,tenhang,sl,g,anhupload,maloai2,mota,thanhphan,hdsd,congdung,dungtich);
	    		 	 session.setAttribute("tb", "Thêm hàng thành công ");
					 response.sendRedirect("quanlyhang");
		     }
	     }else { // sửa
	     	if (tenhang.equals("") || gia.equals("") || soluong.equals("")) {
	     		session.setAttribute("tb", "Thông tin cần điền trống ");
				 response.sendRedirect("quanlyhang");
	    	 }
	     	else {
	     		Long sl = Long.valueOf(soluong);
	    		 Long g=Long.valueOf(gia);
	     		int update = hbo.sua(mahang,tenhang,sl,g,anhupload,maloai2,mota,thanhphan,hdsd,congdung,dungtich);
	     		session.setAttribute("tb", "Cập nhật thành công ");
				 response.sendRedirect("quanlyhang");
	     	 }
	    }
		} catch (Exception e) {
			e.printStackTrace();
		}
		 
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
