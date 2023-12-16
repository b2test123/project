package product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;
import member.MemberVO;

public class ProductDAO {
	Connection conn = null;         //db연결 및 종료
	PreparedStatement pstmt = null; //sql처리
	ResultSet rs = null;			//검색한 데이터 셋


	//상품 전체 목록보기
	public List<ProductVO> getProductList() {
		List<ProductVO> productList = new ArrayList<>();
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select * from product";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				ProductVO p = new ProductVO();
				p.setPno(rs.getInt("pno"));
				p.setPname(rs.getString("pname"));
				p.setPrice(rs.getInt("price"));
				p.setP_score(rs.getInt("p_score"));
				p.setSal_num(rs.getInt("sal_num"));
				p.setPcontent(rs.getString("pcontent"));
				p.setCategory(rs.getString("category"));
				p.setPfilename(rs.getString("pfilename"));

				productList.add(p);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return productList;
	}

	//상품 추가
	public void insertProduct(ProductVO p) {
		conn = JDBCUtil.getConnection();
		try {
			String sql = "insert into product(pno, pname, price, pcontent, category, pfilename) "
					+ "values(seq_pno.NEXTVAL, ?, ?, ?, ?, ?)";

			pstmt = conn.prepareStatement(sql);
			//폼에 입력된 데이터를 가져와서 db에 저장함
			pstmt.setString(1, p.getPname());
			pstmt.setInt(2, p.getPrice());
			pstmt.setString(3, p.getPcontent());
			pstmt.setString(4, p.getCategory());
			pstmt.setString(5, p.getPfilename());

			//sql 실행
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}//상품 추가

	//상품 상세보기
	public ProductVO getProductVO(int pno) {
		ProductVO p = new ProductVO();
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select * from  product where pno = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pno);
			rs = pstmt.executeQuery();

			if(rs.next()) {
				p.setPno(rs.getInt("pno"));
				p.setPname(rs.getString("pname"));
				p.setPrice(rs.getInt("price"));
				p.setP_score(rs.getInt("p_score"));
				p.setSal_num(rs.getInt("sal_num"));
				p.setPcontent(rs.getString("pcontent"));
				p.setCategory(rs.getString("category"));
				p.setPfilename("pfilename");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return p;
	}

	//상품 삭제
	public void deleteproduct(int pno) {
		try {
			conn = JDBCUtil.getConnection();
			String sql = "delete from product where pno = ?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, pno);

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}

	//상품 수정
	public void updateproduct(ProductVO p) {

		try {
			conn = JDBCUtil.getConnection();
			String sql = "update product set pname = ?, price= ?, pcontent = ?, category = ?, pfilename = ? where pno = ?";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, p.getPname());
			pstmt.setInt(2, p.getPrice());
			pstmt.setString(3, p.getPcontent());
			pstmt.setString(4, p.getCategory());
			pstmt.setString(5, p.getPfilename());
			pstmt.setInt(6, p.getPno());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}

	//상품목록 검색
	public List<ProductVO> getCategoryList(String category) {
		List<ProductVO> categoryList = new ArrayList<>();
		try {
			conn = JDBCUtil.getConnection();
			String sql = "select * from product where category Like ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, "%" + category + "%");
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ProductVO prd = new ProductVO();
				prd.setPno(rs.getInt("pno"));
				prd.setPname(rs.getString("pname"));
				prd.setPrice(rs.getInt("price"));
				prd.setP_score(rs.getInt("p_score"));
				prd.setSal_num(rs.getInt("sal_num"));
				prd.setPcontent(rs.getString("pcontent"));
				prd.setCategory(rs.getString("category"));
				prd.setPfilename(rs.getString("pfilename"));

				categoryList.add(prd);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return categoryList;
	}
}
