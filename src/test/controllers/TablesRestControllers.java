package test.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import test.beans.Order;
import test.dao.OrderDAO;
import test.generator.Generator;


@RestController
public class TablesRestControllers {
	
	@Autowired
	private OrderDAO orderDAO;
	
//	@RequestMapping("/orders/{price}")	
//	public List<Order> getSells(@PathVariable(value="price") Double price) throws InterruptedException {
//		
//		
//		List<Order> orders = new ArrayList<Order>();
//		orders=Generator.random(price);	
//		return orders;
//		
//    }
	
	@RequestMapping(value="/orders",method = RequestMethod.GET)	
	public List<Order> getSells(@RequestParam Double price,HttpSession httpSession) throws InterruptedException {
		
		System.out.println(price);
		List<Order> orders = new ArrayList<Order>();
		orders=Generator.random(price);	
		return orders;
		
    }
	

	@PostMapping(value = "/neworder")
	public void update(@RequestBody Order order) {
		boolean success= orderDAO.addOrder(order);
	   
	}

}
//	@RequestMapping(value = "/test")
//	public void test(@RequestBody Test test) {
////		System.out.println(order);
//		System.out.println(test.toString());
//		System.out.println("YEEEEEEEEEEEEEEEEEAH");
//
//	   
//	}
//	
//	
//	@RequestMapping(value = "/buyorder")
//	public String test(@RequestBody List<String> buyorder) {
//		Order order = new Order();
//		order.setCoin(buyorder.get(0));
//		System.out.println(buyorder);
//		System.out.println(order);
////		Order order = new Order();
////		order.setCoin(coin);
////		System.out.println(order.getCoin());
////	order.setQuantity(quantity);
////	order.setPrice(price);
////	orderDAO.addOrder(order);
////		boolean success= orderDAO.addOrder(string);
//		System.out.println("YEEEEEEEEEEEEEEEEEAH");
//		return "yeah";	   
//	}
//	
////	@RequestMapping(value = "/buyorder")
////	public String test(@RequestBody Order order) {
////		Order order = new Order();
////		order.setCoin(coin);
////		System.out.println(order.getCoin());
////	order.setQuantity(quantity);
////	order.setPrice(price);
////	orderDAO.addOrder(order);
//////		boolean success= orderDAO.addOrder(string);
////		System.out.println("YEEEEEEEEEEEEEEEEEAH");
////		return "yeah";	   
////	}
//	
//	@RequestMapping("/buyorder/{coin}/{quantity}/{price}")	
//	public void setBuyOrder(@PathVariable(value="coin") String coin,@PathVariable(value="quantity") Double quantity,@PathVariable(value="price") Double price) throws InterruptedException {
//		Order order = new Order();
//		order.setCoin(coin);
//		order.setQuantity(quantity);
//		order.setPrice(price);
//		orderDAO.addOrder(order);
//		
//    }
//
//}
