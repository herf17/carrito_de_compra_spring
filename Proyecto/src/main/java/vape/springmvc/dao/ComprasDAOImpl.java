package vape.springmvc.dao;


import org.springframework.stereotype.Repository;



import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import javax.persistence.StoredProcedureQuery;






@Repository
public class ComprasDAOImpl implements ComprasDAO {
	
	//@Autowired
	//private SessionFactory sessionFactory;
	
	@PersistenceContext
	EntityManager entityManager;
	
	
	@Override
	public int CompraHecha() {
		//Session session = sessionFactory.getCurrentSession();
		StoredProcedureQuery spQuery = 
				  entityManager.createNamedStoredProcedureQuery("call");
		spQuery.execute();
		return ((Integer) spQuery.getOutputParameterValue("compid"));
		/*Query query = session.getNamedQuery("call");
		@SuppressWarnings("unchecked")
		List<Compras> cc = query.getResultList();
		return cc;*/
		
	}

}
