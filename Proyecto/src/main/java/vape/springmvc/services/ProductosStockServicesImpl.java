package vape.springmvc.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vape.springmvc.entity.ProductosStock;
import java.util.List;


import vape.springmvc.dao.ProductosStockDAO;

@Service
public class ProductosStockServicesImpl implements ProductosStockServices {
	
	@Autowired
	private ProductosStockDAO productosStockDAO;
	
	@Override
	@Transactional
	public List <ProductosStock> getProductosStock(){
		return productosStockDAO.getProductosStock();
	}

}
