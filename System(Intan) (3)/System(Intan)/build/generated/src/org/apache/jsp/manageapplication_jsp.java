package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.List;
import FYP.file;
import FYP.DAO;

public final class manageapplication_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("      <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("        \n");
      out.write("<title>JSP Page</title>\n");
      out.write("        \n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/util.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/main.css\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("             .footer-bottom{\n");
      out.write("             \n");
      out.write("\twidth: 100%;\n");
      out.write("\tpadding: 20px 0;\n");
      out.write("      position: fixed;\n");
      out.write("   left: 0;\n");
      out.write("   bottom: 0;\n");
      out.write("   width: 100%;\n");
      out.write("    \n");
      out.write("   \n");
      out.write("\ttext-align: center;\n");
      out.write("\tcolor: #fff;\n");
      out.write("\tbackground: rgb(9, 95, 234);\n");
      out.write("\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("         <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
      out.write("  <a class=\"navbar-brand\" href=\"#\">SPAOKUMT</a>\n");
      out.write("  <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarNavDropdown\" aria-controls=\"navbarNavDropdown\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("  </button>\n");
      out.write("  <div class=\"collapse navbar-collapse\" id=\"navbarNavDropdown\">\n");
      out.write("    <ul class=\"navbar-nav\">\n");
      out.write("      <li class=\"nav-item active\">\n");
      out.write("        <a class=\"nav-link\" href=\"profilemanager.jsp\">My Profile <span class=\"sr-only\">(current)</span></a>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"#\">Application List</a>\n");
      out.write("      </li>\n");
      out.write("     \n");
      out.write("      <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("          Management volunteer\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdownMenuLink\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"resvolunter.jsp\">register</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"registervolunteer.jsp\">manage</a>\n");
      out.write("  \n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("      <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"package.jsp\">Manage package</a>\n");
      out.write("      </li>\n");
      out.write("         \n");
      out.write("          <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"#\">Manage Schedule</a>\n");
      out.write("      </li>\n");
      out.write("      </li>\n");
      out.write("       <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"homepage.html\">Log out</a>\n");
      out.write("      </li>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("        \n");
      out.write("       <div class=\"container-table100\">\n");
      out.write("\t\t\t<div class=\"wrap-table100\">\n");
      out.write("\t\t\t\t<div class=\"table100 ver1 m-b-110\">\n");
      out.write("\t\t\t\t\t<div class=\"table100-head\">\n");
      out.write("\t\t\t\t\t\t<table>\n");
      out.write("\t\t\t\t\t\t\t<thead>\n");
      out.write("\t\t\t\t\t\t\t\t<tr class=\"row100 head\">\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<th class=\"cell100 column1\">No</th>\n");
      out.write("\t\t\t\t\t\t\t\t\t<th class=\"cell100 column2\">EMail</th>\n");
      out.write("\t\t\t\t\t\t\t\t\t<th class=\"cell100 column3\">Date</th>\n");
      out.write("\t\t\t\t\t\t\t\t\t<th class=\"cell100 column4\">File</th>\n");
      out.write("\t\t\t\t\t\t\t\t\t<th class=\"cell100 column5\">Action</th>\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\t\t\t\t\t\t\t</thead>\n");
      out.write("\t\t\t\t\t\t</table>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"table100-body js-pscroll\">\n");
      out.write("\t\t\t\t\t\t<table>\n");
      out.write("\t\t\t\t\t\t\t<tbody>\n");
      out.write("\t\t\t\t\t\t\t\t<tr class=\"row100 body\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<td class=\"cell100 column1\">1</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td class=\"cell100 column2\">ronaldoyusoff@gmail.com</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td class=\"cell100 column3\">9:00 AM - 11:00 AM</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td class=\"cell100 column4\">Aaron Chapman</td>\n");
      out.write("\t\t\t\t\t\t\t\t\t<td class=\"cell100 column5\">Delete</td>\n");
      out.write("\t\t\t\t\t\t\t\t</tr>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t</tbody>\n");
      out.write("\t\t\t\t\t\t</table>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\n");
      out.write("\t\t</div>\n");
      out.write("        \n");
      out.write("         <div class=\"footer-bottom\">\n");
      out.write("\t\tCopyright © 2020 Intan SPAOKUMT, All Rights Reserved\n");
      out.write("\t</div>\n");
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
