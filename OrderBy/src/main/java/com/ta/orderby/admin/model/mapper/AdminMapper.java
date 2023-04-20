package com.ta.orderby.admin.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.RowBounds;

import com.ta.orderby.admin.model.vo.AdminMember;
import com.ta.orderby.admin.model.vo.AdminPopqna;
import com.ta.orderby.admin.model.vo.AdminProductCar;
import com.ta.orderby.admin.model.vo.AdminProductMotocycle;

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
	
}
