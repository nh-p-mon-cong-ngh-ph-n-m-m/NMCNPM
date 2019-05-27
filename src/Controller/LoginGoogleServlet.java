package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import accessgoogle.GooglePojo;
import accessgoogle.GoogleUtils;

 
@WebServlet("/login-google")
public class LoginGoogleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginGoogleServlet() {
        super();
           }

		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			 
				HttpSession session = request.getSession();
				//5. Return code
			    String code = request.getParameter("code");
			    if (code == null || code.isEmpty()) {
			      RequestDispatcher dis = request.getRequestDispatcher("Login.jsp");
			      dis.forward(request, response);
			    } else {
			    //6.1 GetToken(code)
			    //6.3 Return accesstoken
			      String accessToken = GoogleUtils.getToken(code);
			    //6.6 Return userInfo
			    //7. Create account to login
			      GooglePojo googlePojo = GoogleUtils.getUserInfo(accessToken);
			      session.setAttribute("account", googlePojo);
			      String type = "google";
			      session.setAttribute("type", type);
			    //8. Result
			      RequestDispatcher dis = request.getRequestDispatcher("Result.jsp");
			      dis.forward(request, response);
			    }
			    
	}

	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.removeAttribute("account");
		session.invalidate();
		response.sendRedirect("Login.jsp");
	}

}
