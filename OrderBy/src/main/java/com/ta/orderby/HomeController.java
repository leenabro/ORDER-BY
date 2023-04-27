package com.ta.orderby;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ta.orderby.car.model.service.CarService;
import com.ta.orderby.car.model.vo.Car;
import com.ta.orderby.motocycle.model.service.MotocycleService;
import com.ta.orderby.motocycle.model.vo.Motocycle;
import com.ta.orderby.store.model.service.StoreService;
import com.ta.orderby.store.model.vo.Store;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	@Autowired
	private CarService carservice;
	
	@Autowired
	private MotocycleService motoservice;
	
	@Autowired
	private StoreService storeServcie;
	

	@GetMapping("/")
	public ModelAndView sale(ModelAndView modelAndView) {
		List<Car> list = carservice.findCarBySale();
		List<Motocycle> moto = motoservice.findMotoBySale();
		List<Car> carlist = carservice.bestCarList();
		List<Motocycle> motolist = motoservice.bestMotoList();
		List<Store> storeList = null;
		
		
		
		for (Car car : list ) {
			System.out.println("sale인 차량 번호" + car.getNo());
			System.out.println("sale인 차량의 매장 번호" + car.getStoreNo());
			
			storeList = storeServcie.findStoreListByNo(car.getStoreNo());
			
			for (Store store : storeList) {
				System.out.println("sale인 차량 이름: " + car.getName() + ", sale인 차량의 매장 이름: "+store.getName());
			}
			
			
			
		}
		
		
		log.info("list : {}", list);
		
		modelAndView.addObject("storeList", storeList);
		modelAndView.addObject("list", list);
		modelAndView.addObject("moto", moto);
		modelAndView.addObject("carlist", carlist);
		modelAndView.addObject("motolist", motolist);
		modelAndView.setViewName("home");
		
		return modelAndView;
	}
	

}


