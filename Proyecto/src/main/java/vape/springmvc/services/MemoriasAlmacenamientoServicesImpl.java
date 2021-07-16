package vape.springmvc.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vape.springmvc.dao.MemoriasAlmacenamientoDAO;
import vape.springmvc.entity.MemoriasAlmacenamiento;

@Service
public class MemoriasAlmacenamientoServicesImpl implements MemoriasAlmacenamientoServices {
	
	@Autowired
	private MemoriasAlmacenamientoDAO memoriasAlmacenamientoDAO;
	
	@Override
	@Transactional
	public MemoriasAlmacenamiento getMemoriaAlmacenamiento(String idma) {
		return memoriasAlmacenamientoDAO.getMemoriaAlmacenamiento(idma);
	}
	

}
