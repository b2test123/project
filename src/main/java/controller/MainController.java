package controller;

import java.io.IOException;
import java.io.PrintWriter;
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

import cart.CartDAO;
import cart.CartVO;
import member.MemberDAO;
import member.MemberVO;
import notice.NBoard;
import notice.NoticeBoardDAO;
import product.ProductDAO;
import product.ProductVO;
import purchasehistory.PurchaseHistoryDAO;
import purchasehistory.PurchaseHistoryDTO;
import purchasehistory.PurchaseHistoryVO;
import qa.QABoard;
import qa.QABoardDAO;
import review.RBoard;
import review.ReviewBoardDAO;

@WebServlet("*.do")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//필드
	MemberDAO mDAO;
	ProductDAO pDAO;
	CartDAO cDAO;
	PurchaseHistoryDAO phDAO;
	NoticeBoardDAO nDAO;
	QABoardDAO qDAO;
	ReviewBoardDAO rDAO;

	public MainController() {
		mDAO = new MemberDAO();
		pDAO = new ProductDAO();
		cDAO = new CartDAO();
		phDAO = new PurchaseHistoryDAO();
		nDAO = new NoticeBoardDAO();
		qDAO = new QABoardDAO();
		rDAO = new ReviewBoardDAO();
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
		}else if (command.equals("/memberview.do")) {
			String id =request.getParameter("id");

			MemberVO member = mDAO.getMember(id);

			request.setAttribute("member", member);

			nextPage = "/member/memberview.jsp";
		}else if (command.equals("/memberlist.do")) {

			List<MemberVO> memberList = mDAO.getMemberList();

			request.setAttribute("memberList", memberList);

			nextPage = "/member/memberlist.jsp";
		}else if(command.equals("/updatemember.do")) {
			//회원 정보 수정 데이터 받기
			MemberVO m = new MemberVO();		
		
			String id = (String)session.getAttribute("sessionId");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String zip_code = request.getParameter("zip_code");
			String address = request.getParameter("address");
			String detailaddress = request.getParameter("detailaddress");
		
			mDAO.updateMember(id, m);
		
			nextPage="/member/memberview.jsp";

		}else if(command.equals("/deletemember.do")) {
			//회원정보 삭제(회원탈퇴)
			String id = (String)session.getAttribute("sessionId");			
		
			//위에 세션에서 id받지않으면 회원아이디 직접입력용 String id = request.getParameter("id");		
			mDAO.deleteMember(id);		
			nextPage="/main.jsp";
		}
		
		
		
		
		
		
		
		
		
		
		

		//상품
		else if(command.equals("/productlist.do")) {
			List<ProductVO> productList = pDAO.getProductList();
			request.setAttribute("productList", productList);
			nextPage = "/product/productlist.jsp";
		}else if(command.equals("/productview.do")) {
			int pno = Integer.parseInt(request.getParameter("pno"));
			ProductVO productList = pDAO.getProductVO(pno);
			request.setAttribute("productlist", productList);

			nextPage = "/product/productview.jsp";
		}else if(command.equals("/productmanagement.do")) {
			List<ProductVO> productList = pDAO.getProductList();
			request.setAttribute("productList", productList);
			nextPage = "/product/productmanagement.jsp";

		}else if(command.equals("/deleteproduct.do")) {
			int pno = Integer.parseInt(request.getParameter("pno"));
			pDAO.deleteproduct(pno);

			nextPage = "/productmanagement.do";

		}else if(command.equals("/updateform.do")) {
			int pno = Integer.parseInt(request.getParameter("pno"));
			ProductVO product = pDAO.getProductVO(pno);
			request.setAttribute("product", product);

			nextPage = "/product/updateform.jsp";
		}else if(command.equals("/update.do")) {
			String realFolder ="C:\\jspworks\\semiproject\\src\\main\\webapp\\fileupload";
			int maxSize = 10*1024*1024; //10MB
			String encType = "utf-8";   //파일이름 한글 인코딩
			DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
			//5가지 인자
			MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, policy);

			//폼 일반 속성 데이터 받기
			int pno = Integer.parseInt(multi.getParameter("pno"));
			String pname = multi.getParameter("pname");
			int price = Integer.parseInt(multi.getParameter("price"));
			String pcontent = multi.getParameter("pcontent");
			String category = multi.getParameter("category");

			//file 속성
			Enumeration<?> files = multi.getFileNames();
			String pfilename = "";
			while(files.hasMoreElements()) { //파일이름이 있는 동안 반복
				String userFilename = (String)files.nextElement();

				//실제 파일 이름
				pfilename = multi.getFilesystemName(userFilename);
			}

			//db에 저장
			ProductVO p = new ProductVO();
			p.setPno(pno);
			p.setPname(pname);
			p.setPrice(price);
			p.setPcontent(pcontent);
			p.setCategory(category);
			p.setPfilename(pfilename);

			pDAO.updateproduct(p);

			nextPage = "/productmanagement.do";
		}else if(command.equals("/categorylist.do")) {
			System.out.println(request.getParameter("category"));
			List<ProductVO> p = pDAO.getCategoryList(request.getParameter("category"));

			request.setAttribute("categoryList", p);

			nextPage = "/product/categorylist.jsp";
		}else if(command.equals("/insertproduct.do")) {
			String realFolder ="C:\\jspworks\\semiproject\\src\\main\\webapp\\fileupload";
			int maxSize = 10*1024*1024; //10MB
			String encType = "utf-8";   //파일이름 한글 인코딩
			DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
			//5가지 인자
			MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, policy);

			//폼 일반 속성 데이터 받기
			String pname = multi.getParameter("pname");
			int price = Integer.parseInt(multi.getParameter("price"));
			String pcontent = multi.getParameter("pcontent");
			String category = multi.getParameter("category");

			//file 속성
			Enumeration<?> files = multi.getFileNames();
			String pfilename = "";
			while(files.hasMoreElements()) { //파일이름이 있는 동안 반복
				String userFilename = (String)files.nextElement();

				//실제 파일 이름
				pfilename = multi.getFilesystemName(userFilename);
			}

			//db에 저장
			ProductVO p = new ProductVO();
			p.setPname(pname);
			p.setPrice(price);
			p.setPcontent(pcontent);
			p.setCategory(category);
			p.setPfilename(pfilename);

			//write매서드 실행
			pDAO.insertProduct(p);

			nextPage = "/productmanagement.do";
		}

		//주문&장바구니
		else if(command.equals("/orders.do")) {
			request.setAttribute("member", mDAO.getMember(String.valueOf(session.getAttribute("sessionId"))));
			if (request.getParameter("pno") != null) {
				request.setAttribute("product", pDAO.getProductVO(Integer.parseInt(request.getParameter("pno"))));
			} else {
				List<ProductVO> cartList = cDAO.getCartList(String.valueOf(session.getAttribute("sessionId")));
				request.setAttribute("cartlist", cartList);
			}
			
			nextPage = "/orders/orders.jsp";
		}else if(command.equals("/cart.do")) {
			List<ProductVO> cartList = cDAO.getCartList(String.valueOf(session.getAttribute("sessionId")));
			request.setAttribute("cartlist", cartList);
			request.setAttribute("member", mDAO.getMember(String.valueOf(session.getAttribute("sessionId"))));
			request.setAttribute("product", pDAO.getProductVO(Integer.parseInt(request.getParameter("pno"))));

			int cnt = Integer.parseInt(request.getParameter("cnt"));
			int pno = Integer.parseInt(request.getParameter("pno"));
			String id = String.valueOf(session.getAttribute("sessionId"));

			CartVO c = new CartVO();
			c.setCnt(cnt);
			c.setPno(pno);
			c.setId(id);

			cDAO.insertCart(c);

			nextPage = "/orders/cart.jsp";
		}else if(command.equals("/basket.do")) {
			List<ProductVO> cartList = cDAO.getCartList(String.valueOf(session.getAttribute("sessionId")));
			
			request.setAttribute("member", mDAO.getMember(String.valueOf(session.getAttribute("sessionId"))));
			request.setAttribute("cartlist", cartList);
			nextPage = "/orders/cart.jsp";
		}

		//구매내역
		else if(command.equals("/purchasehistory.do")) {
			List<PurchaseHistoryDTO> historyList = phDAO.getHistoryList2(String.valueOf(session.getAttribute("sessionId")));
			String id = String.valueOf(session.getAttribute("sessionId"));
			
			request.setAttribute("purchasehistorylist", historyList);
			nextPage = "/orders/purchasehistory.jsp";
		}
		//구매완료
		else if(command.equals("/purchaseconfirm.do")) {
			String id = String.valueOf(session.getAttribute("sessionId"));
			
			if (request.getParameter("pno") != null) {
				request.setAttribute("product", pDAO.getProductVO(Integer.parseInt(request.getParameter("pno"))));

				PurchaseHistoryVO ph = new PurchaseHistoryVO();
				ph.setId(id);
				ph.setPcnt(1);
				ph.setPno(Integer.parseInt(request.getParameter("pno")));
				
				phDAO.insertPurchaseHistory(ph);
			} else {
				List<CartVO> cartList2 = cDAO.getCartList2(String.valueOf(session.getAttribute("sessionId")));

				for(int i=0; i<cartList2.size(); i++) {
					CartVO cart = cartList2.get(i);
					
					PurchaseHistoryVO ph = new PurchaseHistoryVO();
					ph.setId(id);
					ph.setPcnt(cart.getCnt());
					ph.setPno(cart.getPno());
					
					phDAO.insertPurchaseHistory(ph);
				}
				
				cDAO.deletecart(id);
			}
			
			nextPage = "/orders/purchaseconfirm.jsp";
		}



		//게시판
		if(command.equals("/boardlist.do")) {				//전체 게시판 페이지

			nextPage = "/board/boardlist.jsp";
		}else if(command.equals("/noticeboardlist.do")) {	//공지사항 게시판 목록
			List<NBoard> nb = nDAO.getNBoardList();

			request.setAttribute("nboardList", nb);
			nextPage = "/board/noticeboardlist.jsp";
		}else if(command.equals("/qaboardlist.do")) {		//Q&A 게시판 목록
			List<QABoard> qab = qDAO.getQABoardList();

			request.setAttribute("qaboardList", qab);

			nextPage = "/board/qaboardlist.jsp";
		}else if(command.equals("/reviewboardlist.do")) {	//리뷰 게시판 목록
			List<RBoard> rb = rDAO.getRBoardList();

			request.setAttribute("rboardList", rb);

			nextPage = "/board/reviewboardlist.jsp";
		}else if(command.equals("/noticewriteform.do")) {	//공지사항 글쓰기 페이지

			nextPage = "/board/noticewriteform.jsp";
		}else if(command.equals("/noticewrite.do")) {		//공지사항 글쓰기 처리영역
			String ntitle = request.getParameter("ntitle");
			String ncontent = request.getParameter("ncontent");
			//세션 가져오기
			//String id = (String)session.getAttribute("sessionId");

			//db에 저장
			NBoard nb = new NBoard();
			nb.setNtitle(ntitle);
			nb.setNcontent(ncontent);

			nDAO.nWrite(nb);

			nextPage = "/noticeboardlist.do";
		}else if(command.equals("/noticeboardview.do")) {		//공지사항 글 상세보기
			int nno = Integer.parseInt(request.getParameter("nno"));

			NBoard nboard = nDAO.getNBoard(nno);

			request.setAttribute("nboard", nboard);

			nextPage = "/board/noticeboardview.jsp";
		}else if(command.equals("/qawriteform.do")) {			//Q&A 글쓰기 페이지

			nextPage = "/board/qawriteform.jsp";
		}else if(command.equals("/qaboardwrite.do")) {			//Q&A 글쓰기 처리영역
			String qtitle = request.getParameter("qtitle");
			String qcontent = request.getParameter("qcontent");
			//세션 가져오기
			String id = (String)session.getAttribute("sessionId");

			//db에 저장
			QABoard qab = new QABoard();
			qab.setQtitle(qtitle);
			qab.setQcontent(qcontent);
			qab.setId(id);

			qDAO.qaWrite(qab);

			nextPage = "/qaboardlist.do";
		}else if(command.equals("/qaboardview.do")) {			//Q&A 글 상세보기
			//글 제목에서 글 번호 받기
			int qno = Integer.parseInt(request.getParameter("qno"));
			//글 상세보기 처리
			QABoard qab = qDAO.getQABoard(qno);
			//모델 생성후 뷰페이지로 보내기
			request.setAttribute("qab", qab);

			nextPage = "/board/qaboardview.jsp";
		}else if(command.equals("/deleteqaboard.do")) {
			int qno = Integer.parseInt(request.getParameter("qno"));

			//삭제 처리 메서드 실행
			qDAO.deleteQABoard(qno);

			nextPage = "/qaboardlist.do";
		}else if(command.equals("/updateqaboardform.do")) {

			nextPage = "/board/qaupdateboardform.jsp";
		}else if(command.equals("/updateqaboard.do")) {

			nextPage = "/qaboardlist.do";
		}else if(command.equals("/reviewwriteform.do")) {

			nextPage = "/board/reviewwriteform.jsp";
		}else if(command.equals("/reviewwrite.do")) {
			String rtitle = request.getParameter("rtitle");
			String rcontent = request.getParameter("rcontent");

			String id = (String)session.getAttribute("sessionId");

			RBoard rb = new RBoard();
			rb.setRtitle(rtitle);
			rb.setRcontent(rcontent);
			rb.setId(id);

			rDAO.rWrite(rb);

			nextPage = "/reviewboardlist.do";
		}else if(command.equals("/reviewboardview.do")) {
			int rno = Integer.parseInt(request.getParameter("rno"));
			RBoard rb = rDAO.getRBoard(rno);

			request.setAttribute("rboardList", rb);

			nextPage = "/board/reviewboardview.jsp";
		}else if(command.equals("/updatereviewboardform.do")) {

			nextPage = "/board/updatereviewboardform.jsp";
		}else if(command.equals("/deletereviewboard.do")) {

			int rno = Integer.parseInt(request.getParameter("rno"));

			rDAO.deleteRBoard(rno);

			nextPage = "/reviewboardlist.do";
		}


		//redirect와 forward 구분하기
		if(command.equals("/insertproduct.do") || command.equals("/deleteproduct.do") || command.equals("/update.do")){
			response.sendRedirect("/productmanagement.do");
		}else {
			RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
			dispatch.forward(request, response);
		}

	}

}
