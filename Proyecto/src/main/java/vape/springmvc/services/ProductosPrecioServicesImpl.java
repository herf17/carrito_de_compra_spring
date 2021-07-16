package vape.springmvc.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import vape.springmvc.entity.ProductosPrecio;

import java.util.List;
import vape.springmvc.dao.ProductosPrecioDAO;

@Service
public class ProductosPrecioServicesImpl implements ProductosPrecioServices {
	
	@Autowired
	private ProductosPrecioDAO productosPrecioDAO;
	
	@Override
	@Transactional
	public List <ProductosPrecio> getProductosPrecio(){
		return productosPrecioDAO.getProductosPrecio();
	}

}
