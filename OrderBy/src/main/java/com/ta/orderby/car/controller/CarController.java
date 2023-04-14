package com.ta.orderby.car.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.ta.orderby.car.model.service.CarService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CarController {
	@Autowired
	private CarService service;
	
	
//	@GetMapping("/")
//	public ModelAndView sale(ModelAndView modelAndView, @Param("carName") String name) {
//		
//		Car car = null;
//		
//		car = service.findCarByName(name);
//		
//		log.info("car : {}", car);
//		
//		modelAndView.addObject("car", car);
//		modelAndView.setViewName("/");
//		
//		
//		return modelAndView;
//	}
	
//	@GetMapping("/")
//	public ModelAndView sale(ModelAndView modelAndView) {
//		List<Car> list = service.findCarBySale();
//		
//		log.info("list : {}", list);
//		
//		modelAndView.addObject("car", list);
//		modelAndView.setViewName("/");
//		
//		return modelAndView;
//	}
	
}
