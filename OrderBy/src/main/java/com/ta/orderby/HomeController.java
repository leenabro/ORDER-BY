package com.ta.orderby;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ta.orderby.admin.model.vo.AdminProductMotocycle;
import com.ta.orderby.car.model.service.CarService;
import com.ta.orderby.car.model.vo.Car;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HomeController {
	@Autowired
	private CarService service;
	
	@GetMapping("/")
	public ModelAndView sale(ModelAndView modelAndView) {
		List<Car> list = service.findCarBySale();
		List<AdminProductMotocycle> moto = service.findMotoBySale();
		List<Car> carlist = service.bestCarList();
		List<AdminProductMotocycle> motolist = service.bestMotoList();
		
		log.info("list : {}", list);
		
		modelAndView.addObject("list", list);
		modelAndView.addObject("moto", moto);
		modelAndView.addObject("carlist", carlist);
		modelAndView.addObject("motolist", motolist);
		modelAndView.setViewName("home");
		
		return modelAndView;
	}
	
}


