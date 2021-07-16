package vape.springmvc.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vape.springmvc.dao.ComprasTodasDAO;
import vape.springmvc.entity.ComprasTodas;

@Service
public class ComprasTodasServicesImpl implements ComprasTodasServices {
	
	@Autowired
	private ComprasTodasDAO comprasTodasDAO;
	
	@Override
	@Transactional
	public List <ComprasTodas> getComprasTodas(){
		return comprasTodasDAO.getComprasTodas();
	}

}
