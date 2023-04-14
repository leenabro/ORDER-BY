package com.ta.orderby.payment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ta.orderby.car.model.service.CarService;
import com.ta.orderby.car.model.vo.Car;
import com.ta.orderby.payment.model.service.PaymentService;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService service;
	
	@Autowired
	private CarService carService;
	
	// 예약 페이지로 이동
	@GetMapping("payment/reservation")
	public ModelAndView reservation(ModelAndView modelAndView, @RequestParam("name") String name, @RequestParam("price") String price) {
		
		System.out.println(price.substring(0, price.length()-2));
		
		price = price.substring(0, price.length()-2); 
		
		Car car = carService.findCarByName(name);
		
		car.setPrice(Integer.parseInt(price));
		
		modelAndView.addObject("car", car);
		modelAndView.setViewName("payment/reservation");
		
		return modelAndView;
	}
	
	// 할인 페이지로 이동
	@GetMapping("payment/discount")
	public String discount() {
		
		return "payment/discount";
	}
	
	
	
	
}
