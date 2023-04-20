package com.ta.orderby.payment.model.service;

import java.util.List;

import com.ta.orderby.payment.model.vo.Coupon;

public interface PaymentService {

	List<Coupon> findCouponByMemberNo(int i);

}
