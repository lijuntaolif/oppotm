package cn.oppotm.entity;

import oracle.net.aso.d;

public class UnfinishedForm {
	private int user_id; //�û�id
	private int good_id; //��Ʒid
	private String  image_name; //ͼƬid
	private String introduce;// ��Ʒ����
	private double discountedPrice;//�ۺ�۸�
	private int num;           //��Ʒ����
	private double pay;           //������
	
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
