package com.ta.orderby.admin.model.service;

import java.util.List;


import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ta.orderby.admin.model.mapper.AdminMapper;
import com.ta.orderby.admin.model.vo.AdminMember;
import com.ta.orderby.admin.model.vo.AdminPayment;
import com.ta.orderby.admin.model.vo.AdminPopqna;
import com.ta.orderby.admin.model.vo.AdminProductCar;
import com.ta.orderby.admin.model.vo.AdminProductMotocycle;
import com.ta.orderby.admin.model.vo.AdminStore;
import com.ta.orderby.common.util.PageInfo;
import com.ta.orderby.payment.model.vo.Coupon;

@Service
public class AdminServiceImpl  implements AdminService{
	
	@Autowired
	private AdminMapper mapper;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Override
	public int getAdminMemberCount() {
		
		return mapper.selectAdminMemberCount();
	}

	@Override
	public List<AdminMember> getAdminMemberCount(PageInfo pageInfo) {
		int limit = pageInfo.getListLimit();
		int offset = (pageInfo.getCurrentPage() - 1) * limit;
		RowBounds rowbounds = new RowBounds(offset, limit);
		
		return mapper.selectAll(rowbounds);
	}

	@Override
	public AdminMember modifyMemberByNo(int no) {
		
		
		
		return mapper.selectAdminMemberByNo(no);
	}

	@Override
	@Transactional
	public int delete(int no) {
		
		return mapper.updateMemberStatus(no, "N");
	}

	@Override
	@Transactional
	public int save(AdminMember member) {
		int result = 0;
		
		member.setPassword(passwordEncoder.encode(member.getPassword()));
		
		result = mapper.updateAdminMember(member);
		
		return result;
	}

	@Override
	public int getPopqnaCount() {
		
		return mapper.selectPopqnaCount();
	}

	@Override
	public List<AdminPopqna> getPopqnaCount(PageInfo pageInfo) {
		int limit = pageInfo.getListLimit();
		int offset = (pageInfo.getCurrentPage() - 1) * limit;
		RowBounds rowbounds = new RowBounds(offset, limit);
		
		return mapper.popqnaselectAll(rowbounds);
	}

	@Override
	public AdminPopqna findPopqnaByNo(int no) {

		return mapper.selectPopqnaByNo(no);
	}

	@Override
	public int popcheck(int no) {
		
		return mapper.checkPopqnaStatus(no, "답변완료");
	}

	@Override
	public int getMotocylceCount() {
		return mapper.selectAdminMotocycleCount();
	}

	@Override
	public int getCarCount() {
		return mapper.selectAdminMotocycleCount();
	}

	@Override
	public List<AdminProductCar> getCarCount(PageInfo pageInfo) {
		int limit = pageInfo.getListLimit();
		int offset = (pageInfo.getCurrentPage() - 1) * limit;
		RowBounds rowbounds = new RowBounds(offset, limit);
		
		return mapper.productcarselectAll(rowbounds);
	}

	@Override
	public List<AdminProductMotocycle> getMotocylceCount(PageInfo pageInfo) {
		int limit = pageInfo.getListLimit();
		int offset = (pageInfo.getCurrentPage() - 1) * limit;
		RowBounds rowbounds = new RowBounds(offset, limit);
		
		return mapper.productmotocylceselectAll(rowbounds);
	}

	@Override
	public AdminProductCar findCarProduct(int no) {
		
		return mapper.selectCarProductNo(no);
	}

	@Override
	public AdminProductMotocycle findMotoProduct(int no) {
		
		return mapper.selectMotoProductNo(no);
	}

	@Override
	@Transactional
	public int cardelete(int no) {

		return mapper.updateCarproductStatus(no, "N");
	}

	@Override
	public int motodelete(int no) {
		
		return mapper.updateMotoproductStatus(no, "N");
	}

	@Override
	@Transactional
	public int save(AdminProductCar procar) {
		int result = 0;
		
		if(procar.getNo() > 0) {
			// 수정
			result = mapper.updateProductCar(procar);
		} else {
			// 등록
			result = mapper.insertProductCar(procar);
		}
		
		
		return result;
	}

