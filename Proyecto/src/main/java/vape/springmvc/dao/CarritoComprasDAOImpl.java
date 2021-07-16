package vape.springmvc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.StoredProcedureQuery;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vape.springmvc.entity.CarritoCompras;
import vape.springmvc.entity.ResponseTransfer;




@Repository
public class CarritoComprasDAOImpl implements CarritoComprasDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@PersistenceContext
	EntityManager entityManager;
	
	@Override
	public List <CarritoCompras> getCarritoCompras(){
		Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery < CarritoCompras > cq = cb.createQuery(CarritoCompras.class);
        Root < CarritoCompras > root = cq.from(CarritoCompras.class);
        CriteriaQuery<CarritoCompras> all = cq.select(root);
        TypedQuery<CarritoCompras> allQuery = session.createQuery(all);
        return allQuery.getResultList();
	}
	
	@Override
	public void agregarCarritoCompras(CarritoCompras cc) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(cc);
	}
	
	@Override
	public void cambiarCantidad(int cc, String id) {
		Session session = sessionFactory.getCurrentSession();
		CarritoCompras cambio = session.byId(CarritoCompras.class).load(id);
		cambio.setCantidad(cc);
		session.update(cambio);
		
	}
	
	@Override
	public void deleteCarritoCompras(String id) {
		Session session = sessionFactory.getCurrentSession();
        CarritoCompras delet = session.byId(CarritoCompras.class).load(id);
        session.delete(delet);
	}
	
	@Override
	public ResponseTransfer comprobarStock(String idcomp, int cantid) {
		StoredProcedureQuery query = entityManager.createNamedStoredProcedureQuery("compstock");
		query.setParameter("id", idcomp);
		query.setParameter("cantidad", cantid);
		query.execute();
		ResponseTransfer rtt = new ResponseTransfer();
		rtt.setStock((Integer) query.getOutputParameterValue("stock"));
		rtt.setConfirm((Boolean) query.getOutputParameterValue("confir"));
		return rtt;
		
	}
	
	@Override
	public void cambiarStock(String id, int cambiar) {
		StoredProcedureQuery query = entityManager.createNamedStoredProcedureQuery("cambiarstock");
		query.setParameter("id", id);
		query.setParameter("nuevoStock", cambiar);
		query.execute();
	}
	
	@Override
	public void cambiarPrecio(String id, double cambiar) {
		StoredProcedureQuery query = entityManager.createNamedStoredProcedureQuery("cambiarprecio");
		query.setParameter("id", id);
		query.setParameter("nuevoPrecio", cambiar);
		query.execute();
	}
	
}
