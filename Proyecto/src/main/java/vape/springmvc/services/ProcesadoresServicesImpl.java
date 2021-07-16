package vape.springmvc.services;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vape.springmvc.entity.Procesadores;
import vape.springmvc.dao.ProcesadoresDAO;

@Service
public class ProcesadoresServicesImpl implements ProcesadoresServices {
	
	@Autowired
	ProcesadoresDAO procesadoresDAO;
	
	@Override
	@Transactional
	public Procesadores getProcesador(String idp) {
		return procesadoresDAO.getProcesadores(idp);
		
	}

}
