package qa;

import java.io.Serializable;
import java.sql.Timestamp;

public class QaVO implements Serializable{

	private static final long serialVersionUID = 104L;
	
	private int qno;
	private String qtitle;
	private String qname;
	private Timestamp qDate;
	private int qhit;
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
	public Timestamp getqDate() {
		return qDate;
	}
	public void setqDate(Timestamp qDate) {
		this.qDate = qDate;
	}
	public int getQhit() {
		return qhit;
	}
	public void setQhit(int qhit) {
		this.qhit = qhit;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}

}
