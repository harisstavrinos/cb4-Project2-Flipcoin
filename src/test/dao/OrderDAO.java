package test.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import test.beans.Order;

@Repository(value = "OrderDAO")
public class OrderDAO {

	@Autowired
	SessionFactory sessionFactory;

	public boolean addOrder(Order order) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean success = true;
		try {
			session.saveOrUpdate(order);
			transaction.commit();
			session.close();
		} catch (DataAccessException exception) {
			exception.printStackTrace();
			success = false;
		}

		return success;
	}


}
