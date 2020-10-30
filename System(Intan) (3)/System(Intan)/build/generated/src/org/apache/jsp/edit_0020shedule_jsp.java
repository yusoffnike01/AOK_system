package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class edit_0020shedule_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       form class=\"text-center border border-light p-5\" action=\"#!\">\n");
      out.write("\n");
      out.write("    <p class=\"h4 mb-4\">Contact us</p>\n");
      out.write("\n");
      out.write("    <!-- Name -->\n");
      out.write("    <input type=\"text\" id=\"defaultContactFormName\" class=\"form-control mb-4\" placeholder=\"Name\">\n");
      out.write("\n");
      out.write("    <!-- Email -->\n");
      out.write("    <input type=\"email\" id=\"defaultContactFormEmail\" class=\"form-control mb-4\" placeholder=\"E-mail\">\n");
      out.write("\n");
      out.write("    <!-- Subject -->\n");
      out.write("    <label>Subject</label>\n");
      out.write("    <select class=\"browser-default custom-select mb-4\">\n");
      out.write("        <option value=\"\" disabled>Choose option</option>\n");
      out.write("        <option value=\"1\" selected>Feedback</option>\n");
      out.write("        <option value=\"2\">Report a bug</option>\n");
      out.write("        <option value=\"3\">Feature request</option>\n");
      out.write("        <option value=\"4\">Feature request</option>\n");
      out.write("    </select>\n");
      out.write("\n");
      out.write("    <!-- Message -->\n");
      out.write("    <div class=\"form-group\">\n");
      out.write("        <textarea class=\"form-control rounded-0\" id=\"exampleFormControlTextarea2\" rows=\"3\" placeholder=\"Message\"></textarea>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Copy -->\n");
      out.write("    <div class=\"custom-control custom-checkbox mb-4\">\n");
      out.write("        <input type=\"checkbox\" class=\"custom-control-input\" id=\"defaultContactFormCopy\">\n");
      out.write("        <label class=\"custom-control-label\" for=\"defaultContactFormCopy\">Send me a copy of this message</label>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <!-- Send button -->\n");
      out.write("    <button class=\"btn btn-info btn-block\" type=\"submit\">Send</button>\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("<!-- Default form contact -->\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
