package review;

import java.io.Serializable;
import java.sql.Timestamp;

public class ReviewVO implements Serializable{

	private static final long serialVersionUID = 105L;
	
	private int rno;
	private String rtype;
	private String rtitle;
	private Timestamp rDate;
	private String rcontent;
	private int rrate; //별점
	private int likes;  //좋아요
	private String receipt;
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getRtype() {
		return rtype;
	}
	public void setRtype(String rtype) {
		this.rtype = rtype;
	}
	public String getRtitle() {
		return rtitle;
	}
	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}
	public Timestamp getrDate() {
		return rDate;
	}
	public void setrDate(Timestamp rDate) {
		this.rDate = rDate;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public int getRrate() {
		return rrate;
	}
	public void setRrate(int rrate) {
		this.rrate = rrate;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public String getReceipt() {
		return receipt;
	}
	public void setReceipt(String receipt) {
		this.receipt = receipt;
	}
	
	

}
