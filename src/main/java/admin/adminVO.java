package admin;

import java.io.Serializable;

public class adminVO implements Serializable{

	private static final long serialVersionUID = 11L;
	
	private String aid;
	private String passwd;
	
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	
	
}
