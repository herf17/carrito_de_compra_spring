package vape.springmvc.services;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vape.springmvc.dao.ComprasDAO;


@Service
public class ComprasServicesImpl implements ComprasServices {
	
	@Autowired
	ComprasDAO comprasDAO;
	
	@Override
	@Transactional
	public int CompraHecha() {
		return comprasDAO.CompraHecha();
	}
}
