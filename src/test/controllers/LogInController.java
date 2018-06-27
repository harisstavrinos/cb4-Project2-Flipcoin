package test.controllers;




import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;

import test.beans.User;
import test.dao.UserDAO;
import test.beans.Order;

@Controller
public class LogInController {
	
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping({"/","/index"}) 
	public ModelAndView home(){
	    return new ModelAndView("index","user",new User()); 
	} 
	
	
	@RequestMapping(value="/menu",method = RequestMethod.POST)
	public ModelAndView checkUser(@ModelAttribute("User") User user,HttpSession httpSession) throws Exception {
		 
		if(userDAO.userExists(user))
		{
		httpSession.setAttribute("currentUser", user.getUsername());
			return new ModelAndView("menu","order", new Order());
		}
		
		return new ModelAndView("index","user",new User()); 
	}


}
