package com.free4lab.babycheckup.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginFilter implements Filter {

    private String[] excludedMapping;

    public void init(FilterConfig config) throws ServletException {
        excludedMapping = config.getInitParameter("excluded-mapping").split(",");
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) resp;
        boolean isExcludedMapping = false;
        String servletPath = request.getServletPath();
        for(String url : excludedMapping) {
            if(servletPath.startsWith(url)) {
                isExcludedMapping = true;
                break;
            }
        }
        if(isExcludedMapping || request.getSession().getAttribute("userid") != null) {
            chain.doFilter(req, resp);
        } else {
            response.sendRedirect(request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/account/landing?id=");
        }
    }

    public void destroy() {
    }

}
