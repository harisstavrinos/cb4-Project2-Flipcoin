package test.controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import test.beans.User;
import test.dao.UserDAO;

@RestController
public class UsersRestController {
	
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping("/users")
	public List<User> getAllUsers(HttpSession httpSession) {
		
		List<User> users = userDAO.allUsers();
		System.out.println(users);
		return users;
    }

}
