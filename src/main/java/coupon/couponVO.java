package coupon;

import java.io.Serializable;
import java.sql.Date;

public class couponVO implements Serializable{
	
	private static final long serialVersionUID = 11L;
	
	private int cno;
	private String cid;
	private Date validity;
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
	public Date getValidity() {
		return validity;
	}
	public void setValidity(Date validity) {
		this.validity = validity;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

}
