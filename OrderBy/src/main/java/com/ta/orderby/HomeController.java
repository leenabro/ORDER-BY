package com.ta.orderby;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ta.orderby.admin.model.service.AdminService;
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
	
//	@GetMapping("/") 
//		public ModelAndView best(ModelAndView modelAndView) {
//			List<Car> carlist = service.bestCarList();
//			List<AdminProductMotocycle> motolist = service.bestMotoList();
//			
//			log.info("carlist : {}", carlist);
//			log.info("motolist : {}", motolist);
//			
//			modelAndView.addObject("carlist", carlist);
//			modelAndView.addObject("motolist", motolist);
//			modelAndView.setViewName("home");
//			
//			return modelAndView;
//	}
}


