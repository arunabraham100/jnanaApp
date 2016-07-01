package entities;

import javax.xml.bind.annotation.*;
@XmlRootElement(name="Product")
public class Product {
	
	private String id;
	private String name;
	private double price;
	private int quality;
	/**
	 * @return the id
	 */
	@XmlElement(name="id")
	public String getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}
	/**
	 * @return the name
	 */
	@XmlElement(name="name")
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	/**
	 * @return the price
	 */
	@XmlElement(name="price")
	public double getPrice() {
		return price;
	}
	/**
	 * @param price the price to set
	 */
	public void setPrice(double price) {
		this.price = price;
	}
	/**
	 * @return the quality
	 */
	@XmlElement(name="quality")
	public int getQuality() {
		return quality;
	}
	/**
	 * @param quality the quality to set
	 */
	public void setQuality(int quality) {
		this.quality = quality;
	}
	public Product(String id, String name, double price, int quality) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.quality = quality;
	}
	public Product() {
		super();
	
	}
	

}
