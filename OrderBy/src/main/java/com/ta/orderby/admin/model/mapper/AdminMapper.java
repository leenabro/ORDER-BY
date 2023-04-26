package com.ta.orderby.admin.model.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.ta.orderby.admin.model.vo.AdminMember;
import com.ta.orderby.admin.model.vo.AdminPayment;
import com.ta.orderby.admin.model.vo.AdminPopqna;
import com.ta.orderby.admin.model.vo.AdminProductCar;
import com.ta.orderby.admin.model.vo.AdminProductMotocycle;
import com.ta.orderby.admin.model.vo.AdminStore;
import com.ta.orderby.payment.model.vo.Coupon;

@Mapper
public interface AdminMapper {

	int selectAdminMemberCount();
	
	List<AdminMember> selectAll(RowBounds rowbounds);
	
	AdminMember selectAdminMemberByNo(@Param("no") int no);
	
	int updateMemberStatus(@Param("no") int no, @Param("status") String status);
	
	int updateAdminMember(AdminMember member);
	
	int selectPopqnaCount();
	
	List<AdminPopqna> popqnaselectAll(RowBounds rowbounds);
	
	AdminPopqna selectPopqnaByNo(@Param("no") int no);
	
	int checkPopqnaStatus(@Param("no") int no, @Param("status") String status);

	int selectAdminCarCount();
	
	int selectAdminMotocycleCount();
	
	List<AdminProductCar> productcarselectAll(RowBounds rowbounds);
	
	List<AdminProductMotocycle> productmotocylceselectAll(RowBounds rowbounds);

	AdminProductCar selectCarProductNo(@Param("no") int no);

	AdminProductMotocycle selectMotoProductNo(@Param("no") int no);

	int updateCarproductStatus(@Param("no") int no, @Param("status") String status);

	int updateMotoproductStatus(@Param("no") int no, @Param("status") String status);

	int updateProductCar(AdminProductCar procar);

	int updateProductMotocycle(AdminProductMotocycle promoto);

	int insertProductCar(@Param("procar")AdminProductCar procar);

	int insertProductMotocycle(@Param("promoto")AdminProductMotocycle promoto);

	int selectStoreCount();

	List<AdminStore> storeselectAll(RowBounds rowbounds);

	AdminStore selectStoreByNo(@Param("no") int no);

	int updateStoreStatus(@Param("no")int no, @Param("status") String string);

	int activateStoreStatus(@Param("no")int no, @Param("status") String string);

	int updateStore(AdminStore store);

	int activeMotoStatus(@Param("no")int no, @Param("status") String string);

	int activeCarStatus(@Param("no")int no, @Param("status") String string);

	int activeMemberStatus(@Param("no")int no, @Param("status") String string);

	int insertStore(AdminStore store);

	int allproductCount();

	List<AdminProductMotocycle> productmotodiscylceselectAll(RowBounds rowbounds);

	List<AdminProductCar> productcardisselectAll(RowBounds rowbounds);

	int selectreservationCount();

	List<AdminPayment> reservationSelectAll(RowBounds rowbounds);

	AdminPayment selectAdminPaymentByNo(@Param("no") int no);

	int updatePayment(@Param("no")int no, @Param("status") String string);

	int updatePoint(@Param("point")double point, @Param("mno")int mno);

	int findSnoCar(@Param("no") int no);

	int findstoreNo(@Param("position")String position);

	int findpfileNo(@Param("name")String name);

	int findstoreMotoNo(@Param("position")String position);

	int findpfileMotoNo(@Param("name")String name);

	List<Coupon> findAllCoupon();

	int insertCoupon(Coupon coupon);

	List<Coupon> findCouponIssueByCoNo(int coNumber);




}







	

