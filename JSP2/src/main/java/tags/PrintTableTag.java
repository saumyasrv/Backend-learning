package tags;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class PrintTableTag extends TagSupport {

	//this class is a custom tag handler class
	
	public int number;
	public String color;
	//setter
	public void setNumber(int number) {
		this.number = number;
	}
	//setter 
	public void setcolor(String color) {
		this.color=color;
	}

	@Override
	public int doStartTag() throws JspException {
		//print table:
		try {
		JspWriter out = pageContext.getOut();
		
		out.println("<div style='color: " + color + "' >");
		out.print("<br>");
		for(int i = 1; i<=10; i++) {
			out.println((i*number)+ "<br>");
		}
		 out.println("</div>");
		
		 
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SKIP_BODY;
	}

}
