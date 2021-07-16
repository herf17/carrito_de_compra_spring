package vape.springmvc.dao;
import java.util.List;

import vape.springmvc.entity.CarritoCompras;
import vape.springmvc.entity.ResponseTransfer;


public interface CarritoComprasDAO {
	public List <CarritoCompras> getCarritoCompras();
	public void agregarCarritoCompras(CarritoCompras cc);
	public void cambiarCantidad(int cc, String id);
	public void deleteCarritoCompras(String id);
	public ResponseTransfer comprobarStock(String idcomp, int cantid);
	public void cambiarStock(String id, int cambio);
	public void cambiarPrecio(String id, double cambio);

}
