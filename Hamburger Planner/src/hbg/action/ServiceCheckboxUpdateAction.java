package hbg.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hbg.dao.BoardDAO;
import hbg.vo.BoardVO;

public class ServiceCheckboxUpdateAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=UTF-8");
		
		BoardDAO dao = BoardDAO.getInstance();
		
		HttpSession session = request.getSession();		
		String user = (String) session.getAttribute("user_email");

		int user_no = dao.userNo(user);
		int board_no = Integer.parseInt(request.getParameter("board_no"));
		int checkbox_no = Integer.parseInt(request.getParameter("checkbox_no"));
		int checkbox_checked = Integer.parseInt(request.getParameter("checkbox_checked"));
		
		try {
			dao.setUpdateCheckbox(user_no, board_no, checkbox_no, checkbox_checked);
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		PrintWriter out = response.getWriter();
		out.print(1);
		
		return null;

	}

}