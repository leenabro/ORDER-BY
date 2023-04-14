package com.ta.orderby.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ta.orderby.admin.model.service.AdminService;
import com.ta.orderby.admin.model.vo.AdminMember;
import com.ta.orderby.admin.model.vo.AdminPopqna;
import com.ta.orderby.admin.model.vo.AdminProductCar;
import com.ta.orderby.admin.model.vo.AdminProductMotocycle;
import com.ta.orderby.common.util.PageInfo;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminController {
	@Autowired
	private AdminService service;
	
	// 관리자페이지 불러오기
	@GetMapping("/admin/view")
	public String admin() {
		log.info("Admin 페이지");
		
		return "admin/view";
	}
	
	// 회원테이블 불러오기
	@GetMapping("/admin/member")
	public ModelAndView member(ModelAndView modelAndView, @RequestParam(defaultValue = "1")int page) {
		int listCount = service.getAdminMemberCount();
		
		log.info("Admin Member 페이지");
		log.info("list : {}", listCount);
		
		PageInfo pageInfo = new PageInfo(page, 10, listCount, 10);
		List<AdminMember> member = service.getAdminMemberCount(pageInfo);
		
		modelAndView.addObject("pageInfo", pageInfo);
		modelAndView.addObject("list", member);
		modelAndView.setViewName("admin/member");
		
		return modelAndView;
	}
	
	// POPQNA 테이블 불러오기
	@GetMapping("/admin/popqna")
	public ModelAndView popqna(ModelAndView modelAndView, @RequestParam(defaultValue = "1") int page) {
		int poplistCount = service.getPopqnaCount();
		
		log.info("Admin PopQna 페이지");
		log.info("Page : {}", page);
		log.info("ListCount : {}", poplistCount);
		
		PageInfo pageInfo = new PageInfo(page, 10, poplistCount, 10);
		List<AdminPopqna> popqna = service.getPopqnaCount(pageInfo);
		
		
		modelAndView.addObject("pageInfo", pageInfo);
		modelAndView.addObject("list", popqna);
		modelAndView.setViewName("admin/popqna");
		
		
		return modelAndView;
	}
	
	// 자동차테이블 불러오기
	@GetMapping("/admin/carproduct")
	public ModelAndView carproduct(ModelAndView modelAndView, @RequestParam(defaultValue = "1") int page) {
		int carCount = service.getCarCount();
		
		log.info("Admin carProduct 페이지");
		log.info("Car Product Count : {}", carCount);
		
		PageInfo pageInfo = new PageInfo(page, 10, carCount, 10);
		List<AdminProductCar> productcar = service.getCarCount(pageInfo);
		
		modelAndView.addObject("pageInfo", pageInfo);
		modelAndView.addObject("list", productcar);
		modelAndView.setViewName("admin/carproduct");
		
		
		return modelAndView;
	}
	
	// 오토바이테이블 불러오기
	@GetMapping("/admin/motocycleproduct")
	public ModelAndView motocycleproduct(ModelAndView modelAndView, @RequestParam(defaultValue = "1") int page) {
		int motocycleCount = service.getMotocylceCount();
		
		log.info("Admin carProduct 페이지");
		log.info("Car Product Count : {}", motocycleCount);
		
		PageInfo pageInfo = new PageInfo(page, 10, motocycleCount, 10);
		List<AdminProductMotocycle> productmotocycle = service.getMotocylceCount(pageInfo);
		
		modelAndView.addObject("pageInfo", pageInfo);
		modelAndView.addObject("list", productmotocycle);
		modelAndView.setViewName("admin/motocycleproduct");
		
		return modelAndView;
	}

	
	// 상품등록
	@GetMapping("/admin/insertproduct")
	public String insertproduct() {
		log.info("Admin InsertProduct 페이지");
		
		return "admin/insertproduct";
	}
	
	// 매장정보 불러오기
	@GetMapping("/admin/location")
	public String location() {
		log.info("Admin Location 페이지");
		
		return "admin/location";
	}
	
	// 회원관리 수정view 데이터불러오기
	@GetMapping("/admin/modifymember")
	public ModelAndView modifymember(ModelAndView modelAndView, @RequestParam int no) {
		AdminMember member = null;
		
		log.info("Admin ModifyMember 페이지");
		
		log.info("no : {}", no);
		
		member = service.modifyMemberByNo(no);
		
		modelAndView.addObject("member", member);
		modelAndView.setViewName("admin/modifymember");
		
		return modelAndView;
	}
	
//	// 상품관리 수정view 데이터불러오기
//	@GetMapping("/admin/modifyproduct")
//	public String modifyproduct() {
//		log.info("Admin ModifyProduct페이지");
//		
//		return "admin/modifyproduct";
//	}
	
	// 자동차 정보 상세페이지 불러오기
	@GetMapping("/admin/modifycarproduct")
	public ModelAndView carmodify(ModelAndView modelAndView, @RequestParam int no) {
		AdminProductCar procar = null;
		
		log.info("ModifyCarProduct 페이지");
		
		log.info("no : {}", no);
		
		procar = service.findCarProduct(no);
		
		
		
		modelAndView.addObject("procar", procar);
		modelAndView.setViewName("admin/modifycarproduct");
		
		return modelAndView;
	}
	
	// 차량삭제
	@GetMapping("/admin/modifycardelete")
	public ModelAndView cardelete(ModelAndView modelAndView, @RequestParam int no) {
		int result = 0;
		AdminProductCar procar = null;
		
		procar = service.findCarProduct(no);
		result = service.cardelete(no);
		
		if(result > 0) {
			modelAndView.addObject("msg", "차량 삭제를 성공하였습니다.");
			modelAndView.addObject("location", "/admin/carproduct");
		} else {
			modelAndView.addObject("msg", "차량 삭제를 실패하였습니다.");
			modelAndView.addObject("location", "/admin/carproduct");
		}
		
		System.out.println(no);
		System.out.println(procar);
		

		modelAndView.setViewName("common/msg");
		

		return modelAndView;
	}
	
	// 자동차 정보 수정
		@GetMapping("/admin/modifycarupdate")
		public ModelAndView carupdate(ModelAndView modelAndView, @RequestParam int no) {
			AdminProductCar procar = null;
			
			log.info("ProductCar 정보 수정");
			log.info("no : {}", no);
			
			
			procar = service.findCarProduct(no);
			
			System.out.println(procar);
			
			if(no >= 0) {
				modelAndView.addObject("procar", procar);
				modelAndView.setViewName("admin/carproduct");
			} else {
				modelAndView.addObject("msg", "잘못된 접근입니다.");
				modelAndView.addObject("location", "/admin/carproduct");
				modelAndView.setViewName("common/msg");
				
			}
			
			
			return modelAndView;
		}
		
		// 자동차 정보 수정
		@PostMapping("/admin/modifycarupdate")
		public ModelAndView carupdate(ModelAndView modelAndView,  @RequestParam int no, 
				@RequestParam String cname, @RequestParam String cbrand, @RequestParam String cengine, @RequestParam int ccc,
				@RequestParam String cfuel, @RequestParam String cprice, @RequestParam String cposition, @RequestParam int ckm,
				@RequestParam String cstatus) {
				
				AdminProductCar procar = null;
				int result = 0;
				
				log.info("no : {}", no);
				log.info("ProductCar 자동차 정보 수정 파라미터");
				log.info("{}, {}, {}, {}, {}, {}, {}, {}", new Object[] {no, cname, cbrand, cengine, ccc, cfuel, cprice, cposition, cstatus});
			
				procar = service.findCarProduct(no);
				
				procar.setName(cname);
				procar.setBrand(cbrand);
				procar.setEngine(cengine);
				procar.setCc(ccc);
				procar.setFuel(cfuel);
				procar.setPrice(cprice);
				procar.setPosition(cposition);
				procar.setKm(ckm);
				procar.setSale(cstatus);
				
				
				result = service.save(procar);
				
				if(result > 0) {
					
					modelAndView.addObject("msg", "회원정보수정을 성공 하였습니다.");
					modelAndView.addObject("location", "/admin/modifycarproduct?no=" + no);
				} else {
					modelAndView.addObject("msg", "회원정보수정을 실패 하였습니다.");
					modelAndView.addObject("location", "/admin/modifycarproduct?no=" + no);
				}
				
				modelAndView.setViewName("common/msg");
			
			return modelAndView;
		}
	
	// 오토바이 정보 상세페이지 불러오기
	@GetMapping("/admin/modifymotocycleproduct")
	public ModelAndView motomodify(ModelAndView modelAndView, @RequestParam int no) {
		AdminProductMotocycle promoto = null;
		
		log.info("ModifyMotoProduct 페이지");
		
		log.info("no : {}", no);
		
		promoto = service.findMotoProduct(no);
		
		
		modelAndView.addObject("promoto", promoto);
		modelAndView.setViewName("admin/modifymotocycleproduct");
		
		return modelAndView;
	}
	
	// 오토바이 삭제
	@GetMapping("/admin/modifymotodelete")
	public ModelAndView motodelete(ModelAndView modelAndView, @RequestParam int no) {
		int result = 0;
		AdminProductMotocycle promoto = null;
		
		promoto = service.findMotoProduct(no);
		result = service.motodelete(no);
		
		if(result > 0) {
			modelAndView.addObject("msg", "오토바이 삭제를 성공하였습니다.");
			modelAndView.addObject("location", "/admin/carproduct");
		} else {
			modelAndView.addObject("msg", "오토바이 삭제를 실패하였습니다.");
			modelAndView.addObject("location", "/admin/carproduct");
		}
		
		
		
		System.out.println(no);
		System.out.println(promoto);
		

		modelAndView.setViewName("common/msg");
		

		return modelAndView;
	}
	
	// 오토바이 정보 수정
			@GetMapping("/admin/modifymotoupdate")
			public ModelAndView motoupdate(ModelAndView modelAndView, @RequestParam int no) {
				AdminProductMotocycle promoto = null;
				
				log.info("ProductCar 정보 수정");
				log.info("no : {}", no);
				
				
				promoto = service.findMotoProduct(no);
				
				System.out.println(promoto);
				
				if(no >= 0) {
					modelAndView.addObject("promoto", promoto);
					modelAndView.setViewName("admin/motocycleproduct");
				} else {
					modelAndView.addObject("msg", "잘못된 접근입니다.");
					modelAndView.addObject("location", "/admin/motocycleproduct");
					modelAndView.setViewName("common/msg");
					
				}
				
				
				return modelAndView;
			}
			
	// 오토바이 정보 수정		
			@PostMapping("/admin/modifymotoupdate")
			public ModelAndView motoupdate(ModelAndView modelAndView,  @RequestParam int no, 
					@RequestParam String mcname, @RequestParam String mcbrand, @RequestParam String mcengine, @RequestParam int mccc,
					@RequestParam int mcoutput, @RequestParam int mctorque, @RequestParam String mcprice, @RequestParam String mcposition, @RequestParam int mckm,
					@RequestParam String mcstatus) {
					
					AdminProductMotocycle promoto = null;
					int result = 0;
					
					log.info("no : {}", no);
					log.info("ProductCar 자동차 정보 수정 파라미터");
					log.info("{}, {}, {}, {}, {}, {}, {}, {}, {}, {}", new Object[] {no, mcname, mcbrand, mcengine, mccc, mcoutput, mctorque, mcprice, mcposition, mcstatus});
				
					promoto = service.findMotoProduct(no);
					
					promoto.setName(mcname);
					promoto.setBrand(mcbrand);
					promoto.setEngine(mcengine);
					promoto.setCc(mccc);
					promoto.setOutput(mcoutput);
					promoto.setTorque(mctorque);
					promoto.setPrice(mcprice);
					promoto.setPosition(mcposition);
					promoto.setKm(mckm);
					promoto.setSale(mcstatus);
					
					
					
					result = service.save(promoto);
					
					if(result > 0) {
						
						modelAndView.addObject("msg", "회원정보수정을 성공 하였습니다.");
						modelAndView.addObject("location", "/admin/modifymotocycleproduct?no=" + no);
					} else {
						modelAndView.addObject("msg", "회원정보수정을 실패 하였습니다.");
						modelAndView.addObject("location", "/admin/modifymotocycleproduct?no=" + no);
					}
					
					modelAndView.setViewName("common/msg");
				
				return modelAndView;
			}
	

	
	// popqna 상세보기 페이지 불러오기
	@GetMapping("/admin/viewpopqna")
	public ModelAndView viewpopqna(ModelAndView modelAndView, @RequestParam int no) {
		AdminPopqna popqna = null;
		
		log.info("Admin ViewPopQna페이지");
		
		log.info("no : {}", no);
		
		popqna = service.findPopqnaByNo(no);
		
		modelAndView.addObject("popqna", popqna);
		modelAndView.setViewName("admin/viewpopqna");
		
		return modelAndView;
	}
	
	// PopQna 상담 답변확인
	@GetMapping("/admin/popqnacheck")
	public ModelAndView check (ModelAndView modelAndView, @RequestParam int no) {
		int result = 0;
		AdminPopqna popqna = null;
		
		popqna = service.findPopqnaByNo(no);
		result = service.popcheck(no);
		
		if(result > 0) {
			modelAndView.addObject("msg", "상담 내용 답변을 완료했습니다.");
			modelAndView.addObject("location", "/admin/popqna");
		} else {
			modelAndView.addObject("msg", "상담 내용 답변을 실패하였습니다.");
			modelAndView.addObject("location", "/admin/popqna");
		}
		
		System.out.println(popqna);
		System.out.println(no);
		modelAndView.setViewName("common/msg");
		
		return modelAndView;
	}
	
	// 회원탈퇴
	@GetMapping("/admin/modifydelete")
	public ModelAndView delete(ModelAndView modelAndView, @RequestParam int no) {
		int result = 0;
		AdminMember member = null;
		
		member = service.modifyMemberByNo(no);
		result = service.delete(no);
		
		if(result > 0) {
			modelAndView.addObject("msg", "회원 삭제를 정상적으로 성공하였습니다.");
			modelAndView.addObject("location", "/admin/member");
		} else {
			modelAndView.addObject("msg", "회원 삭제를 실패하였습니다.");
			modelAndView.addObject("location", "/admin/member");
		}
		
		System.out.println(no);
		System.out.println(member);
		

		modelAndView.setViewName("common/msg");
		
		return modelAndView;
	}
	
	// 회원정보수정
	@GetMapping("/admin/modifyupdate")
	public ModelAndView update(ModelAndView modelAndView, @RequestParam int no) {
		AdminMember member = null;
		
		log.info("AdminMember 정보 수정");
		log.info("no : {}", no);
		
		
		member = service.modifyMemberByNo(no);
		
		System.out.println(member);
		
		if(no >= 0) {
			modelAndView.addObject("member", member);
			modelAndView.setViewName("admin/modifymember");
		} else {
			modelAndView.addObject("msg", "잘못된 접근입니다.");
			modelAndView.addObject("location", "/admin/modifymember");
			modelAndView.setViewName("common/msg");
			
		}
		
		
		return modelAndView;
	}
	
	// 회원 정보 수정
	@PostMapping("/admin/modifyupdate")
	public ModelAndView update(ModelAndView modelAndView,  @RequestParam int no, 
			@RequestParam String userPwd, @RequestParam String userId, @RequestParam String userName,
			@RequestParam int userPoint, @RequestParam String userGrade, @RequestParam String userBirth,
			@RequestParam String phone, @RequestParam String email, @RequestParam String address, @RequestParam String address1) {
			
			AdminMember member = null;
			int result = 0;
			
			log.info("no : {}", no);
			log.info("AdminMember 회원 정보 수정 파라미터");
			log.info("{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}", new Object[] {no, userPwd, userId, userName, userPoint, userGrade, userBirth, phone, email, address, address1});
		
			member = service.modifyMemberByNo(no);
			
			member.setPassword(userPwd);
			member.setId(userId);
			member.setName(userName);
			member.setPoint(userPoint);
			member.setRole(userGrade);
			member.setBirth(userBirth);
			member.setPhone(phone);
			member.setEmail(email);
			member.setAddress(address);
			member.setDetailAdd(address1);
			
			result = service.save(member);
			
			if(result > 0) {
				
				modelAndView.addObject("msg", "회원정보수정을 성공 하였습니다.");
				modelAndView.addObject("location", "/admin/modifymember?no=" + no);
			} else {
				modelAndView.addObject("msg", "회원정보수정을 실패 하였습니다.");
				modelAndView.addObject("location", "/admin/modifymember?no=" + no);
			}
			
			modelAndView.setViewName("common/msg");
		
		return modelAndView;
	}
	
	
	
}
