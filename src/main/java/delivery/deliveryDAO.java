
package delivery;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;

public class deliveryDAO {
	
	Connection conn = null;         
	PreparedStatement pstmt = null; 
	ResultSet rs = null;            
	
	//회원 목록
	public List<deliveryVO> getDeliverList(){
		List<deliveryVO> deliverList = new ArrayList<>();
		try {
			//db 연결
			conn = JDBCUtil.getConnection();
			//sql 처리
			String sql = "SELECT * FROM delivery ORDER BY dno";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {

				deliveryVO d = new deliveryVO();
				d.setDno(rs.getInt("dno"));
				d.setName(rs.getString("name"));
				d.setZip_code(rs.getString("zip_code"));
				d.setAddress(rs.getString("address"));
				d.setDetailaddress(rs.getString("detailaddress"));
				d.setRequest(rs.getString("request"));
				d.setOrderno(rs.getInt("orderno"));

				deliverList.add(d);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			JDBCUtil.close(conn, pstmt, rs);
		}
		return deliverList;
	}
	
	//회원 가입
	public void insertDeliveryVO(deliveryVO d) {
		try {
			conn = JDBCUtil.getConnection();
			
			String sql = "INSERT INTO deliveryVO (dno, name, zip_code, address, "
					+ "detailaddress, request, orderno) "
					+ "VALUES(seq_dno.NEXTVAL, ?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, d.getName());
			pstmt.setString(2, d.getZip_code());
			pstmt.setString(3, d.getAddress());
			pstmt.setString(4, d.getDetailaddress());
			pstmt.setString(5, d.getRequest());
			pstmt.setInt(5, d.getOrderno());

			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt);
		}
	}
	
	//회원 정보(상세보기)
	public deliveryVO getDeliveryVO(String name) {
		deliveryVO m = new deliveryVO();
		try {
			conn = JDBCUtil.getConnection();
		
			String sql = "SELECT * FROM deliverVO WHERE name = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				m.setDno(rs.getInt("dno"));
				m.setName(rs.getString("name"));
				m.setZip_code(rs.getString("zip_code"));
				m.setAddress(rs.getString("address"));
				m.setDetailaddress(rs.getString("detailaddress"));
				m.setRequest(rs.getString("request"));
				m.setOrderno(rs.getInt("orderno"));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn, pstmt, rs);
		}
		return m;
	}
	
}//dao 클래스 닫기
