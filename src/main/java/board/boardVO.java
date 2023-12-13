package board;

import java.io.Serializable;
import java.sql.Timestamp;

public class boardVO implements Serializable{

	private static final long serialVersionUID = 11L;
	
	private int bno;
	private String btitle;
	private String bcontent;
	private Timestamp createdate;
	private Timestamp bupdate;
	private String id;
	private String aid;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public Timestamp getCreatedate() {
		return createdate;
	}
	public void setCreatedate(Timestamp createdate) {
		this.createdate = createdate;
	}
	public Timestamp getBupdate() {
		return bupdate;
	}
	public void setBupdate(Timestamp bupdate) {
		this.bupdate = bupdate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	
	

}
