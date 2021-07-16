package vape.springmvc.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vape.springmvc.entity.CarritoCompras;
import vape.springmvc.dao.CarritoComprasDAO;
import vape.springmvc.entity.ResponseTransfer;


@Service
public class CarritoComprasServicesImpl implements CarritoComprasServices {
	
	@Autowired
	private CarritoComprasDAO carritoComprasDAO;
	
	@Override
	@Transactional
	public void agregarCarritoCompras(CarritoCompras cc) {
		carritoComprasDAO.agregarCarritoCompras(cc);
	}
	
	@Override
	@Transactional
	public List <CarritoCompras> getCarritoCompras(){
		return carritoComprasDAO.getCarritoCompras();
	}
	
	@Override
	@Transactional
	public void cambiarCantidad(int cc, String id) {
		carritoComprasDAO.cambiarCantidad(cc, id);
	}
	@Override
	@Transactional
	public void deleteCarritoCompra (String id) {
		carritoComprasDAO.deleteCarritoCompras(id);
	}
	
	@Override
	@Transactional
	public ResponseTransfer comprobarStock(String idcomp, int cantid) {
		return carritoComprasDAO.comprobarStock(idcomp, cantid);
	}
	
	@Override
	@Transactional
	public void cambiarStock(String id, int cambio) {
		carritoComprasDAO.cambiarStock(id, cambio);
	}
	
	@Override
	@Transactional
	public void cambiarPrecio(String id, double cambio) {
		carritoComprasDAO.cambiarPrecio(id, cambio);
	}
	
}
