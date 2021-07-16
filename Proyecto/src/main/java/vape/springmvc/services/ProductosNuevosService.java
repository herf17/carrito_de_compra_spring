package vape.springmvc.services;

import java.util.List;
import vape.springmvc.entity.ProductosNuevos;

public interface ProductosNuevosService {
	public List < ProductosNuevos > getProductosNuevos();
	public void deleteProductosNuevos(int id);
}
