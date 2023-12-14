package coupon;

import java.io.Serializable;
import java.sql.Timestamp;

public class couponVO implements Serializable{
	
	private static final long serialVersionUID = 136L;
	private int cno;
	private String cid;
	private Timestamp validity;
	private String id;
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public Timestamp getValidity() {
		return validity;
	}
	public void setValidity(Timestamp validity) {
		this.validity = validity;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	

}
