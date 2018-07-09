package com.car.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import java.io.IOException;

@WebFilter(value = "/*", initParams = {
        @WebInitParam(name = "encode", value = "utf-8")

})
public class CharacterEncodingFilter implements Filter {

    private String encode = "utf-8";

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.encode = filterConfig.getInitParameter("encode");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        servletRequest.setCharacterEncoding(this.encode);
        servletResponse.setCharacterEncoding(this.encode);
        filterChain.doFilter(servletRequest, servletResponse);

    }

    @Override
    public void destroy() {

    }
}
