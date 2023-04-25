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

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	@Autowired
	private CarService carservice;
	
	@Autowired
	private MotocycleService motoservice;
	
	

	@GetMapping("/")
	public ModelAndView sale(ModelAndView modelAndView) {
		List<Car> list = carservice.findCarBySale();
		List<Motocycle> moto = motoservice.findMotoBySale();
		List<Car> carlist = carservice.bestCarList();
		List<Motocycle> motolist = motoservice.bestMotoList();
		
		log.info("list : {}", list);
		
		modelAndView.addObject("list", list);
		modelAndView.addObject("moto", moto);
		modelAndView.addObject("carlist", carlist);
		modelAndView.addObject("motolist", motolist);
		modelAndView.setViewName("home");
		
		return modelAndView;
	}
	

}


