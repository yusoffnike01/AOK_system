package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import FYP.DAO;
import FYP.pengguna;
import java.util.List;

public final class donate1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("  <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("                #profileid1\n");
      out.write("                {\n");
      out.write("                   \n");
      out.write("               \n");
      out.write("               \n");
      out.write("                 width:60%;\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                border:2px solid #34495e;\n");
      out.write("         \n");
      out.write("                box-sizing: border-box;\n");
      out.write("                position:absolute;\n");
      out.write("                \n");
      out.write("                }\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("      <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\n");
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
      out.write("        <a class=\"nav-link\" href=\"#\">Manage Schedule</a>\n");
      out.write("      </li>\n");
      out.write("       \n");
      out.write("      <li class=\"nav-item dropdown\">\n");
      out.write("        <a class=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdownMenuLink\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("          Management Donor\n");
      out.write("        </a>\n");
      out.write("        <div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdownMenuLink\">\n");
      out.write("          <a class=\"dropdown-item\" href=\"donate1.jsp\">list of citizen</a>\n");
      out.write("          <a class=\"dropdown-item\" href=\"#\">Report</a>\n");
      out.write("  \n");
      out.write("        </div>\n");
      out.write("      </li>\n");
      out.write("       <li class=\"nav-item\">\n");
      out.write("        <a class=\"nav-link\" href=\"homepage.html\">Log out</a>\n");
      out.write("      </li>\n");
      out.write("    </ul>\n");
      out.write("  </div>\n");
      out.write("</nav>\n");
      out.write("    <body>\n");
      out.write("         <div class=\"table-responsive-sm\">\n");
      out.write("             <table class=\"table\">\n");
      out.write("                 \n");
      out.write("                 <tr>\n");
      out.write("                     <th>ID Citizen</th>\n");
      out.write("                     <th>Name</th>\n");
      out.write("                     <th>Email</th>\n");
      out.write("                     <th>No. Phone</th>\n");
      out.write("                     <th>Address</th>\n");
      out.write("                     <th>City</th>\n");
      out.write("                     <th>State</th>\n");
      out.write("                     <th>Total</th>\n");
      out.write("                     <th>Receipt</th>\n");
      out.write("                     <th>Action</th>\n");
      out.write("                     \n");
      out.write("                 </tr>\n");
      out.write("        ");

        
        List<pengguna>list=DAO.getAlldonation();
        
for(pengguna obj:list)
{
    
      out.write("\n");
      out.write("    <tr>\n");
      out.write("        <td>");
      out.print(obj.getIdpenderma() );
      out.write("</td>\n");
      out.write("        <td>");
      out.print(obj.getNama() );
      out.write("</td>\n");
      out.write("        <td>");
      out.print(obj.getEmail() );
      out.write("</td>\n");
      out.write("        <td>");
      out.print(obj.getNoTel() );
      out.write("</td>\n");
      out.write("        <td>");
      out.print(obj.getAlamat() );
      out.write("</td>\n");
      out.write("        <td>");
      out.print(obj.getBandar() );
      out.write("</td>\n");
      out.write("        <td>");
      out.print(obj.getNegeri() );
      out.write("</td>\n");
      out.write("        <td>");
      out.print(obj.getJumlah() );
      out.write("</td>\n");
      out.write("        <td> <button type=\"button\" class=\"btn btn-info\" data-toggle=\"modal\" data-target=\"#myModal");
      out.print(obj.getIdpenderma() );
      out.write("\">View Receipt</button></td>\n");
      out.write("        <td><a href=\"delete2.jsp?id1=");
      out.print(obj.getIdpenderma()  );
      out.write("\" onclick=\"return confirm('Are you sure to delete?')\"><button  type=\"button\" class=\"btn btn-info\">Delete</button></a></td>\n");
      out.write("    </tr>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("     <div id=\"myModal");
      out.print(obj.getIdpenderma() );
      out.write("\" class=\"modal fade\" role=\"dialog\">\n");
      out.write("\t\t\t<div class=\"modal-dialog\">\n");
      out.write("\t\t\t   \n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t    <div class=\"modal-body\">\n");
      out.write("                                     \n");
      out.write("                                      <img src=\"");
      out.print(obj.getBase64Image() );
      out.write("\" id=\"profileid1\">\n");
      out.write("                                 \n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t    </div>\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("    ");

}
        
        
      out.write("\n");
      out.write("             </table>\n");
      out.write("         </div>\n");
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
