package vape.springmvc.dao;

import java.util.List;

import vape.springmvc.entity.ProductosNuevos;

public interface ProductosNuevosDAO {
	public List < ProductosNuevos > getProductosNuevos();
	public void deleteProductosNuevos(int id);
}
