package notice;

import java.io.Serializable;
import java.sql.Timestamp;

public class noticeVO implements Serializable{

	private static final long serialVersionUID = 11L;
	
	private int nno;
	private String ntitle;
	private String nname;
	private Timestamp ndate;
	private int nhit;
	private String aid;
	
	public int getNno() {
		return nno;
	}
	public void setNno(int nno) {
		this.nno = nno;
	}
	public String getNtitle() {
		return ntitle;
	}
	public void setNtitle(String ntitle) {
		this.ntitle = ntitle;
	}
	public String getNname() {
		return nname;
	}
	public void setNname(String nname) {
		this.nname = nname;
	}
	public Timestamp getNdate() {
		return ndate;
	}
	public void setNdate(Timestamp ndate) {
		this.ndate = ndate;
	}
	public int getNhit() {
		return nhit;
	}
	public void setNhit(int nhit) {
		this.nhit = nhit;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	
	
}
