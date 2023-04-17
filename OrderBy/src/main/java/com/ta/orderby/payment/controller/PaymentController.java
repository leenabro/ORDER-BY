package com.ta.orderby.payment.controller;

import java.util.Random;

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
		
		Car car = carService.findCarByName(name);
		
		car.setPrice(Integer.parseInt(price));
		
		modelAndView.addObject("car", car);
		modelAndView.setViewName("payment/reservation");
		
		return modelAndView;
	}
	
	// 할인 페이지로 이동
	@GetMapping("payment/discount")
	public ModelAndView discount(ModelAndView modelAndView, @RequestParam("name") String name, @RequestParam("price") String price) {
		
		Car car = carService.findCarByName(name);
		
		car.setPrice(Integer.parseInt(price));
		
		
		modelAndView.addObject("car", car);
		modelAndView.setViewName("payment/discount");
		
		return modelAndView;
	}
	
	// coupon 코드 생성(관리자 controller에 넣어야할 것 같은데)
	@GetMapping("/couponnum")
	public void couponnum(){
	  
		//실행시 ???개 쿠폰 생성
		int couponSize = 5;

		final char[] possibleCharacters =
			{'1','2','3','4','5','6','7','8','9','0','A','B','C','D','E','F',
					'G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V',
					'W','X','Y','Z'};
	  
		final int possibleCharacterCount = possibleCharacters.length;
		String[] arr = new String[couponSize];
		Random rnd = new Random();
		int currentIndex = 0;
		int i = 0;
		
		while (currentIndex < couponSize) {
			StringBuffer buf = new StringBuffer(16);
			//i는 8자리의 랜덤값을 의미
			for (i= 8; i > 0; i--) {
				buf.append(possibleCharacters[rnd.nextInt(possibleCharacterCount)]);
			}
			String couponnum = buf.toString();
			
			System.out.println("couponnum==>"+couponnum);
			
			arr[currentIndex] = couponnum;
			currentIndex++;
		}
		
	}
	
	@GetMapping("/couponList")
	public ModelAndView coList(ModelAndView modelAndView) {
		
		
		
		
		return modelAndView; 
	}
	
	
	
}
