/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.54
 * Generated at: 2020-05-13 06:40:44 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.bigdata.dto.BoardDto;
import java.util.ArrayList;
import com.bigdata.dao.BoardDao;

public final class list_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(5);
    _jspx_dependants.put("/layout/footer.jsp", Long.valueOf(1589246382646L));
    _jspx_dependants.put("/board/list_content.jsp", Long.valueOf(1589260616685L));
    _jspx_dependants.put("/layout/header.jsp", Long.valueOf(1589351256630L));
    _jspx_dependants.put("/layout/search.jsp", Long.valueOf(1589246382551L));
    _jspx_dependants.put("/layout/head.jsp", Long.valueOf(1589246382534L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("com.bigdata.dao.BoardDao");
    _jspx_imports_classes.add("com.bigdata.dto.BoardDto");
    _jspx_imports_classes.add("java.util.ArrayList");
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
      out.write("<html lang=\"ko\">\r\n");
      out.write("<head>\r\n");
      out.write("    ");

// page ì¤ì  ê° ì²ë¦¬
// request.getRequestURI() : /jsp/board/list.jsp
String uri = request.getRequestURI();
String[] tmpArr = uri.split("/");
String fileFullName = tmpArr[tmpArr.length-1];
String fileName = fileFullName.split("\\.")[0];



      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<meta charset=\"UTF-8\">\r\n");
      out.write("    <title>");
      out.print(fileFullName );
      out.write("</title>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/bigdata/css/common.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"http://thedata.kr/css/cssans.min.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"/bigdata/css/");
      out.print(fileName );
      out.write(".css\">");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("    \r\n");
      out.write("<body>\r\n");
      out.write("    <div id=\"wrap\">\r\n");
      out.write("        <header>\r\n");
      out.write("            ");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("<a class=\"logo\" href=\"/bigdata/index.do\">\r\n");
      out.write("    <b class=\"cssans:d\"></b>\r\n");
      out.write("    <b class=\"cssans:a\"></b>\r\n");
      out.write("    <b class=\"cssans:t\"></b>\r\n");
      out.write("    <b class=\"cssans:a\"></b>\r\n");
      out.write("</a>\r\n");
if(session.getAttribute("id") == null) {
      out.write("\r\n");
      out.write("<nav>\r\n");
      out.write("  <ul class=\"nav-items\">\r\n");
      out.write("    <li><a href=\"/bigdata/login/login.jsp\">Login</a></li>\r\n");
      out.write("    <li> | </li>\r\n");
      out.write("    <li><a href=\"/bigdata/join/join.jsp\">회원가입</a></li>\r\n");
      out.write("    <li> | </li>\r\n");
      out.write("    <li><a href=\"/bigdata/board/list.jsp\">게시판</a></li>\r\n");
      out.write("    <li> | </li>\r\n");
      out.write("    <li><a href=\"/bigdata/mvcboard/list.do\">MVC게시판</a></li>\r\n");
      out.write("</ul>\r\n");
      out.write("</nav>\r\n");
}else{
      out.write("\r\n");
      out.write("<nav>\r\n");
      out.write("  <ul class=\"nav-items\">\r\n");
      out.write("    <li><a href=\"#\">");
      out.print(session.getAttribute("name") );
      out.write('(');
      out.print(session.getAttribute("id") );
      out.write(")님 환영합니다!</a></li>\r\n");
      out.write("    <li> | </li>\r\n");
      out.write("    <li><a href=\"/bigdata/login/logout.jsp\">로그아웃</a></li>\r\n");
      out.write("    <li> | </li>\r\n");
      out.write("    <li><a href=\"/bigdata/join/join_update.jsp\">회원정보수정</a></li>\r\n");
      out.write("    <li> | </li>\r\n");
      out.write("    <li><a href=\"/bigdata/join/join_delete.jsp\">회원탈퇴</a></li>\r\n");
      out.write("    <li> | </li>\r\n");
      out.write("    <li><a href=\"/bigdata/board/list.jsp\">게시판</a></li>\r\n");
      out.write("    <li> | </li>\r\n");
      out.write("    <li><a href=\"/bigdata/mvcboard/list.do\">MVC게시판</a></li>\r\n");
      out.write("  </ul>\r\n");
      out.write("</nav>\r\n");
} 
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        </header>\r\n");
      out.write("        \r\n");
      out.write("        <div id=\"content-wrap\">\r\n");
      out.write("        \t");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

ArrayList<BoardDto> boards = (ArrayList<BoardDto>)request.getAttribute("boards");
String count = (String)request.getAttribute("count");
int pageCount = (int)request.getAttribute("pageCount");
int pageNum = (int)request.getAttribute("pageNum");



      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("<h1 class=\"content-title\">글 목록</h1>\r\n");
      out.write("<div id=\"board-wrap\">Total: ");
      out.print(count );
      out.write(" / Page: ");
      out.print(pageNum );
      out.write(' ');
      out.write('/');
      out.write(' ');
      out.print(pageCount );
      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("<form action=\"");
      out.print(request.getContextPath() );
      out.write("/search.jsp\" method=\"get\"> \r\n");
      out.write("<select name=\"keyWord\">\r\n");
      out.write("\t<option value=\"title\">제목(Title)</option>\r\n");
      out.write("\t<option value=\"content\">내용(Content)</option>\r\n");
      out.write("\t<option value=\"name\">작성자(Name)</option>\r\n");
      out.write("</select>\r\n");
      out.write("<input type=\"text\" name=\"searchWord\"> \r\n");
      out.write("<input type=\"submit\" value=\"Search\">\r\n");
      out.write("</form>");
      out.write(" \r\n");
      out.write("<table class=\"pos\">\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<th>번호</th>\r\n");
      out.write("\t\t\t<th>제목</th>\r\n");
      out.write("\t\t\t<th>작성자</th>\r\n");
      out.write("\t\t\t<th>작성일</th>\r\n");
      out.write("\t\t\t<th>조회</th>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t");

		if(boards.size() > 0){
			String viewPath = "";
			for (BoardDto board : boards) {
				viewPath = request.getContextPath()+"/mvcboard/view.do?idx="+board.getIdx();
				String space = "";
				int spaceCount = board.getIndent() * 3;
				for(int i=0;i<=spaceCount;++i){
					space += "&nbsp;";
				}
		
      out.write("\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td>");
      out.print(board.getIdx());
      out.write("</td>\r\n");
      out.write("\t\t\t<td class=\"btitle\">");
      out.print(space );
      out.write("<a href=\"");
      out.print(viewPath);
      out.write('"');
      out.write('>');
      out.print(board.getTitle() );
      out.write("</a></td>\r\n");
      out.write("\t\t\t<td>");
      out.print(board.getName() );
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print(board.getRegdate() );
      out.write("</td>\r\n");
      out.write("\t\t\t<td>");
      out.print(board.getHit() );
      out.write("</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t");

			}
		}else{
			out.println("<tr><td colspan='6'>게시글이 없습니다.</td></tr>");
		}
		
      out.write("\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td colspan=\"5\">\r\n");
      out.write("\t\t\t\t");

					
					 
					for (int i = 0; i < pageCount; i++) {
				
      out.write(" <a href=\"");
      out.print(request.getContextPath() );
      out.write("/index.jsp?page=");
      out.print(i+1);
      out.write('"');
      out.write('>');
      out.write('[');
      out.print(i+1);
      out.write("]\r\n");
      out.write("\t\t\t</a> ");

 	}
 
      out.write("\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t\t<tr>\r\n");
      out.write("\t\t\t<td colspan=\"5\">\r\n");
      out.write("\t\t\t<a href=\"");
      out.print(request.getContextPath() );
      out.write("/board/write.jsp\" class=\"btn\">글쓰기</a>\r\n");
      out.write("\t\t\t<a href=\"");
      out.print(request.getContextPath() );
      out.write("/fwrite.jsp\" class=\"btn\">파일업로드 글쓰기</a>\r\n");
      out.write("\t\t\t</td>\r\n");
      out.write("\t\t</tr>\r\n");
      out.write("\t</table>\r\n");
      out.write("\t\r\n");
      out.write("\t</div>");
      out.write(" \r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <footer>\r\n");
      out.write("            ");
      out.write("\r\n");
      out.write("<div>\r\n");
      out.write("     <ul class=\"footer\">\r\n");
      out.write("         <li>이용약관  |  개인정보취급방침</li>\r\n");
      out.write("         <li>서울특별시 구로구 디지털로 306 (구로동, 대륭포스트타워 2차 212호,218호,219호)  |  t. 02-2082-1688  |  F. 031-000-0000</li>\r\n");
      out.write("         <li>Copyright ⓒ THEJOEUN ACADEMY Corp.. All Rights Reserved.</li>\r\n");
      out.write("     </ul>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("        </footer>\r\n");
      out.write("      </div>\r\n");
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
