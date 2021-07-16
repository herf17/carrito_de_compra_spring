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

import vape.springmvc.entity.ProductosPrecio;;

@Repository
public class ProductosPrecioDAOImpl implements ProductosPrecioDAO {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public List<ProductosPrecio> getProductosPrecio(){
		Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery < ProductosPrecio > cq = cb.createQuery(ProductosPrecio.class);
        Root < ProductosPrecio > root = cq.from(ProductosPrecio.class);
        CriteriaQuery<ProductosPrecio> all = cq.select(root);
        TypedQuery<ProductosPrecio> allQuery = session.createQuery(all);
        return allQuery.getResultList();
	}

}
