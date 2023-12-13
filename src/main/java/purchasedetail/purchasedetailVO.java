package purchasedetail;

import java.io.Serializable;
import java.sql.Timestamp;

public class purchasedetailVO implements Serializable{
	
	private static final long serialVersionUID = 11L;
	
	private String receipt;
	private String product;
	private Timestamp orderdate;
	private int price;
	private String id;
	private int orderno;
	
	public String getReceipt() {
		return receipt;
	}
	public void setReceipt(String receipt) {
		this.receipt = receipt;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public Timestamp getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(Timestamp orderdate) {
		this.orderdate = orderdate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getOrderno() {
		return orderno;
	}
	public void setOrderno(int orderno) {
		this.orderno = orderno;
	}
	
	
}
