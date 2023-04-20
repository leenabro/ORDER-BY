package com.ta.orderby.payment.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ta.orderby.payment.model.vo.Coupon;

@Mapper
public interface PaymentMapper {
	
	List<Coupon> findCouponByMemberNo(int memberNo);
	
}