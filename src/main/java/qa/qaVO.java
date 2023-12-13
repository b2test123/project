package qa;

import java.io.Serializable;
import java.sql.Timestamp;

public class qaVO implements Serializable {

	private static final long serialVersionUID = 11L;
	
	private int qno;
	private String qtitle;
	private String qname;
	private Timestamp qdate;
	private int qhit;
	private String aid;
	private String id;
	
	public int getQno() {
		return qno;
	}
	public void setQno(int qno) {
		this.qno = qno;
	}
	public String getQtitle() {
		return qtitle;
	}
	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}
	public String getQname() {
		return qname;
	}
	public void setQname(String qname) {
		this.qname = qname;
	}
	public Timestamp getQdate() {
		return qdate;
	}
	public void setQdate(Timestamp qdate) {
		this.qdate = qdate;
	}
	public int getQhit() {
		return qhit;
	}
	public void setQhit(int qhit) {
		this.qhit = qhit;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

	

}
