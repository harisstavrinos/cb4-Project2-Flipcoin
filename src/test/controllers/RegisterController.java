package test.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import test.beans.User;
import test.dao.UserDAO;

@Controller
public class RegisterController {

	@Autowired
	private UserDAO userDAO;
	

	@RequestMapping(value="/registerUser",method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute("User") User user) throws Exception {
		
		
		if(userDAO.userNameExists(user))
		{
			System.out.println("User exists"); 
			return new ModelAndView("index","user",new User());
		}
		boolean success = userDAO.addUser(user);
		if (success) {
			System.out.println("User has been added successfully"); 
			return new ModelAndView("menu");}
		else {
		System.out.println("Could not add user"); 
		return new ModelAndView("index");
		}
		
	}
	
}
