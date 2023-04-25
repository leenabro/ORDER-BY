package com.ta.orderby.rent.controller;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ta.orderby.rent.model.service.CarService;
import com.ta.orderby.rent.model.service.MotocycleService;
import com.ta.orderby.rent.model.service.StoreService;
import com.ta.orderby.rent.model.vo.Car;
import com.ta.orderby.rent.model.vo.Motocycle;
import com.ta.orderby.rent.model.vo.Store;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MotocycleController {
	
	@Autowired
	private MotocycleService motocycleService;
	
	@Autowired
	private CarService carService;
	
	@Autowired
	private StoreService storeService;
	
	@GetMapping("/rent/motocycle")
	public ModelAndView motocycleList(ModelAndView modelAndView) {
		
		log.info("모토사이클");
		List<Store> storeList = storeService.getStoreList();
		
		modelAndView.addObject("storeList", storeList);

		modelAndView.setViewName("rent/motocycle");
		
		return modelAndView;
	}
	

//	@ResponseBody
//	@GetMapping("/rent/motocycle/storeLocation={storeLcocation}")
//	public  List<Store> getStore(@PathVariable("storeLocation") String location){
//		List<Store> stores = storeService.finStoredByLocation(location);
//		
//		
//		System.out.println(stores);
//		
//		return stores;
//	}
	
//	@ResponseBody
//	@GetMapping("/rent/motocycles/{rentDate}&{returnDate}&{sNo}&{brand}")
//	public List<Motocycle> motocycles(@DateTimeFormat(pattern = "yyyy-MM-dd")  Date rentDate,
//			@DateTimeFormat(pattern = "yyyy-MM-dd")  Date returnDate, String sNo, String brand) {
//		
//		log.info("날짜 지점 선택후 브랜드 리스트");
//		List<Motocycle> motocyclesbrand = motocycleService.getMotocycleList(rentDate, returnDate, sNo, brand);
//	
//		System.out.println(motocyclesbrand);
//
//		
//		return motocyclesbrand;
//	}
	
	
//	@ResponseBody
//	@GetMapping("/rent/motocycle/{brand}")
//	public List<Motocycle> motocyclesbrand(String brand) {
//		List<Motocycle> motocycles = motocycleService.findAllByBrand(brand);
//	
//		System.out.println(motocycles);
//
//		
//		return motocycles;
//	}

	
//	@ResponseBody
//	@GetMapping("/rent/motocycle")
//	public ModelAndView motocycles(
//			ModelAndView modelAndView 
////			,@DateTimeFormat(pattern = "yyyy-MM-dd") Date rentDate,
////			@DateTimeFormat(pattern = "yyyy-MM-dd") Date returnDate, String sNo
//			) {
//		
////		System.out.println((String)map.get("rentDate"));
////		System.out.println((String)map.get("returnDate"));
////		System.out.println((String)map.get("sNo"));
//		
//		
////		List<Motocycle> motocycleList = motocycleService.getMotocycleList(rentDate, returnDate, sNo);
//		List<Store> storeList = storeService.getStoreList();
//		
////		System.out.println(motocycleList);
//		
////		modelAndView.addObject("motocycleList", motocycleList);
//		modelAndView.addObject("storeList", storeList);
//		modelAndView.setViewName("rent/motocycle");
//		
//		return modelAndView;
//		
//	}
	
	@ResponseBody
	@GetMapping("/rent/motocycles/{rentDate}&{returnDate}&{sNo}")
	public List<Motocycle> motocycles(@DateTimeFormat(pattern = "yyyy-MM-dd") Date rentDate,
			@DateTimeFormat(pattern = "yyyy-MM-dd") Date returnDate, String sNo){
		
		log.info("날짜 지점 선택후 오토바이 리스트");
		List<Motocycle> motocycles = motocycleService.getMotocycleList(rentDate, returnDate, sNo);
		
		
		return motocycles;
	}

	
	
}
