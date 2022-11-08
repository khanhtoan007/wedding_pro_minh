package Filter;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;
import java.io.IOException;
import java.util.Enumeration;

@WebFilter(filterName = "Auth")
public class Auth implements Filter {
    public void init(FilterConfig config) throws ServletException {
    }

    public void destroy() {
    }



//    private static final boolean debug = true;
//    private final String loginPage = "login.jsp";
//    private final FilterConfig filterConfig = null;
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        chain.doFilter(request, response);
//        HttpServletRequest req = (HttpServletRequest) request;
//        String uri = req.getRequestURI();
//        String url = loginPage;
//
//        try {
//            int lastIndex = uri.lastIndexOf("/");
//            String resource = uri.substring(lastIndex + 1);
//            if (resource.length() > 0){
//                url = resource.substring(0,1).toUpperCase()
//                        + resource.substring(1)
//                        +"Servlet";
//                if(resource.lastIndexOf(".jsp")>0){
//                    url=resource;
//                }
//            }
//
//            if(url != null){
//                RequestDispatcher rd = req.getRequestDispatcher(url);
//                rd.forward(request, response);
//            } else {
//                chain.doFilter(request,response);
//            }
//        } catch (Throwable t){
//            t.printStackTrace();
//        }

    }
}
