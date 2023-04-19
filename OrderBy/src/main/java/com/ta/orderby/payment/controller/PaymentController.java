package com.ta.orderby.payment.controller;

import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.ta.orderby.car.model.service.CarService;
import com.ta.orderby.car.model.vo.Car;
import com.ta.orderby.payment.model.service.PaymentService;
import com.ta.orderby.payment.model.vo.Coupon;

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
		// 자동차 정보 불러오기
		Car car = carService.findCarByName(name);
		
		// 쿠폰 정보 불러오기
		List<Coupon> list = service.findCouponByMemberNo(1);
		Gson gson = new GsonBuilder().create();
		String coupons = gson.toJson(list);

		// 로그인 멤버 포인트 불러오기
		
		
		// 특가일 경우 할인된 가격 다시 set
		car.setPrice(Integer.parseInt(price));
		
		modelAndView.addObject("coupons", coupons);
		modelAndView.addObject("coupon", list);
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
	
	@ResponseBody
	@PostMapping("payment/success")
	public ModelAndView success(ModelAndView modelAndView, @RequestParam("method") String method, @RequestParam("merchant_uid") String productId) {
		
		System.out.println(productId);
		
		modelAndView.setViewName("payment/success");
		
		return modelAndView;
	}
	
	
	
	
}
