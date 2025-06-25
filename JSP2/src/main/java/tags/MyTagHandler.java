package tags;

import java.util.*;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;



public class MyTagHandler extends TagSupport {

	@Override
	public int doStartTag() throws JspException {
	  try {
		  // task of the tag
		  //this is not a jsp page so we need to take an instance of Writer, here we take it from JspWriter instead of PrintWriter
		  JspWriter out = pageContext.getOut(); //to print anything on browser
		  out.println("<h1>this is my custom tag</h1>");
		  out.println("<p>This is a custom paragraph</p1>");
		  out.println("<br>");
		  out.println(new Date().toString());
		  
		  
		  
		
	} catch (Exception e) {
		e.printStackTrace();
	}
		
		return SKIP_BODY; //that means we want to skip the body of the tag
	}
	

}
