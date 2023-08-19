package hbg.action;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import KISA.SHA256;
import hbg.dao.UserDAO;
import sun.misc.BASE64Encoder;

public class DeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		
		HttpSession session = request.getSession();
		String user_email = session.getAttribute("user_email").toString();
		String user_pass = request.getParameter("user_pass");
		String user_image = session.getAttribute("user_image").toString();
		UserDAO dao = UserDAO.getInstance();
		String jdbcDriver = "jdbc:apache:commons:dbcp:oracledb";
		Connection conn = null;

		try {
			conn = DriverManager.getConnection(jdbcDriver);
			System.out.println("CONNECTION : " + conn);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (Exception e) {

			}
		}
		SHA256 sha = new SHA256(user_pass.getBytes()); 
		BASE64Encoder base64Encoder = new BASE64Encoder(); 
		String tmpPw= base64Encoder.encode(sha.GetHashCode()); 
		  	
	        String uploadFileName = request.getRealPath("/upload") +"/"+ user_image;
	        File uploadfile = new File (uploadFileName);
	       
		int row = 0;
		row = dao.Delete(user_email, tmpPw);
		
		if (row == 1) {
			 if ( uploadfile.exists()&& uploadfile.isFile() )
		        {
		             uploadfile.delete();       // 파일삭제
		        }
			request.getSession().invalidate();
			forward.setRedirect(true);
			forward.setNextPath("hbg?command=index.go");
		}
		
		else {
			request.setAttribute("row", row);
			forward.setRedirect(false);
			forward.setNextPath("hbg?command=mypage.go");
		}
		return forward;
	}

}
