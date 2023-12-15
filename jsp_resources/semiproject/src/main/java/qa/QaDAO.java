package qa;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;

public class QaDAO {
	Connection conn = null;         //db연결 및 종료
	PreparedStatement pstmt = null; //sql처리
	ResultSet rs = null;			//검색한 데이터 셋
	
	//Q&A 게시글 목록
	public List<QaVO> getQaBoardList(){
		List<QaVO> qboardList = new ArrayList<>();
		try {
			conn = JDBCUtil.getConnection();
			String sql = "SELECT * FROM qa ORDER BY qno DESC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				QaVO qa = new QaVO();
				qa.setQno(rs.getInt("qno"));
				qa.setQtitle(rs.getString("qtitle"));
				qa.setQname(rs.getString("qname"));
				qa.setqDate(rs.getTimestamp("qdate"));
				qa.setQhit(rs.getInt("qhit"));
				qa.setId(rs.getString("id"));
				
				qboardList.add(qa);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		
		return qboardList;
	} //게시글 목록
	
	//게시판 페이지 클릭
	public List<QaVO> getQaBoardList(int page){
		List<QaVO> qboardList = new ArrayList<>();
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select * "
					+"from (select rownum RN, qa.* from (select * from qa order by qno desc) qa) "
					+ "where RN >= ? and RN <= ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, (page-1)*10+1); //시작행(start row)
			pstmt.setInt(2, page*10); //페이지당 게시글 끝번호
			rs = pstmt.executeQuery();
			while(rs.next()) {
				QaVO qa = new QaVO();
				qa.setQno(rs.getInt("qno"));
				qa.setQtitle(rs.getString("qtitle"));
				qa.setQname(rs.getString("qname"));
				qa.setqDate(rs.getTimestamp("qdate"));
				qa.setQhit(rs.getInt("qhit"));
				qa.setId(rs.getString("id"));
				
				qboardList.add(qa);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		
		return qboardList;
	}
	
}
