/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.54
 * Generated at: 2020-04-23 06:51:30 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class delete_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(3);
    _jspx_dependants.put("/board/delete_content.jsp", Long.valueOf(1587624569906L));
    _jspx_dependants.put("/layout/footer.jsp", Long.valueOf(1587611867100L));
    _jspx_dependants.put("/layout/header.jsp", Long.valueOf(1587622252478L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <title>Delete</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/project/css/common.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/project/css/board.css\">\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<!-- header -->\r\n");
      out.write("    <header>\r\n");
      out.write("    \t");
      out.write("\r\n");
      out.write("        <a href=\"/project/index.jsp\">\r\n");
      out.write("            <img src=\"/project/img/logo.png\" class=\"logo\" alt=\"\">\r\n");
      out.write("        </a>\r\n");
      out.write("        \r\n");
      out.write("        <nav>\r\n");
      out.write("            <ul class=\"nav-items\">\r\n");
      out.write("                <li><a href=\"/project/login/login.jsp\">Login</a></li>\r\n");
      out.write("                <li> | </li>\r\n");
      out.write("                <li><a href=\"/project/join/join.jsp\">Join</a></li>\r\n");
      out.write("                <li> | </li>\r\n");
      out.write("                <li><a href=\"/project/index.jsp\">게시판</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </nav>");
      out.write("\r\n");
      out.write("    </header>\r\n");
      out.write("    \r\n");
      out.write("    <div class=\"total\">\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("<table>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td class=\"menu\" width=400px>작성자의 비밀번호를 입력해주세요</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td><input type=\"password\" class=\"depw\"></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("<br>\r\n");
      out.write("\r\n");
      out.write("<input type=\"button\" id=\"deleteBtn\" value=\"삭제완료\">\r\n");
      out.write("\r\n");
      out.write("<a href=\"javascript:history.back();\"> <input type=\"button\"\r\n");
      out.write("\tvalue=\"취소\">\r\n");
      out.write("</a>\r\n");
      out.write("</html>");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("    <script src=\"/project/js/delete.js\"></script>\r\n");
      out.write("    \r\n");
      out.write("\t<!-- footer -->\r\n");
      out.write("\t<footer>\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\t<div>\r\n");
      out.write("        <p>이용약관  |  개인정보취급방침 </p> \r\n");
      out.write("        <address>서울특별시 구로구 디지털로 306 (구로동, 대륭포스트타워 2차 212호,218호,219호)  |  t. 02-2082-1688  |  F. 031-000-0000</address>\r\n");
      out.write("        <p>Copyright ⓒ THEJOEUN ACADEMY Corp.. All Rights Reserved.</p>\r\n");
      out.write("\t</div>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    </footer>\r\n");
      out.write("   \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
