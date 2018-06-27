package test.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import test.dao.MessageDAO;
import test.beans.Message;
import test.beans.User;

@Controller
public class MessageController {

	@Autowired
	private MessageDAO messageDAO;

	@RequestMapping(value = "/newMessage", method = RequestMethod.GET)
	public ModelAndView showMessageForm(HttpSession httpSession) throws Exception {
		if (httpSession.getAttribute("currentUser") != null) {

			return new ModelAndView("newMessage", "message", new Message());
		}
		return new ModelAndView("index", "user", new User());
	}

	@RequestMapping(value = "/reply/{sender}/{subject}", method = RequestMethod.GET)
	public ModelAndView replyMessage(@PathVariable(value = "sender") String reciever,
			@PathVariable(value = "subject") String subject, HttpSession httpSession) throws Exception {
		if (httpSession.getAttribute("currentUser") != null) {
			Message message = new Message();
			message.setReciever(reciever);
			message.setSubject(subject);
			return new ModelAndView("newMessage", "message", message);
		}
		return new ModelAndView("index", "user", new User());
	}

	@RequestMapping(value = "/sendMessage", method = RequestMethod.POST)
	public String sendMessage(@ModelAttribute("Message") Message message, HttpSession httpSession,
			RedirectAttributes redirAttr) throws Exception {
		if (httpSession.getAttribute("currentUser") != null) {
			String sender = (String) httpSession.getAttribute("currentUser");
			message.setSender(sender);
			boolean success = messageDAO.addMessage(message);
			if (success) {
				System.out.println("Message has been added successfully");
				return "menu";
			} else {
				System.out.println("Could not add message");
				return "redirect:/newMessage";
			}
		}
		redirAttr.addFlashAttribute("user", new User());
		return "redirect:/newMessage";
	}

	@RequestMapping(value = "/sent", method = RequestMethod.GET)
	public ModelAndView showInbox(HttpSession httpSession) throws Exception {
		if (httpSession.getAttribute("currentUser") != null) {
			String sender = (String) httpSession.getAttribute("currentUser");
			List<Message> messages = messageDAO.allMessages(sender);
			return new ModelAndView("sent", "message_list", messages);
		}
		return new ModelAndView("index", "user", new User());
	}

	@RequestMapping(value = "/readMessage/{messageId}", method = RequestMethod.GET)
	public ModelAndView readMessage(@PathVariable(value = "messageId") String id, HttpSession httpSession)
			throws Exception {
		if (httpSession.getAttribute("currentUser") != null) {
			Message message = new Message();
			message = messageDAO.getMessage(id);
			return new ModelAndView("/readMessage", "message", message);
		}
		return new ModelAndView("index", "user", new User());

	}

}
