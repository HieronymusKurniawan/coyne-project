package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminlogin_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin Login</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"CSS/customerAccount.css\"> \n");
      out.write("        <script src=\"AccountJS/login.js\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"bungkus\">\n");
      out.write("            <center>\n");
      out.write("                <div class=\"logo\">\n");
      out.write("                    <img src=\"CSS/ilogo.png\" alt=\"\" id=\"ilogo\">\n");
      out.write("                </div>\n");
      out.write("                <form method=\"post\" action=\"LoginControllerAdmin\" name=\"LoginForm\" onsubmit=\"return validate();\">\n");
      out.write("\n");
      out.write("                    <input type=\"text\" name=\"txt_username\" id=\"username\" placeholder=\"Username\"><br>\n");
      out.write("                    <input type=\"password\" name=\"txt_password\" id=\"password\" placeholder=\"Password\"><br>\n");
      out.write("\n");
      out.write("                    <input type=\"submit\" name=\"btn_login\" value=\"Login\" id=\"login\">\n");
      out.write("\n");
      out.write("                <h3 style=\"color:red\">\n");
      out.write("                    ");

                        if (request.getAttribute("WrongLoginMsg") != null) {
                            out.println(request.getAttribute("WrongLoginMsg"));
                        }
                    
      out.write("\n");
      out.write("                </h3>\n");
      out.write("                </form>\n");
      out.write("            </center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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
