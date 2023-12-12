package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/qa.do")
public class QaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public QaController() {
    	
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String uri = request.getRequestURI();
		System.out.println(uri);
		
		String command = uri.substring(uri.lastIndexOf("/"));
		System.out.println(command);
		
		String nextPage = "";
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		
		if(command.equals("/qaboardlist.do")) {
			nextPage = "/qa/qaboardlist.jsp";
		}else if(command.equals("/qawriteform.do")) {
			nextPage = "/qa/qawriteform.jsp";
		}else if(command.equals("/qaboardview.do")) {
			nextPage = "/qa/qaboardview.jsp";
		}else if(command.equals("/deleteqaboard.do")) {
			nextPage = "/qa/qaboardlist.jsp";
		}else if(command.equals("/updateqaboard.do")) {
			nextPage = "/qa/qaupdateboardform.jsp";
		}else if(command.equals("/qaupdateboard.do")) {
			nextPage = "/qa/qaboardlist.jsp";
		}
		
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
	}
	
}
