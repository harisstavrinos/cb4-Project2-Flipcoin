package test.dao;

import test.beans.User;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

@Repository(value = "UserDAO")
public class UserDAO {
	
	@Autowired
	SessionFactory sessionFactory;
	   
	public  boolean userExists(User user) {

		
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean success = false;
		try {
			String hql = "FROM User user WHERE user.username=:username and user.password=:password";
			@SuppressWarnings("rawtypes")
			Query query = session.createQuery(hql);
			query.setParameter("username", user.getUsername());
			query.setParameter("password", user.getPassword());
			@SuppressWarnings("unchecked")
			List<User> list = query.list();
			
			transaction.commit();
			for (User user1 :list) {
				if(user1.getUsername().equalsIgnoreCase(user.getUsername())&& user1.getPassword().equals(user.getPassword())) {
					success=true;
				}
			}		
			session.close();
		} catch (DataAccessException exception) {
			exception.printStackTrace();
		}
		return success;
	}
	
public  boolean userNameExists(User user) {

		
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean success = false;
		try {
			String hql = "FROM User user WHERE user.username=:username ";
			@SuppressWarnings("rawtypes")
			Query query = session.createQuery(hql);
			query.setParameter("username", user.getUsername());
			@SuppressWarnings("unchecked")
			List<User> list = query.list();
			
			transaction.commit();
			for (User user1 :list) {
				if(user1.getUsername().equalsIgnoreCase(user.getUsername())) {
					success=true;
				}
			}		
			session.close();
		} catch (DataAccessException exception) {
			exception.printStackTrace();
		}
		return success;
	}

	public boolean addUser(User user) {

		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean success = true;
		try {
			session.saveOrUpdate(user);
			transaction.commit();
			session.close();
		} catch (DataAccessException exception) {
			exception.printStackTrace();
			success = false;
		}
		
		return success;
	}

	public List<User> allUsers() {
//		List<User> users = new ArrayList<User>(); 
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		try {
			
			String hql = "select user.username from User user ";
			@SuppressWarnings("rawtypes")
			Query query = session.createQuery(hql);
			@SuppressWarnings("unchecked")
			List<User> users = query.list();		
			transaction.commit();
			session.close();
			return users;
		} catch (DataAccessException exception) {
			exception.printStackTrace();
		}
		return null;
		
		
	
	}

}
