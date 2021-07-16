package vape.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="procesadores")
public class Procesadores {
	@Id
	@Column(name = "idproc")
	private String idproc;
	
	@Column(name = "modelo")
	private String modelo;
	
	@Column(name = "precio")
	private double precio;
	
	@Column(name = "img")
	private String img;
	
	@Column(name ="stock")
	private int stock;
	
	public Procesadores() {
		
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getIdproc() {
		return idproc;
	}

	public void setIdproc(String idproc) {
		this.idproc = idproc;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "Procesadores [idproc=" + idproc + ", modelo=" + modelo + ", precio=" + precio + ", img=" + img + "]";
	}
	
	
	

}
