package com.filters;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class UserLogin implements Filter {

    public UserLogin() {
    }

	
	public void destroy() {
		System.out.println("user filter destroyed called");
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		HttpSession session = req.getSession();
		if(session.getAttribute("role")==null){
			response.getWriter().print("<script>alert('you must login first.!');</script>");
			request.getRequestDispatcher("userLogin.jsp").include(req, response);
		}
		else {
			chain.doFilter(req, response);
		}
		//chain.doFilter(request, response);
	}
	
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("user filter init called");
	}

}
