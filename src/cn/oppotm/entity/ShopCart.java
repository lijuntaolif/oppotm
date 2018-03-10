package cn.oppotm.entity;

public class ShopCart {
	private int user_id;//用户id
	private int good_id;//商品id
	
	public ShopCart() {
		super();
	}
	
	public ShopCart(int user_id, int good_id) {
		super();
		this.user_id = user_id;
		this.good_id = good_id;
	}

	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getGood_id() {
		return good_id;
	}
	public void setGood_id(int good_id) {
		this.good_id = good_id;
	}
	

}
