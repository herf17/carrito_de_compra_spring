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

import vape.springmvc.entity.ProductosStock;

@Repository
public class ProductosStockDAOImpl implements ProductosStockDAO {
	
	@Autowired
    private SessionFactory sessionFactory;
	
	@Override
	public List<ProductosStock> getProductosStock(){
		Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery < ProductosStock > cq = cb.createQuery(ProductosStock.class);
        Root < ProductosStock > root = cq.from(ProductosStock.class);
        CriteriaQuery<ProductosStock> all = cq.select(root);
        TypedQuery<ProductosStock> allQuery = session.createQuery(all);
        return allQuery.getResultList();
	}

}
