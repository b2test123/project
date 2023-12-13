package category;

import java.io.Serializable;

public class categoryVO implements Serializable{
	
	private static final long serialVersionUID = 11L;

	private int cnum;
	private String categoryname;
	private int cnum2;
	private int pno;
	
	public int getCnum() {
		return cnum;
	}
	public void setCnum(int cnum) {
		this.cnum = cnum;
	}
	public String getCategoryname() {
		return categoryname;
	}
	public void setCategoryname(String categoryname) {
		this.categoryname = categoryname;
	}
	public int getCnum2() {
		return cnum2;
	}
	public void setCnum2(int cnum2) {
		this.cnum2 = cnum2;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	
	
}
