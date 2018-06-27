package test.generator;

import java.util.ArrayList;
import java.util.Random;

import test.beans.Order;



public class Generator {

	public static double x3 = 10.0;

	public static ArrayList<Order> random(Double x) throws InterruptedException {

//		ArrayList<Order> buyvol = new ArrayList<Order>();
//		ArrayList<Order> sellvol = new ArrayList<Order>();
//		Double dif;
		Order buyOrder = new Order();
		Order sellOrder = new Order();
		double y1, y2;
		ArrayList<Order> buy = new ArrayList<Order>();
		ArrayList<Order> sell = new ArrayList<Order>();
//		ArrayList<Transaction> transactons = new ArrayList<Transaction>();
		int i = 0;
//		Transaction trans = new Transaction();
		do {
			y1 = getRand(x, false);
			y2 = getRand(x, false);
			buyOrder.setPrice(y1);
			buyOrder.setBuy(true);
			buy.add(buyOrder);
			sellOrder.setPrice(y2);
			sellOrder.setSell(true);
			sell.add(sellOrder);
			i++;
		} while (i <= 35);
		return sell;
	}
	
//		System.out.println("##########################");
//	
//		Random rand = new Random();
//		int j = 0;
//
//		for (Order sel1 : sellvol) {
//			for (Order buy1 : buyvol) {
//				buy1.setQuantity(rand.nextInt(20) + 1);
//				sel1.setQuantity(rand.nextInt(20) + 1);
//
//				if (buy1.getPrice() >= sel1.getPrice()) {
//					
//					double selled= buy1.getPrice() * buy1.getQuantity() / sel1.getPrice() ;
//					dif =selled - sel1.getQuantity();
//
//					if (dif < 0) {
//						buy.remove(buy1);
//						sel1.setQuantity(-dif);
//
//					} else if (dif > 0) {
//						sell.remove(sel1);
//						buy1.setQuantity(dif);
//				
//					} else if (dif == 0) {
//						sell.remove(sel1);
//						buy.remove(buy1);
//					}
//					trans.setPrice(sel1.getPrice());
//					trans.setQuantity(selled);	
//				}
//			}
//
//		} 
//
//	}
//
	public static double getRand(double x, boolean order) throws InterruptedException {
		if (order == true) {
			x = getAverage(x, getX3());
		}
		Random r = new Random();
		double dx = 0.5 * x;
		double xmin = x - dx;
		double xmax = x + dx;
		double ran = (r.nextDouble() * (xmax - xmin)) + xmin;
		return ran;
	}

	public static double getAverage(double x1, double x2) throws InterruptedException {
		int dt = 2000;
		Thread.sleep(dt);
		dt /= 1000;
		double t = 5.0;
		double u = (x1 - x2) / t;
		x2 += u * dt;
		return x2;
	}

	public static double getX3() {
		return x3;
	}

	public void setX3(double x3) {
		this.x3 = x3;
	}

}
