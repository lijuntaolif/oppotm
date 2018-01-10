package cn.oppotm.entity;



public class UnfinishedForm {
	private int user_id; //用户id
	private int good_id; //商品id
	private String  image_name; //图片id
	private String introduce;// 商品介绍
	private double discountedPrice;//现价
	private int num;           //数量
	private double pay;           //金额
	
	public UnfinishedForm() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public UnfinishedForm(int user_id, int good_id, String image_name, String introduce, double discountedPrice,
			int num, double pay) {
		super();
		this.user_id = user_id;
		this.good_id = good_id;
		this.image_name = image_name;
		this.introduce = introduce;
		this.discountedPrice = discountedPrice;
		this.num = num;
		this.pay = pay;
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
	public String getImage_name() {
		return image_name;
	}
	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public double getDiscountedPrice() {
		return discountedPrice;
	}
	public void setDiscountedPrice(double discountedPrice) {
		this.discountedPrice = discountedPrice;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public double getPay() {
		return pay;
	}
	public void setPay(double pay) {
		this.pay = pay;
	}
	
}
