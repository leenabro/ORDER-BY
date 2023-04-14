package com.ta.orderby.admin.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ta.orderby.admin.model.mapper.AdminMapper;
import com.ta.orderby.admin.model.vo.AdminMember;
import com.ta.orderby.admin.model.vo.AdminPopqna;
import com.ta.orderby.admin.model.vo.AdminProductCar;
import com.ta.orderby.admin.model.vo.AdminProductMotocycle;
import com.ta.orderby.common.util.PageInfo;

@Service
public class AdminServiceImpl  implements AdminService{
	
	@Autowired
	private AdminMapper mapper;
	
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
		
		return mapper.checkPopqnaStatus(no, "Y");
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
		
		result = mapper.updateProductCar(procar);
		
		return result;
	}

	@Override
	public int save(AdminProductMotocycle promoto) {
		int result = 0;
		
		result = mapper.updateProductMotocycle(promoto);
		
		return result;
	}


}
