package vape.springmvc.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vape.springmvc.entity.ProductosNuevos;
import vape.springmvc.dao.ProductosNuevosDAO;

@Service
public class ProductosNuevosServiceImpl implements ProductosNuevosService {
	@Autowired
    private ProductosNuevosDAO productosNuevosDAO;
	
	@Override
    @Transactional
    public List < ProductosNuevos > getProductosNuevos() {
        return productosNuevosDAO.getProductosNuevos();
    }
	@Override
    @Transactional
    public void deleteProductosNuevos(int id) {
        productosNuevosDAO.deleteProductosNuevos(id);
    }

}
