package com.ta.orderby.payment.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.ta.orderby.car.model.service.CarService;
import com.ta.orderby.car.model.vo.Car;
import com.ta.orderby.member.model.service.MemberService;
import com.ta.orderby.member.model.vo.Member;
import com.ta.orderby.motocycle.model.service.MotocycleService;
import com.ta.orderby.motocycle.model.vo.Motocycle;
import com.ta.orderby.payment.model.service.PaymentService;
import com.ta.orderby.payment.model.vo.Coupon;
import com.ta.orderby.payment.model.vo.Payment;

@Controller
public class PaymentController {
	
	@Autowired
	private PaymentService service;
	
	@Autowired
	private CarService carService;
	
	@Autowired
	private MotocycleService motoService;
	
	@Autowired
	private MemberService memberService;
	
	// 예약 페이지로 이동
	@GetMapping("/payment/reservation")
	public ModelAndView reservation(ModelAndView modelAndView, @RequestParam("name") String name, @RequestParam("price") String price, 
									@AuthenticationPrincipal Member loginMember) {
		
		if(loginMember != null) {
			Member member = memberService.findMemberById(loginMember.getId()); 
			Car car = carService.findCarByName(name);
			
			if( car == null) {
				Motocycle motocycle = motoService.findMotocycleByName(name);
				
				motocycle.setPrice(Integer.parseInt(price));
				
				modelAndView.addObject("motocycle", motocycle);
			} else {
				car.setPrice(Integer.parseInt(price));
				
				modelAndView.addObject("car", car);
			}
				
			modelAndView.addObject("member", member);
			modelAndView.setViewName("payment/reservation");
		} else {
			modelAndView.addObject("msg", "로그인 후 이용해 주세요.");
			modelAndView.addObject("location", "/");
			
			modelAndView.setViewName("common/msg");
		}
		
		return modelAndView;
	}
	
	// 할인 페이지로 이동
	@GetMapping("/payment/discount")
	public ModelAndView discount(ModelAndView modelAndView, @RequestParam("name") String name, @RequestParam("price") String price,
								@AuthenticationPrincipal Member loginMember) {
		
		
		if(loginMember != null) {
			Member member = memberService.findMemberById(loginMember.getId()); 
			// 자동차 정보 불러오기
			Car car = carService.findCarByName(name);
			
			// 쿠폰 정보 불러오기
			List<Coupon> list = service.findCouponByMemberNo(1);
			Gson gson = new GsonBuilder().create();
			String coupons = gson.toJson(list);
			
			if(car == null) {
				Motocycle motocycle = motoService.findMotocycleByName(name);
				
				// 특가일 경우 할인된 가격 다시 set
				motocycle.setPrice(Integer.parseInt(price));
				
				modelAndView.addObject("motocycle", motocycle);
			} else {
				// 특가일 경우 할인된 가격 다시 set
				car.setPrice(Integer.parseInt(price));
				
				modelAndView.addObject("car", car);
			}
			
			modelAndView.addObject("member", member);
			modelAndView.addObject("coupons", coupons);
			modelAndView.addObject("coupon", list);
			modelAndView.setViewName("payment/discount");
		} else {
			modelAndView.addObject("msg", "로그인 후 이용해 주세요.");
			modelAndView.addObject("location", "/");
			
			modelAndView.setViewName("common/msg");
		}
		
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
	@PostMapping("/payment/pay")
	public HashMap<String, Object> pay(@RequestBody HashMap<String, Object> map, @AuthenticationPrincipal Member loginMember) {
		
		Payment payment = new Payment();
		int result = 0;
		
		payment.setMethod(String.valueOf(map.get("method")));
		payment.setUid(String.valueOf(map.get("uid")));
		payment.setProductName(String.valueOf(map.get("productName")));
		payment.setTotPrice(Integer.valueOf(String.valueOf(map.get("totPrice"))));
		payment.setFinPrice(Integer.valueOf(String.valueOf(map.get("finPrice"))));
		payment.setMemberNo(loginMember.getNo());
		
		if(String.valueOf(map.get("productCate")).equals("c")) {
			payment.setCarNo(Integer.valueOf(String.valueOf(map.get("productNo"))));
		} else {
			payment.setMotocycleNo(Integer.valueOf(String.valueOf(map.get("productNo"))));
		}
		
		System.out.println(payment);
		
		System.out.println("result 값 : " + result);
		System.out.println("member point update 값 : " + Integer.valueOf(String.valueOf(map.get("memberPoint"))));
		System.out.println(map.get("method"));
			
		result = service.save(payment);
		
		return map;
		
	}
	
	@PostMapping("/payment/success")
	public ModelAndView success (ModelAndView modelAndView, 
			@RequestParam("uid") String uid, @RequestParam("finPrice") String finPrice, @RequestParam("buyerName") String buyerName,
			@AuthenticationPrincipal Member loginMember) {
		
		if(loginMember != null) {
			Payment payment = service.selectPaymentByUid(uid);
			
			System.out.println(payment);
			
			modelAndView.addObject("payment", payment);
			modelAndView.setViewName("/payment/success");
		} else {
			modelAndView.addObject("msg", "잘못된 접근입니다.");
			modelAndView.addObject("location", "/");
			modelAndView.setViewName("/common/msg");
			
		}
		
		return modelAndView;
	}
	
	
	
}
