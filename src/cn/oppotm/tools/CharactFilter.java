package cn.oppotm.tools;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

public class CharactFilter implements Filter {
	private String encode="" ;

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		HttpServletRequest request=(HttpServletRequest) arg0;
        HttpServletResponse response=(HttpServletResponse) arg1;
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");
        arg2.doFilter(new CharacterEncodingRequest(request), arg1);
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		String encoding=arg0.getInitParameter("encoding");
		if(encoding!=null){
			this.encode=encoding;
		}
		
	}
	class CharacterEncodingRequest extends HttpServletRequestWrapper{
		private HttpServletRequest request;
		public CharacterEncodingRequest(HttpServletRequest request) {
			super(request);
			this.request=request;
		}
		@Override
		public String getParameter(String name) {
			String value=super.getParameter(name);
			if(value==null){
				return null;
			}
			String method=request.getMethod();
			if("get".equalsIgnoreCase(method)){
				try {
					value=new String(value.getBytes(),encode);
				} catch (UnsupportedEncodingException e) {
					e.printStackTrace();
				}
			}
			return value;
		}
	}

}
