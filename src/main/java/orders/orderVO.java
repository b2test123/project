package orders;

import java.io.Serializable;
import java.sql.Timestamp;

public class orderVO implements Serializable{
	
	private static final long serialVersionUID = 11L;
	
	private int orderno;
	private Timestamp orderdate;
	private int orderprice;
	private int totalprice;
	private String cardcompany;
	private int count;
	private String orderstatus;
	private int pno;
	private String id;
	
	public int getOrderno() {
		return orderno;
	}
	public void setOrderno(int orderno) {
		this.orderno = orderno;
	}
	public Timestamp getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Timestamp orderdate) {
		this.orderdate = orderdate;
	}
	public int getOrderprice() {
		return orderprice;
	}
	public void setOrderprice(int orderprice) {
		this.orderprice = orderprice;
	}
	public int getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	public String getCardcompany() {
		return cardcompany;
	}
	public void setCardcompany(String cardcompany) {
		this.cardcompany = cardcompany;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getOrderstatus() {
		return orderstatus;
	}
	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}
	public int getPno() {
		return pno;
	}
	public void setPno(int pno) {
		this.pno = pno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	
	
}