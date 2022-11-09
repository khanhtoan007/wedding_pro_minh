package function.login.google.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import function.login.google.common.GooglePojo;
import function.login.google.common.GoogleUtils;

@WebServlet("/login-google")
public class LoginGoogleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginGoogleServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String code = request.getParameter("code");
		GoogleUtils googleUtils = new GoogleUtils();
		if (code == null || code.isEmpty()) {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		} else {
			String accessToken = GoogleUtils.getToken(code);
			GooglePojo list = googleUtils.getUserInfo(accessToken);
			request.setAttribute("id", list.getId());
			request.setAttribute("name", list.getName());
			request.setAttribute("email", list.getEmail());
			RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
			dis.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
