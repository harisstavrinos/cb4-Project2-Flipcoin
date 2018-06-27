package test.controllers;

import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import test.beans.Message;
import test.beans.User;
import test.dao.MessageDAO;


@Controller
public class InboxController {

	@Autowired
	private MessageDAO messageDAO;

	@RequestMapping(value="/inbox",method = RequestMethod.GET)
	public ModelAndView showInbox(HttpSession httpSession) throws Exception {
		
		if(httpSession.getAttribute("currentUser")!=null){
		String reciever = (String)httpSession.getAttribute("currentUser");
		ArrayList<Message> messages = new ArrayList<Message>();
				messages = (ArrayList<Message>) messageDAO.allMessages(reciever);
		if(!messages.isEmpty()) {
		for (Message message:messages) {
			if(message.isTrash()) {
				boolean success =  messages.remove(message);}
			}}
		
		return new ModelAndView("inbox", "message_list", messages);
		}
		return new ModelAndView("index","user",new User()); 
	}

}