	@Override
	@Transactional
	public int save(AdminProductMotocycle promoto) {
		int result = 0;
		
		if(promoto.getNo() > 0) {
			// 수정
			result = mapper.updateProductMotocycle(promoto);
		} else {
			// 등록
			result = mapper.insertProductMotocycle(promoto);
		}
		
		
		return result;
	}

	@Override
	public int getStoreCount() {
		
		return mapper.selectStoreCount();
	}

	@Override
	public List<AdminStore> getStoreCount(PageInfo pageInfo) {
		int limit = pageInfo.getListLimit();
		int offset = (pageInfo.getCurrentPage() - 1) * limit;
		RowBounds rowbounds = new RowBounds(offset, limit);
		
		return mapper.storeselectAll(rowbounds);
	}

	@Override
	public AdminStore findStore(int no) {
		return mapper.selectStoreByNo(no);
	}

	@Override
	public int storedelete(int no) {
		
		return mapper.updateStoreStatus(no, "N");
	}

	@Override
	public int storeactivate(int no) {
		
		return mapper.activateStoreStatus(no, "Y");
	}

	@Override
	public AdminStore findStoreProduct(int no) {
		
		return mapper.selectStoreByNo(no);
	}

	@Override
	public int save(AdminStore store) {
		int result = 0;
		
		if(store.getNo() > 0) {
			// 수정
			result = mapper.updateStore(store);
		} else {
			// 등록
			result = mapper.insertStore(store);
		}
		
		
		return result;
	}

	@Override
	public int motoactive(int no) {
		
		return mapper.activeMotoStatus(no, "Y");
	}

	@Override
	public int caractive(int no) {
		
		return mapper.activeCarStatus(no, "Y");
	}

	@Override
	public int active(int no) {
		
		return mapper.activeMemberStatus(no, "Y");
	}

	@Override
	public int allproductcount() {
		
		return mapper.allproductCount();
	}

	@Override
	public List<AdminProductMotocycle> getdisMotocylceCount(PageInfo pageInfo) {
		int limit = pageInfo.getListLimit();
		int offset = (pageInfo.getCurrentPage() - 1) * limit;
		RowBounds rowbounds = new RowBounds(offset, limit);
		
		return mapper.productmotodiscylceselectAll(rowbounds);
	}

	@Override
	public List<AdminProductCar> getdisCarCount(PageInfo pageInfo) {
		int limit = pageInfo.getListLimit();
		int offset = (pageInfo.getCurrentPage() - 1) * limit;
		RowBounds rowbounds = new RowBounds(offset, limit);
		
		return mapper.productcardisselectAll(rowbounds);
	}

	@Override
	public List<AdminPayment> getAdminReservationCount(PageInfo pageInfo) {
		int limit = pageInfo.getListLimit();
		int offset = (pageInfo.getCurrentPage() - 1) * limit;
		RowBounds rowbounds = new RowBounds(offset, limit);
		
		return mapper.reservationSelectAll(rowbounds);
	}

	@Override
	public int getAdminReservationCount() {
		
		return mapper.selectreservationCount();
	}

	@Override
	public AdminPayment findPaymentByNo(int no) {
		
		return mapper.selectAdminPaymentByNo(no);
	}

	@Override
	public int paymentcancle(int no) {

		return mapper.updatePayment(no, "N");
	}

	@Override
	public int pricepoint(double point, int mno) {
		
		return mapper.updatePoint(point, mno);
	}

	@Override
	public int findStoreNo(String position) {
		
		return mapper.findstoreNo(position);
	}

	@Override
	public int findPfileNo(String name) {
		
		return mapper.findpfileNo(name);
	}

	@Override
	public int findStoreMotoNo(String position) {
		
		return mapper.findstoreMotoNo(position);
	}

	@Override
	public int findPfileMotoNo(String name) {
		
		return mapper.findpfileMotoNo(name);
	}

	@Override
	public List<Coupon> findAllCoupon() {

		return mapper.findAllCoupon();
	}

	@Override
	public int insertCoupon(Coupon coupon) {
		
		return mapper.insertCoupon(coupon);
	}

	@Override
	public List<Coupon> findCouponIssueByCoNo(int coNumber) {

		return mapper.findCouponIssueByCoNo(coNumber);
	}

























}
