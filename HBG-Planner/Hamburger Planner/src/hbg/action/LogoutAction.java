package hbg.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LogoutAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		 ActionForward forward = new ActionForward();
	        
	        // 로그?��?��?�� ?��?��?��보�?? 모두 ?��?��?��?��.
	        request.getSession().invalidate();
	        
	        // 로그?��?�� ?�� 로그?��창으�? ?��?��간다.
	        forward.setRedirect(true);
	        forward.setNextPath("hbg?command=login.go");
	        
	        return forward;
	}

}
