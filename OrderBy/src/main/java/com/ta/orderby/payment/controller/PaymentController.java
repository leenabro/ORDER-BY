package com.ta.orderby.payment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ta.orderby.payment.model.service.PaymentService;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService service;
	
	// 예약 페이지로 이동
	@GetMapping("payment/reservation")
	public ModelAndView reservation(ModelAndView modelAndView) {
		
		
		modelAndView.setViewName("payment/reservation");
		
		return modelAndView;
	}
	
	// 할인 페이지로 이동
	@GetMapping("payment/discount")
	public String discount() {
		
		return "payment/discount";
	}
	
	
	
	
}
