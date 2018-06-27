package test.beans;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Message {
	
	private int id;
	private String message;
	private String sender;
	private String reciever;
	private String dateAsString;
	private String subject;	
	private boolean trash;
	private boolean readen;
	private boolean deleted;





	public boolean isReaden() {
		return readen;
	}

	public void setReaden(boolean readen) {
		this.readen = readen;
	}

	public boolean isDeleted() {
		return deleted;
	}

	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}

	@Override
	public String toString() {
		return "Message [id=" + id + ", message=" + message + ", sender=" + sender + ", reciever=" + reciever
				+ ", dateAsString=" + dateAsString + ", subject=" + subject + "]";
	}

	public Message() {
		super();
	}

	public String takeDate() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		dateAsString = sdf.format(date);
		return dateAsString;
	}

	public String getSender() {
		return sender;
	}

	public void setSender(String sender) {
		this.sender = sender;
	}

	public String getReciever() {
		return reciever;
	}

	public void setReciever(String reciever) {
		this.reciever = reciever;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDateAsString() {
		return dateAsString;
	}

	public void setDateAsString(String dateAsString) {
		this.dateAsString = dateAsString;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public boolean isTrash() {
		return trash;
	}

	public void setTrash(boolean trash) {
		this.trash = trash;
	}

	

}
