package com.ta.orderby.car.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ta.orderby.car.model.service.CarService;
import com.ta.orderby.car.model.vo.Car;
import com.ta.orderby.store.model.service.StoreService;
import com.ta.orderby.store.model.vo.Store;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CarController {
	@Autowired
	private CarService carService;
	
	@Autowired
	private StoreService storeService;
	
	@ResponseBody
	@GetMapping("/rent/car")
	public ModelAndView cars (ModelAndView modelAndView) {

		
		List<Store> storeList = storeService.getStoreList();

		modelAndView.addObject("storeList", storeList);
		modelAndView.setViewName("rent/car");
		
		return modelAndView;
		
	}
	
	@ResponseBody
	@GetMapping("/rent/cars/{rentDate}&{returnDate}&{sNo}")
	public List<Car> cars(@DateTimeFormat(pattern = "yyyy-MM-dd") Date rentDate,
			@DateTimeFormat(pattern = "yyyy-MM-dd") Date returnDate, String sNo){
		
		log.info("날짜 지점 선택후 차 리스트");
		List<Car> cars = carService.getCarList(rentDate, returnDate, sNo);
		
		
		return cars;
	}
	
	@ResponseBody
	@GetMapping("/rent/car/{storeLcocation}")
	public  List<Store> getStore(@RequestParam("storeLocation") String location){
		List<Store> stores = storeService.finStoredByLocation(location);
		
		
		System.out.println(stores);
		
		return stores;
	}
	
}
