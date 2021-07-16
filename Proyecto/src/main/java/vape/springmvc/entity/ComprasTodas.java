package vape.springmvc.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class ComprasTodas {
	
	@Id
	private int ID;
	
	@Column
	private int i;
	
	@Temporal(value= TemporalType.TIMESTAMP)
	@Column
	private Date fechaCompra;
	
	@Column
	private double totalApagar;
	
	@Column
	private String idProducto;
	
	@Column
	private String modeloPoducto;
	
	@Column
	private int cantidad;
	
	@Column
	private double precio;
	
	public ComprasTodas() {
		
	}

	

	public int getID() {
		return ID;
	}



	public void setID(int iD) {
		ID = iD;
	}



	public int getI() {
		return i;
	}



	public void setI(int i) {
		this.i = i;
	}



	public Date getFechaCompra() {
		return fechaCompra;
	}

	public void setFechaCompra(Date fechaCompra) {
		this.fechaCompra = fechaCompra;
	}

	public double getTotalApagar() {
		return totalApagar;
	}

	public void setTotalApagar(double totalApagar) {
		this.totalApagar = totalApagar;
	}

	public String getIdProducto() {
		return idProducto;
	}

	public void setIdProducto(String idProducto) {
		this.idProducto = idProducto;
	}

	public String getModeloPoducto() {
		return modeloPoducto;
	}

	public void setModeloPoducto(String modeloPoducto) {
		this.modeloPoducto = modeloPoducto;
	}

	public int getCantidad() {
		return cantidad;
	}

	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}
	
	
}
