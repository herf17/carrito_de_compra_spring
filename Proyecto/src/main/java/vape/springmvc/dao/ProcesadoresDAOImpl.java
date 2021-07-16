package vape.springmvc.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import vape.springmvc.entity.Procesadores;

@Repository
public class ProcesadoresDAOImpl implements ProcesadoresDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public Procesadores getProcesadores(String idp) {
		Session currentSession = sessionFactory.getCurrentSession();
        Procesadores proc = currentSession.get(Procesadores.class, idp);
        return proc;
	}
}
