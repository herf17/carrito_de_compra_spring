package vape.springmvc.dao;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vape.springmvc.entity.ComprasTodas;


@Repository
public class ComprasTodasDAOImpl implements ComprasTodasDAO {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public List<ComprasTodas> getComprasTodas(){
		Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery < ComprasTodas > cq = cb.createQuery(ComprasTodas.class);
        Root < ComprasTodas > root = cq.from(ComprasTodas.class);
        CriteriaQuery<ComprasTodas> all = cq.select(root);
        TypedQuery<ComprasTodas> allQuery = session.createQuery(all);
        return allQuery.getResultList();
	}

}
