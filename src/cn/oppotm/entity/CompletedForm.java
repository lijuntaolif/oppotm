package cn.oppotm.entity;

public class CompletedForm {
	private int form_id;//  订单编号
	private int user_id;//  用户id
	private int good_id;// 商品编号
	private int num ;//     数量
	private double pay;//      金额
	private int  express;  //快递（1.顺丰  2.中通）
	private String  form_date ;//    订单日期
	private String   address;//  收货地址
	private int   post ;//    邮编
	private String   name  ;//   收货人名
	private int  phone  ;//  电话
	
	public CompletedForm() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public CompletedForm(int form_id, int user_id, int good_id, int num, double pay, int express, String form_date,
			String address, int post, String name, int phone) {
		super();
		this.form_id = form_id;
		this.user_id = user_id;
		this.good_id = good_id;
		this.num = num;
		this.pay = pay;
		this.express = express;
		this.form_date = form_date;
		this.address = address;
		this.post = post;
		this.name = name;
		this.phone = phone;
	}

	public int getForm_id() {
		return form_id;
	}
	public void setForm_id(int form_id) {
		this.form_id = form_id;
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
	public int getExpress() {
		return express;
	}
	public void setExpress(int express) {
		this.express = express;
	}
	public String getForm_date() {
		return form_date;
	}
	public void setForm_date(String form_date) {
		this.form_date = form_date;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPost() {
		return post;
	}
	public void setPost(int post) {
		this.post = post;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	
}
