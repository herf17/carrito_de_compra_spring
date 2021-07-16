package vape.springmvc.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import vape.springmvc.entity.TarjetasGraficas;
import vape.springmvc.dao.TarjetasGraficasDAO;

@Service
public class TarjetasGraficasServicesImpl implements TarjetasGraficasServices {
	
	@Autowired
	TarjetasGraficasDAO tarjetasGraficasDAO;
	
	@Override
	@Transactional
	public TarjetasGraficas getTarjetaGrafica(String idtg) {
		return tarjetasGraficasDAO.getTarjetaGrafica(idtg);
	}
}
