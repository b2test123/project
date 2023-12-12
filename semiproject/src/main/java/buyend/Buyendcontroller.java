package buyend;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("*buyend.do")
public class Buyendcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 BuyendDAO bDAO;
    public Buyendcontroller() {
    	bDAO = new BuyendDAO();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String uri= request.getRequestURI();
		String command = uri.substring(uri.lastIndexOf("/"));
		String nextPage = "";
		
		HttpSession session = request.getSession();
		
		
		if(command.equals("/buyend.do")) {
		
			String id = request.getParameter("id");
			
			List<BuyendVO> buyend = bDAO.getlistAll(id);
			request.setAttribute("buyend",buyend);
			nextPage="/buyend/buyend.jsp";
		
		
		
		}else if(command.equals("/gg.do")){
			
			BuyendVO bv = new BuyendVO();
			
		 String receipt = request.getParameter("receipt");	
		 String product = request.getParameter("product");	
		 int price = Integer.parseInt(request.getParameter("price"));	
		 String id = request.getParameter("id");			
		 int orderno = Integer.parseInt(request.getParameter("orderno"));
			
		 bv.setReceipt(receipt);
		 bv.setProduct(product);
		 bv.setPrice(price);
		 bv.setOrderNo(orderno);
		 bv.setId(id);
		 
			bDAO.insertbuyend(bv);
			
			nextPage="/buyend/buyend.jsp";
			
		}else {}
		
		RequestDispatcher ds= request.getRequestDispatcher(nextPage);
		ds.forward(request, response);
	}

}
