package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import product.ProductDAO;
import product.ProductVO;
import qa.QaDAO;

@WebServlet("/qa.do")
public class ExController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	QaDAO qaDAO;
	ProductDAO pDAO;
       
    public ExController() {
    	pDAO = new ProductDAO();
    	qaDAO = new QaDAO();
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
		//Q&A 게시판
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
		
		//Product
		else if(command.equals("/productlist.do")) {
			List<ProductVO> productList = pDAO.getProductList();
			request.setAttribute("productList", productList);
			nextPage = "/product/productList.jsp";
		}else if(command.equals("/productinsert.do")) {
			int pno = Integer.parseInt(request.getParameter("pno"));
			String pname = request.getParameter("pname");
			int price = Integer.parseInt(request.getParameter("price"));
			int p_score = Integer.parseInt(request.getParameter("p_score"));
			int sal_num = Integer.parseInt(request.getParameter("psal_num"));
			String pcontent = request.getParameter("pcontent");
			
			ProductVO p = new ProductVO();
			p.setPno(pno);
			p.setPname(pname);
			p.setPrice(price);
			p.setP_score(p_score);
			p.setSal_num(sal_num);
			p.setPcontent(pcontent);
			
			nextPage = "/product/productList.jsp";
		}
		
		
		
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
	}
	
}
