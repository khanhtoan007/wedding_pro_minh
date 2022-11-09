package control;

import dao.admin.AccountDAO;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ChangePasswordServlet", value = "/change")
public class ChangePasswordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("changePassword.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String hash = request.getParameter("hash");
        String password = request.getParameter("password");
        boolean check = new AccountDAO().changePassword(hash,password);
            if (check){
                request.setAttribute("message", "<div class=\"alert alert-success\" role=\"alert\">Đổi mật khẩu thành công.</div>");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            } else {
                request.setAttribute("message", "<div class=\"alert alert-danger\" role=\"alert\">Có lỗi xảy ra.</div>");
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }
    }
}
