package test.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import test.beans.Message;
import test.beans.User;
import test.dao.MessageDAO;
@Controller
public class TrashController {
	
		@Autowired
		private MessageDAO messageDAO;

		@RequestMapping(value="/trash",method = RequestMethod.GET)
		public ModelAndView showTrash(HttpSession httpSession) throws Exception {
			if (httpSession.getAttribute("currentUser") != null) {
			String reciever = (String)httpSession.getAttribute("currentUser");
			List<Message> messages = messageDAO.trashMessages(reciever);
			return new ModelAndView("trash", "message_list", messages);}
			return new ModelAndView("index", "user", new User());
			
		}
		
		@RequestMapping(value="/trash/{messageId}",method = RequestMethod.GET)
		public  String deleteMessage(@PathVariable(value="messageId") String id,HttpSession httpSession,RedirectAttributes redirAttr) throws Exception {
			
			if (httpSession.getAttribute("currentUser") != null) {
			Message message = new Message();
			message=messageDAO.getMessage(id);
			
			if(message.isTrash())
				message.setDeleted(true);
			else
			message.setTrash(true);
			
			boolean success = messageDAO.addMessage(message);
			if (success) {
				System.out.println("Message has been deleted successfully"); 
				return "redirect:/inbox";}
			else {
			System.out.println("Could not delete message"); 
			return "redirect:/inbox";
			}	
		} redirAttr.addFlashAttribute("user", new User());
			return "redirect:/index"; }
}
