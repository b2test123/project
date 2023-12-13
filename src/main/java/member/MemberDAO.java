package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;

//회원을 추가, 검색, 수정, 삭제할 클래스
public class MemberDAO {
	
	Connection conn = null;         //db 연결 및 종료
	PreparedStatement pstmt = null; //sql 처리
	ResultSet rs = null;            //검색한 데이터셋
	
	//회원 목록
	public List<MemberVO> getMemberList(){
		List<MemberVO> memberList = new ArrayList<>();
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "SELECT * FROM MemberVO ORDER BY id";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				//빈 회원을 생성해서 db에서 정보를 가져와서 세팅
				MemberVO m = new MemberVO();
				m.setId(rs.getString("id"));
				m.setPasswd(rs.getString("passwd"));
				m.setName(rs.getString("name"));
				m.setEmail(rs.getString("email"));
				m.setPhone(rs.getString("phone"));
				m.setJoindate(rs.getTimestamp("joindate"));
				m.setZip_code(rs.getString("zip_code"));
				m.setAddress(rs.getString("address"));
				m.setDetailaddress(rs.getString("detailaddress"));
				//리스트에 회원을 추가
				memberList.add(m);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { //db 종료
			JDBCUtil.close(conn, pstmt, rs);
		}
		return memberList;
	}
	
	//회원 가입
	public void insertMember(MemberVO m) {
		try {
			conn = JDBCUtil.getConnection();
			
			String sql = "INSERT INTO MemberVO (id, passwd, name, email, phone, "
					+ "zip_code, address, detailaddress) "
					+ "VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			//폼에 입력된 데이터를 가져와서 db에 저장함
			pstmt.setString(1, m.getId());
			pstmt.setString(2, m.getPasswd());
			pstmt.setString(3, m.getName());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getPhone());
			pstmt.setString(6, m.getZip_code());
			pstmt.setString(7, m.getAddress());
			pstmt.setString(8, m.getDetailaddress());
			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//회원 정보(상세보기)
	public MemberVO getMember(String id) {
		MemberVO m = new MemberVO();
		try {
			conn = JDBCUtil.getConnection();
		
			String sql = "SELECT * FROM MemberVO WHERE id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				m.setId(rs.getString("id"));
				m.setPasswd(rs.getString("passwd"));
				m.setName(rs.getString("name"));
				m.setEmail(rs.getString("email"));
				m.setPhone(rs.getString("phone"));
				m.setJoindate(rs.getTimestamp("joindate"));
				m.setZip_code(rs.getString("zip_code"));
				m.setAddress(rs.getString("address"));
				m.setDetailaddress(rs.getString("detailaddress"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return m;
	}
	
	//로그인 인증(객체:member 로 반환)
	public MemberVO checkLogin(MemberVO m) {
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT * FROM memberVO "
					+ "WHERE id = ? and passwd = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getId());
			pstmt.setString(2, m.getPasswd());
			rs = pstmt.executeQuery();
			if(rs.next()) {
				//이름을 db에서 가져옴
				m.setName(rs.getString("name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return m;
	}
	
	
	//ID 중복 검사
	public boolean getDuplicatedId(String id) {
		boolean result = false;
		
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT DECODE(COUNT(*), 1, 'true', 'false') AS result "
					+ "FROM member WHERE id = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				//별칭을 칼럼으로 db에서 데이터를 가져옴
				result = rs.getBoolean("result");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
}//dao 클래스 닫기