package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import FYP.jadual;
import FYP.DAO;
import java.util.List;

public final class manageshedule_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("         <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("<script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("    <script src=\"https://code.jquery.com/jquery-3.2.1.slim.min.js\" integrity=\"sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js\" integrity=\"sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q\" crossorigin=\"anonymous\"></script>\n");
      out.write("<script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\" integrity=\"sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl\" crossorigin=\"anonymous\"></script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"row\">\n");
      out.write("          \n");
      out.write("            <h3 style=\"margin-left:40%;\">\n");
      out.write("                TABLE OF DUTY\n");
      out.write("                \n");
      out.write("            </h3>\n");
      out.write("        \n");
      out.write("\t\t<div class=\"table-responsive table-bordered movie-table\">\n");
      out.write("            <table class=\"table movie-table\">\n");
      out.write("                        <thead  class=\"cf\">\n");
      out.write("                            <tr>\n");
      out.write("                                \n");
      out.write("                        <h3> <th>DAY</th>\n");
      out.write("                                <th>4 PM - 6 PM</th>\n");
      out.write("                                <th>8 PM - 10 PM</th>\n");
      out.write("                                <th>10 PM - 12 PM</th>\n");
      out.write("                        </h3>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        <tbody>\n");
      out.write("                            <tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>MONDAY</th>\n");
      out.write("                                ");
  List <jadual> list=DAO.getschedule();
        
                                
for(jadual a:list)
{
                         
if(a.getHari().equalsIgnoreCase("Monday"))
{
    if(a.getMasa().equalsIgnoreCase("4PM-6PM"))
    {
        
      out.write("\n");
      out.write("                                <td>");
      out.print(a.getIdv() );
      out.write("</td>                      \n");
      out.write("                                ");

    }
}

if(a.getHari().equalsIgnoreCase("Monday"))
{
if(a.getMasa().equalsIgnoreCase("8PM-10PM"))
    {

      out.write("\n");
      out.write("\n");
      out.write("<td>");
      out.print(a.getIdv() );
      out.write("</td>  \n");
      out.write("\n");

}

}

if(a.getHari().equalsIgnoreCase("Monday"))
{
if(a.getMasa().equalsIgnoreCase("10PM-12PM"))
{

      out.write("\n");
      out.write("<td>");
      out.print(a.getIdv() );
      out.write("</td>  \n");
      out.write("\n");
      out.write("\n");

}
}


                       
      out.write("\n");
      out.write(" \n");
      out.write("                                ");
}
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>TUESDAY</th>\n");
      out.write("                                ");

                                    List<jadual> list2=DAO.getschedule();
                                    
for(jadual b:list2)
{
    if(b.getHari().equalsIgnoreCase("Tuesday"))
{
if(b.getMasa().equalsIgnoreCase("4PM-6PM"))
{
    
      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("            ");

}

else if(b.getMasa().equalsIgnoreCase("8PM-10PM"))
{

      out.write("\n");
      out.write("<td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("\n");

}
else if (b.getMasa().equalsIgnoreCase("10PM-12PM"))
{

      out.write("\n");
      out.write("<td>");
      out.print(b.getIdv() );
      out.write("</td> \n");

}
}

}
                                    
      out.write("\n");
      out.write("                              \n");
      out.write("                            </tr>\n");
      out.write("                            </tr>\n");
      out.write("                           \n");
      out.write("                            <tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>WEDNESDAY</th>\n");
      out.write("                                ");

                                    List<jadual> list3=DAO.getschedule();
                                    
for(jadual b:list3)
{
    if(b.getHari().equalsIgnoreCase("Wednesday"))
{
if(b.getMasa().equalsIgnoreCase("4PM-6PM"))
{
    
      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("                                ");

            
            
}
else if(b.getMasa().equalsIgnoreCase("8PM-10PM"))
{

      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("                                ");



}
else if(b.getMasa().equalsIgnoreCase("10PM-12PM")){

      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("                                ");

}
}
}
    
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>THURSDAY</th>\n");
      out.write("                                 ");

                                    List<jadual> list4=DAO.getschedule();
                                    
for(jadual b:list4)
{
    if(b.getHari().equalsIgnoreCase("Thursday"))
{
if(b.getMasa().equalsIgnoreCase("4PM-6PM"))
{
    
      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("                                ");

            
            
}
else if(b.getMasa().equalsIgnoreCase("8PM-10PM"))
{

      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("                                ");



}
else if(b.getMasa().equalsIgnoreCase("10PM-12PM")){

      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("                                ");

}
}
}
    
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>FRIDAY</th>\n");
      out.write("                               ");

                                    List<jadual> list5=DAO.getschedule();
                                    
for(jadual b:list5)
{
    if(b.getHari().equalsIgnoreCase("Friday"))
{
if(b.getMasa().equalsIgnoreCase("4PM-6PM"))
{
    
      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("                                ");

            
            
}
else if(b.getMasa().equalsIgnoreCase("8PM-10PM"))
{

      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("                                ");



}
else if(b.getMasa().equalsIgnoreCase("10PM-12PM")){

      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("                                ");

}
}
}
    
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>SATURDAY</th>\n");
      out.write("                                 ");

                                    List<jadual> list6=DAO.getschedule();
                                    
for(jadual b:list6)
{
    if(b.getHari().equalsIgnoreCase("Saturday"))
{
if(b.getMasa().equalsIgnoreCase("4PM-6PM"))
{
    
      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("                                ");

            
            
}
else if(b.getMasa().equalsIgnoreCase("8PM-10PM"))
{

      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("                                ");



}
else if(b.getMasa().equalsIgnoreCase("10PM-12PM")){

      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("                                ");

}
}
}
    
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                            </tr>\n");
      out.write("                            <tr>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>SUNDAY</th>\n");
      out.write("                               ");

                                    List<jadual> list7=DAO.getschedule();
                                    
for(jadual b:list7)
{
    if(b.getHari().equalsIgnoreCase("Sunday"))
{
if(b.getMasa().equalsIgnoreCase("4PM-6PM"))
{
    
      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("                                ");

            
            
}
else if(b.getMasa().equalsIgnoreCase("8PM-10PM"))
{

      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("                                ");



}
else if(b.getMasa().equalsIgnoreCase("10PM-12PM")){

      out.write("\n");
      out.write("                                <td>");
      out.print(b.getIdv() );
      out.write("</td> \n");
      out.write("                                ");

}
}
}
    
      out.write("\n");
      out.write("                            </tr>\n");
      out.write("                            </tr>\n");
      out.write("\n");
      out.write("                        </tbody>\n");
      out.write("                    </table>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("      \n");
      out.write("            <div class=\"footer-bottom\">\n");
      out.write("\t\tCopyright © 2020 Intan SPAOKUMT, All Rights Reserved\n");
      out.write("\t</div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
