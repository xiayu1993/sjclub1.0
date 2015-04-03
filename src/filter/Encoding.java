package filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;

/**
 * 字符编码转换
 * 
 * Servlet Filter implementation class Encoding
 */

/* 字符编码转换为utf-8 */
@WebFilter(filterName = "/Encoding"
		 , urlPatterns = {"/*"}
		 , initParams = {
		@WebInitParam(name = "encoding", value = "utf-8")
})
public class Encoding implements Filter {

    /**
     * Default constructor. 
     */
	
	//字符编码（从参数表中获取）
	protected String encoding = null;
	//FilterConfig对象
	protected FilterConfig fConfig = null;
	
    public Encoding() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		//置空
		this.encoding = null;
		this.fConfig = null;
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here
		//判断字符编码是否有效
		if(encoding != null){
			//设置request的字符编码
			request.setCharacterEncoding(encoding);
			//设置response的类型
			response.setContentType("text/html;charset="+encoding);
		}
		// pass the request along the filter chain
		chain.doFilter(request, response);
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
		//初始化时从参数表中获取参数
		this.fConfig = fConfig;
		this.encoding = fConfig.getInitParameter("encoding");
	}

}
