package cn.oppotm.entity;

public class Good {
	private int good_id;//商品id
	private String good_name;//商品名
	private String good_type;//商品类型
	private String introduce;//商品介绍
	private double originalPrice;//原价
	private double discountedPrice;//现价
	private String image_name;//图片名
	private int  inventory;  //数量
	
	public Good() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Good(int good_id, String good_name, String good_type, String introduce, double originalPrice,
			double discountedPrice, String image_name, int inventory) {
		super();
		this.good_id = good_id;
		this.good_name = good_name;
		this.good_type = good_type;
		this.introduce = introduce;
		this.originalPrice = originalPrice;
		this.discountedPrice = discountedPrice;
		this.image_name = image_name;
		this.inventory = inventory;
	}

	public int getGood_id() {
		return good_id;
	}
	public void setGood_id(int good_id) {
		this.good_id = good_id;
	}
	public String getGood_name() {
		return good_name;
	}
	public void setGood_name(String good_name) {
		this.good_name = good_name;
	}
	public String getGood_type() {
		return good_type;
	}
	public void setGood_type(String good_type) {
		this.good_type = good_type;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public double getOriginalPrice() {
		return originalPrice;
	}
	public void setOriginalPrice(double originalPrice) {
		this.originalPrice = originalPrice;
	}
	public double getDiscountedPrice() {
		return discountedPrice;
	}
	public void setDiscountedPrice(double discountedPrice) {
		this.discountedPrice = discountedPrice;
	}
	public String getImage_name() {
		return image_name;
	}
	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}
	public int getInventory() {
		return inventory;
	}
	public void setInventory(int inventory) {
		this.inventory = inventory;
	}
	

}
