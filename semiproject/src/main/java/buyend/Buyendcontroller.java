package buyend;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import orders.OrderDAO;
import orders.OrdersVO;

@WebServlet("*.do")
public class Buyendcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 BuyendDAO bDAO;
	 OrderDAO oDAO;
    public Buyendcontroller() {
    	bDAO = new BuyendDAO();
    	oDAO= new OrderDAO();
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
		
		
		if(command.equals("/buyList.do")) {
		
			//String id = request.getParameter("id");
			
			String pageNum = request.getParameter("pageNum");
			if(pageNum == null) { //페이지 번호를 클릭하지 않았을때 기본값
				pageNum = "1";
			}
			int currentPage = Integer.parseInt(pageNum);
			int pageSize = 5;
			
			int startRow = (currentPage-1)*pageSize + 1;
			int startPage = startRow / pageSize + 1;
			
			int totalRow = oDAO.getListcount();
			int endPage = totalRow /pageSize;
			endPage = (totalRow % pageSize == 0) ? endPage : endPage + 1;
			
			
			List<OrdersVO> buyend = oDAO.getblist(currentPage);
			request.setAttribute("buyend",buyend);
			request.setAttribute("page", currentPage); //현재페이지
			request.setAttribute("endp", endPage); //마지막페이지
			
			
			
			
			nextPage="/petshop/buyList.jsp";	
											
		}else if(command.equals("/orders.do")){
			String realForder ="C:\\jspwork2-master\\semiproject\\src\\main\\webapp\\upload";
			int maxsize = 10*1024*1024; //1000
			String enctype = "utf-8"; //파일이름 한글인코딩
			DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
			
			MultipartRequest multi = new MultipartRequest(request,realForder
					  ,maxsize,enctype,policy);
			Enumeration<?> files = multi.getFileNames();
			
			String filename = "";
			while(files.hasMoreElements()) { //파일명이 있는동안반복
				String userfilename = (String) files.nextElement();
				
				filename = multi.getFilesystemName(userfilename);
			
			 
	
				int orderprice = Integer.parseInt(multi.getParameter("orderPrice"));
			    String cardcompany = multi.getParameter("cardCompany");
			    int count = Integer.parseInt(multi.getParameter("count"));
			    String id = multi.getParameter("id");
			    String pname = multi.getParameter("pname");
			    
			    OrdersVO ov = new OrdersVO();
			    
			    ov.setOrderPrice(orderprice);
			    ov.setCardCompany(cardcompany);
			    ov.setCount(count);
			    ov.setId(id);
			    ov.setPname(pname);
			    ov.setFilename(filename);
			    oDAO.insertOrder(ov);
			    
               List<OrdersVO> ss= new ArrayList<>();
               ss.add(ov);
               /*for(int i=0; i<ss.size(); i++) {
            	   //oDAO.insertOrder(ss[i]);	
               }*/
                	
			nextPage="/petshop/orders.jsp";
		
		}
		}else {}
		
		RequestDispatcher ds= request.getRequestDispatcher(nextPage);
		ds.forward(request, response);
	}
	}


