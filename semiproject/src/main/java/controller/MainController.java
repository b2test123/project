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

import member.MemberDAO;
import member.MemberVO;
import product.ProductDAO;
import product.ProductVO;

@WebServlet("*.do")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//필드
	MemberDAO mDAO;
	ProductDAO pDAO;

	public MainController() {
		mDAO = new MemberDAO();
		pDAO = new ProductDAO();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//한글 인코딩
		request.setCharacterEncoding("utf-8");
		//응답할 컨텐츠 유형
		response.setContentType("text/html; charset=utf-8");

		//경로 설정
		//uri - 컨텍스트(/) 파일(.do)
		String uri = request.getRequestURI();
		System.out.println(uri);
		//command 패턴
		String command = uri.substring(uri.lastIndexOf("/"));
		System.out.println(command);

		String nextPage = "";
		//세션 객체 생성
		HttpSession session = request.getSession();

		//view에 출력 객체 생성
		PrintWriter out = response.getWriter();

		//회원
		if(command.equals("/joinform.do")) {
			nextPage = "/member/joinform.jsp";
		}else if(command.equals("/insertmember.do")) {
			String id = request.getParameter("id");
			String passwd = request.getParameter("passwd");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String zip_code = request.getParameter("zip_code");
			String address = request.getParameter("address");
			String detailaddress = request.getParameter("detailaddress");

			MemberVO m = new MemberVO();
			m.setId(id);
			m.setPasswd(passwd);
			m.setName(name);
			m.setEmail(email);
			m.setPhone(phone);
			m.setZip_code(zip_code);
			m.setAddress(address);
			m.setDetailaddress(detailaddress);
			mDAO.insertMember(m);

			nextPage = "/main.jsp";
		}else if(command.equals("/loginform.do")){
			nextPage = "/member/loginform.jsp";
		}else if(command.equals("/login.do")) {
			String id = request.getParameter("id");
			String passwd = request.getParameter("passwd");

			MemberVO m = new MemberVO();
			m.setId(id);
			m.setPasswd(passwd);

			MemberVO member = mDAO.checkLogin(m);
			String name = member.getName();

			if(name != null) {
				session.setAttribute("sessionId", id);
				session.setAttribute("sessionName", name);

				nextPage = "/main.jsp";
			}else {
				String error = "아이디나 비밀번호를 확인해주세요.";
				request.setAttribute("error", error);
				//에러 발생 후 페이지 이동
				nextPage = "/member/loginform.jsp";
			}
		}else if(command.equals("/logout.do")) {
			session.invalidate(); //세션삭제
			nextPage = "/main.jsp";
		}

		//상품
		else if(command.equals("/productlist.do")) {
			List<ProductVO> productList = pDAO.getProductList();
			request.setAttribute("productList", productList);
			nextPage = "/product/productlist.jsp";
		}else if(command.equals("/insertproduct.do")) {
		        int pno = Integer.parseInt(request.getParameter("pno"));
		        String pname = request.getParameter("pname");
		        int price = Integer.parseInt(request.getParameter("price"));
		        String pcontent = request.getParameter("pcontent");
		        String category = request.getParameter("category");

		        ProductVO p = new ProductVO();
		        p.setPno(pno);
		        p.setPname(pname);
		        p.setPrice(price);
		        p.setPcontent(pcontent);
		        p.setCategory(category);

		        pDAO.insertProduct(p);
		        
		        nextPage = "/productlist.do";
		}else if(command.equals("/productview.do")) {
			int pno = Integer.parseInt(request.getParameter("pno"));
			ProductVO productList = pDAO.getProductVO(pno);
			request.setAttribute("productlist", productList);
			
			nextPage = "/product/productview.jsp";
		}else if(command.equals("/udproduct.do")) {
			List<ProductVO> productList = pDAO.getProductList();
			request.setAttribute("productList", productList);
			nextPage = "/product/udproduct.jsp";
			
		}else if(command.equals("/deleteproduct.do")) {
			int pno = Integer.parseInt(request.getParameter("pno"));
			pDAO.deleteproduct(pno);
			
			nextPage = "/udproduct.do";
			
		}else if(command.equals("/updateform.do")) {
			int pno = Integer.parseInt(request.getParameter("pno"));
			ProductVO product = pDAO.getProductVO(pno);
			request.setAttribute("product", product);
			
			nextPage = "/product/updateform.jsp";
		}else if(command.equals("/update.do")) {
			int pno = Integer.parseInt(request.getParameter("pno"));
			
			String pname = request.getParameter("pname");
			int price = Integer.parseInt(request.getParameter("price"));
			String category = request.getParameter("category");
			String pcontent = request.getParameter("pcontent");
			//수정처리 매서드
			ProductVO p = new ProductVO();
			
			p.setPno(pno);
			p.setPname(pname);
			p.setPrice(price);
			p.setCategory(category);
			p.setPcontent(pcontent);
			
			pDAO.updateproduct(p);
			
			nextPage = "/udproduct.do";
		}
		
		else if(command.equals("/doglist.do")) {
			List<ProductVO> productList = pDAO.getProductList();
			request.setAttribute("productList", productList);
			
			nextPage = "/product/doglist.jsp";
		}else if(command.equals("/catlist.do")) {
			List<ProductVO> productList = pDAO.getProductList();
			request.setAttribute("productList", productList);
			
			nextPage = "/product/catlist.jsp";
		}else if(command.equals("/hamlist.do")) {
			List<ProductVO> productList = pDAO.getProductList();
			request.setAttribute("productList", productList);
			
			nextPage = "/product/hamlist.jsp";
		}else if(command.equals("/eventlist.do")) {
			List<ProductVO> productList = pDAO.getProductList();
			request.setAttribute("productList", productList);
			
			nextPage = "/product/eventlist.jsp";
		}
		
		
		
		//게시판
		else if(command.equals("/boardlist.do")) {

			nextPage = "/board/neboardlist.jsp";
		}

		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);

	}

}
