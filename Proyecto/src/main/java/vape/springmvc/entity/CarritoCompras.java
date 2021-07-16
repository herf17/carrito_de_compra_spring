package vape.springmvc.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.StoredProcedureParameter;
import javax.persistence.ParameterMode;
import javax.persistence.Table;

@NamedStoredProcedureQueries({
    @NamedStoredProcedureQuery(
	name = "compstock",
	procedureName = "validaStock",
	parameters = { 
					@StoredProcedureParameter(mode = ParameterMode.IN, type = String.class, name = "id"), 
					@StoredProcedureParameter(mode = ParameterMode.IN, type = Integer.class, name = "cantidad"), 
					@StoredProcedureParameter(mode = ParameterMode.OUT, type = Integer.class, name = "stock"),
					@StoredProcedureParameter(mode = ParameterMode.OUT, type = Boolean.class, name = "confir")
				}
	),
    @NamedStoredProcedureQuery(
    		name = "cambiarstock",
    		procedureName = "actualizarStock",
    		parameters = { 
    						@StoredProcedureParameter(mode = ParameterMode.IN, type = String.class, name = "id"), 
    						@StoredProcedureParameter(mode = ParameterMode.IN, type = Integer.class, name = "nuevoStock")
    					}
    		),
    @NamedStoredProcedureQuery(
    		name = "cambiarprecio",
    		procedureName = "actualizarPrecio",
    		parameters = { 
    						@StoredProcedureParameter(mode = ParameterMode.IN, type = String.class, name = "id"), 
    						@StoredProcedureParameter(mode = ParameterMode.IN, type = Double.class, name = "nuevoPrecio")
    					}
    		)
})
@Entity
@Table(name="carritoCompras")
public class CarritoCompras {
	@Id
	private String id;
	
	@Column(name = "modelo")
	private String modelo;
	
	@Column(name = "precio")
	private double precio;
	
	@Column(name = "img")
	private String img;
	
	@Column(name = "cantidad")
	private int cantidad;
	
	
	public CarritoCompras() {
		
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
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


	public int getCantidad() {
		return cantidad;
	}


	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}


	@Override
	public String toString() {
		return "CarritoCompras [id=" + id + ", modelo=" + modelo + ", precio=" + precio + ", img=" + img + ", cantidad="
				+ cantidad + "]";
	}
	
}
