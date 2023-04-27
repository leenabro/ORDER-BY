package com.ta.orderby.car.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@GetMapping("/rent/car/{carName}&{storeLocation}")
	public ModelAndView directRentCar (ModelAndView modelAndView, @PathVariable String carName, @PathVariable String storeLocation) {
		
		Store store = storeService.findStoreByName(storeLocation);
		
		Map<String, Object> map = new HashMap<>();
		
		map.put("carName", carName);
		map.put("storeNo", store.getNo());
		
		
		Car car = carService.findCarByNameAndStoreNo(map);
		
		modelAndView.addObject("car", car);
		modelAndView.addObject("store", store);
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
	
}
