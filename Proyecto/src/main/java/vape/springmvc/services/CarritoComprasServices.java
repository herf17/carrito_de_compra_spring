package vape.springmvc.services;

import java.util.List;
import vape.springmvc.entity.ResponseTransfer;

import vape.springmvc.entity.CarritoCompras;


public interface CarritoComprasServices {
	public void agregarCarritoCompras(CarritoCompras cc);
	public List < CarritoCompras > getCarritoCompras();
	public void cambiarCantidad(int cc, String id);
	public void deleteCarritoCompra(String id);
	public ResponseTransfer comprobarStock(String idcom, int cantid);
	public void cambiarStock(String id, int cambio);
	public void cambiarPrecio(String id, double cambio);

}
