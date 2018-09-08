package com.ssh.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;


public class TomcatFormFilter implements Filter{
    //接收字符编码
    protected String encoding;
   
    public TomcatFormFilter(){}
   
    public void init(FilterConfig filterConfig) throws ServletException {
        //从web.xml中读取encoding值
        encoding = filterConfig.getInitParameter("encoding");
    }
   
    public void doFilter(ServletRequest request, ServletResponse response,
            FilterChain chain) throws IOException, ServletException {
        if(request.getCharacterEncoding() == null && encoding != null){
            //设置字符集
            request.setCharacterEncoding(encoding);
        }
        //继续执行
        chain.doFilter(request, response);
    }
   
    public void destroy() {}

}