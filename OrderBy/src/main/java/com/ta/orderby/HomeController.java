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
	private CarService carService;
	
	@Autowired
	private MotocycleService motoService;
	
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
//	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		return "home";
//	}
	
	@GetMapping("/")
	public ModelAndView sale(ModelAndView modelAndView) {
		List<Car> carList = carService.findCarBySale();
		List<Motocycle> motoList = motoService.findMotocycleBySale();
		
		log.info("carList : {}", carList);
		log.info("motoList : {}", motoList);
		
		modelAndView.addObject("motoList", motoList);
		modelAndView.addObject("carList", carList);
		modelAndView.setViewName("home");
		
		return modelAndView;
	}
	

}
