package Model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="porder")
public class porder {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer id;
	private String name;

	private Integer product1;
	private Integer product2;
	private Integer product3;
	private Integer sum;
	private Integer discount;
	private Date pdate;
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getProduct1() {
		return product1;
	}

	public void setProduct1(Integer product1) {
		this.product1 = product1;
	}

	public Integer getProduct2() {
		return product2;
	}

	public void setProduct2(Integer product2) {
		this.product2 = product2;
	}

	public Integer getProduct3() {
		return product3;
	}

	public void setProduct3(Integer product3) {
		this.product3 = product3;
	}

	public Integer getSum() {
		sum = product1*10 + product2*20 + product3*30;
		return sum;
	}

	public void setSum(Integer sum) {
		
		this.sum = sum;
	}

	public Integer getDiscount() {
		discount = sum ;
		if(discount >=100) discount = (int)(discount*0.9);
		return discount;
	}

	public void setDiscount(Integer discount) {
		
		this.discount = discount;
	}

	public Date getPdate() {
		return pdate;
	}

	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}

	public void add(String name, int p1 , int p2 , int p3) {
		setName(name);
		setProduct1(p1);
		setProduct2(p2);
		setProduct3(p3);
		getSum();
		getDiscount();
		setPdate(new Date());
		
	}
}
