package test.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import test.beans.Message;

@Repository(value = "MessageDAO")
public class MessageDAO {

	@Autowired
	SessionFactory sessionFactory;

	public boolean addMessage(Message message) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		boolean success = true;
		try {
			session.saveOrUpdate(message);
			transaction.commit();
			session.close();
		} catch (DataAccessException exception) {
			exception.printStackTrace();
			success = false;
		}

		return success;
	}

	public List<Message> allMessages(String reciever) {
		
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		@SuppressWarnings("unchecked")
		Query<Message> query = session.createQuery("from test.beans.Message where reciever like :reciever and trash like :trash");
		query.setParameter("reciever", reciever);
		query.setParameter("trash", false);
		List<Message> list = query.list();
			
		try {
			list = query.list();
			transaction.commit();
			session.close();
		} catch (DataAccessException exception) {
			exception.printStackTrace();			
		}
		return list;
	}
public List<Message> trashMessages(String reciever) {
		
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		@SuppressWarnings("unchecked")
		Query<Message> query = session.createQuery("from test.beans.Message where reciever like :reciever and trash like :trash and deleted like :deleted");
		query.setParameter("reciever", reciever);
		query.setParameter("trash", true);
		query.setParameter("deleted", false);
		List<Message> list = query.list();
			
		try {
			list = query.list();
			transaction.commit();
			session.close();
		} catch (DataAccessException exception) {
			exception.printStackTrace();			
		}
		return list;
	}
	

	public List<Message> allMessagesSender(String sender) {
		
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		@SuppressWarnings("unchecked")
		Query<Message> query = session.createQuery("from test.beans.Message where reciever like :sender");
		query.setParameter("sender", sender);
		List<Message> list = query.list();
			
		try {
			list = query.list();
			transaction.commit();
			session.close();
		} catch (DataAccessException exception) {
			exception.printStackTrace();			
		}
		return list;
	}

	public Message getMessage(String messageID) {
		Session session = sessionFactory.openSession();
		Transaction transaction = session.beginTransaction();
		
		Message message =  (Message) session.get(Message.class, Integer.parseInt(messageID));
			
		try {
		;
			transaction.commit();
			session.close();
		} catch (DataAccessException exception) {
			exception.printStackTrace();			
		}
		return message;
	}

}
