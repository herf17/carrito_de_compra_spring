package vape.springmvc.entity;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedStoredProcedureQueries;
import javax.persistence.NamedStoredProcedureQuery;
import javax.persistence.ParameterMode;
import javax.persistence.StoredProcedureParameter;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@NamedStoredProcedureQueries({
    @NamedStoredProcedureQuery(
	name = "call",
	procedureName = "com",
	parameters = {  
					@StoredProcedureParameter(mode = ParameterMode.OUT, type = Integer.class, name = "compid"),
				}
	)
})
@Entity
@Table (name="compras")
public class Compras {
	
	@Id
	private int id;
	
	@Temporal(value= TemporalType.TIMESTAMP)
	@Column
	private Date fechacompra;
	
	@Column(name = "totalApagar")
	private double totalApagar;
	
	public Compras() {
		
	}

	public double getTotalApagar() {
		return totalApagar;
	}

	public void setTotalApagar(double totalApagar) {
		this.totalApagar = totalApagar;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getFechacompra() {
		return fechacompra;
	}

	public void setFechacompra(Date fechacompra) {
		this.fechacompra = fechacompra;
	}

	@Override
	public String toString() {
		return "Compras [id=" + id + ", fechacompra=" + fechacompra + "]";
	}
	
}
