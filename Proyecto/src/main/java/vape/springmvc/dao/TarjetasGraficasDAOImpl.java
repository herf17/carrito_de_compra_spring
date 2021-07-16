package vape.springmvc.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vape.springmvc.entity.TarjetasGraficas;

@Repository
public class TarjetasGraficasDAOImpl implements TarjetasGraficasDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public TarjetasGraficas getTarjetaGrafica(String idtg) {
		Session currentSession = sessionFactory.getCurrentSession();
		TarjetasGraficas tarjetgrafic = currentSession.get(TarjetasGraficas.class, idtg);
		return tarjetgrafic;
	}
	
	

}
