package test.beans;

public class Order {
	
	

	private int id;
	private String coin;
	private double quantity;
	private double price;
	boolean sell=false;
	boolean buy=false;
	
		
	
	

	@Override
	public String toString() {
		return "Order [id=" + id + ", coin=" + coin + ", quantity=" + quantity + ", price=" + price + ", sell=" + sell
				+ ", buy=" + buy + "]";
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public String getCoin() {
		return coin;
	}
	public void setCoin(String coin) {
		this.coin = coin;
	}
	public double getQuantity() {
		return quantity;
	}
	public void setQuantity(double quantity) {
		this.quantity = quantity;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
	public boolean isSell() {
		return sell;
	}
	public void setSell(boolean sell) {
		this.sell = sell;
	}
	public boolean isBuy() {
		return buy;
	}
	public void setBuy(boolean buy) {
		this.buy = buy;
	}
	

}
