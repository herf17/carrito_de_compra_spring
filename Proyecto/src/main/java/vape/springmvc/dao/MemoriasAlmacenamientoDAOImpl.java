package vape.springmvc.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vape.springmvc.entity.MemoriasAlmacenamiento;

@Repository
public class MemoriasAlmacenamientoDAOImpl implements MemoriasAlmacenamientoDAO{
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public MemoriasAlmacenamiento getMemoriaAlmacenamiento(String idma) {
		Session currentSession = sessionFactory.getCurrentSession();
		MemoriasAlmacenamiento memoalm = currentSession.get(MemoriasAlmacenamiento.class, idma);
		return memoalm;
	}
}
