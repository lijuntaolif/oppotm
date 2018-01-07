package cn.oppotm.entity;

public class Image {
	private int image_id;//图片编号
	private String image_name;//图片名
	private int good_id;//商品id
	private int type;//图片类型
	
	public Image() {
		super();
	}
	
	public Image(int image_id, String image_name, int good_id, int type) {
		super();
		this.image_id = image_id;
		this.image_name = image_name;
		this.good_id = good_id;
		this.type = type;
	}

	public int getImage_id() {
		return image_id;
	}
	public void setImage_id(int image_id) {
		this.image_id = image_id;
	}
	public String getImage_name() {
		return image_name;
	}
	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}
	public int getGood_id() {
		return good_id;
	}
	public void setGood_id(int good_id) {
		this.good_id = good_id;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	

}
