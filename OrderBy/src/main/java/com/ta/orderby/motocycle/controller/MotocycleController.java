package com.ta.orderby.motocycle.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties.Pageable;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ta.orderby.car.model.service.CarService;
import com.ta.orderby.common.util.PageInfo;
import com.ta.orderby.motocycle.model.service.MotocycleService;
import com.ta.orderby.motocycle.model.vo.Motocycle;
import com.ta.orderby.store.model.service.StoreService;
import com.ta.orderby.store.model.vo.Store;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MotocycleController {
	
	@Autowired
	private MotocycleService motocycleService;
	
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
	

	@ResponseBody
	@GetMapping("/rent/motocycle/{storeLcocation}")
	public  List<Store> getStore(@RequestParam("storeLocation") String location){
		List<Store> stores = storeService.finStoredByLocation(location);
		
		
		System.out.println(stores);
		
		return stores;
	}
	

	@ResponseBody
	@GetMapping("/rent/motocycles/{rentDate}&{returnDate}&{sNo}")
	public List<Motocycle> motocycles(@DateTimeFormat(pattern = "yyyy-MM-dd") Date rentDate,
			@DateTimeFormat(pattern = "yyyy-MM-dd") Date returnDate, String sNo){
		
		log.info("날짜 지점 선택후 오토바이 리스트");
		List<Motocycle> motocycles = motocycleService.getMotocycleList(rentDate, returnDate, sNo);
		
		
		return motocycles;
	}

	
	
}
