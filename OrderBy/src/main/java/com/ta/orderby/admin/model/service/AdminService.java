package com.ta.orderby.admin.model.service;

import java.util.List;


import com.ta.orderby.admin.model.vo.AdminMember;
import com.ta.orderby.admin.model.vo.AdminPayment;
import com.ta.orderby.admin.model.vo.AdminPopqna;
import com.ta.orderby.admin.model.vo.AdminProductCar;
import com.ta.orderby.admin.model.vo.AdminProductMotocycle;
import com.ta.orderby.admin.model.vo.AdminStore;
import com.ta.orderby.common.util.PageInfo;

public interface AdminService {

	int getAdminMemberCount();

	List<AdminMember> getAdminMemberCount(PageInfo pageInfo);

	AdminMember modifyMemberByNo(int no);

	int delete(int no);

	int save(AdminMember member);

	int getPopqnaCount();

	List<AdminPopqna> getPopqnaCount(PageInfo pageInfo);

	AdminPopqna findPopqnaByNo(int no);

	int popcheck(int no);

	int getMotocylceCount();

	int getCarCount();

	List<AdminProductCar> getCarCount(PageInfo pageInfo);
	
	List<AdminProductMotocycle> getMotocylceCount(PageInfo pageInfo);

	AdminProductCar findCarProduct(int no);

	AdminProductMotocycle findMotoProduct(int no);

	int cardelete(int no);

	int motodelete(int no);

	int save(AdminProductCar procar);

	int save(AdminProductMotocycle promoto);

	int getStoreCount();

	List<AdminStore> getStoreCount(PageInfo pageInfo);

	AdminStore findStore(int no);

	int storedelete(int no);

	int storeactivate(int no);

	AdminStore findStoreProduct(int no);

	int save(AdminStore store);

	int motoactive(int no);

	int caractive(int no);

	int active(int no);

	int allproductcount();

	List<AdminProductMotocycle> getdisMotocylceCount(PageInfo pageInfo);

	List<AdminProductCar> getdisCarCount(PageInfo pageInfo);

	List<AdminPayment> getAdminReservationCount(PageInfo pageInfo);

	int getAdminReservationCount();

	AdminPayment findPaymentByNo(int no);

	int paymentcancle(int no);

	int pricepoint(int point, int mno);












}
