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

import vape.springmvc.entity.ProductosNuevos;

@Repository
public class ProductosNuevosDAOImpl implements ProductosNuevosDAO {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	
	@Override
    public List < ProductosNuevos > getProductosNuevos() {
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery < ProductosNuevos > cq = cb.createQuery(ProductosNuevos.class);
        Root < ProductosNuevos > root = cq.from(ProductosNuevos.class);
        CriteriaQuery<ProductosNuevos> all = cq.select(root);
        TypedQuery<ProductosNuevos> allQuery = session.createQuery(all);
        return allQuery.getResultList();
	}
	@Override
    public void deleteProductosNuevos(int id) {
        Session session = sessionFactory.getCurrentSession();
        ProductosNuevos dele = session.byId(ProductosNuevos.class).load(id);
        session.delete(dele);
    }

}
