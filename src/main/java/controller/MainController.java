package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
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

@WebServlet("*.do")   // '/'이하의 경로에서 do로 끝나는 확장자는 모두 허용
public class MainController extends HttpServlet {
	
	private static final long serialVersionUID = 10L;
	//필드
	MemberDAO mDAO;
	
    public MainController() {  //생성자
    	mDAO = new MemberDAO();
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
		//uri - 컨텍스트(/) + 파일(.do)
		String uri = request.getRequestURI();
		System.out.println(uri);
		//command 패턴
		String command = uri.substring(uri.lastIndexOf("/"));
		System.out.println(command);
		//이동 페이지
		String nextPage = "";
		//세션 객체 생성
		HttpSession session = request.getSession();
		
		//view에 출력 객체 생성
		PrintWriter out = response.getWriter();
		
		if(command.equals("/main.do")) {
			nextPage = "main.jsp";
		}else if(command.equals("/joinform.do")) {
			//get 방식
			nextPage = "/member/joinform.jsp";
		}else if(command.equals("/insertmember.do")) {
			//빈 회원 객체를 생성해서 데이터를 받아서 세팅
			//폼 데이터 받기
			String id = request.getParameter("id");
			String passwd = request.getParameter("passwd");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			String zip_code = request.getParameter("zip_code");
			String address = request.getParameter("address");
			String detailaddress = request.getParameter("detailaddress");
			
			//객체에 데이터 세팅
			MemberVO m = new MemberVO();
			m.setId(id);
			m.setPasswd(passwd);
			m.setName(name);
			m.setEmail(email);
			m.setPhone(phone);
			m.setZip_code(zip_code);
			m.setAddress(address);
			m.setDetailaddress(detailaddress);
			//db에 저장함
			mDAO.insertMember(m);
			
			//회원가입후 자동 로그인
			session.setAttribute("sessionId", m.getId()); //아이디를 가져와서 sessionId(세션이름) 발급
			session.setAttribute("sessionName", m.getName()); //성명을 가져와서 sessionName(세션이름) 발급
			//회원 가입후 이동
			nextPage = "/main.jsp";
		}else if(command.equals("/loginform.do")) {
			//로그인 폼페이지 이동
			nextPage = "/member/loginform.jsp";
		} else if(command.equals("/login.do")) {
		//아이디와 비번 파라미터 받기
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		//빈 객체를 생성해서 아이디와 비번 세팅해줌
		MemberVO m = new MemberVO();
		m.setId(id);
		m.setPasswd(passwd);
						
		//로그인 인증
		MemberVO member = mDAO.checkLogin(m);
		String name = member.getName();
		if(name != null) {	//result가 true이면 세션 발급
			session.setAttribute("sessionId", id);	//아이디 세션발급
			session.setAttribute("sessionName", name);	//이름 세션 발급
			//로그인 후 페이지 이동
			nextPage = "/main.jsp";
		}else {
			//에러를 모델로 보내기
			String error = "아이디나 비밀번호를 다시 확인해주세요.";
			request.setAttribute("error", error);
			//에러 발생 후 페이지 이동
			nextPage = "/member/loginform.jsp";
			}
		}else if(command.equals("/logout.do")) {
			session.invalidate();
			nextPage = "/main.jsp";
		}
		RequestDispatcher dispatch = 
				request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
		
	}

}