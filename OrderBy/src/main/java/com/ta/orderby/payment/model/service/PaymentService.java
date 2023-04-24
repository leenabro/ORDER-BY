package com.ta.orderby.payment.model.service;

import java.util.List;

import com.ta.orderby.payment.model.vo.Coupon;
import com.ta.orderby.payment.model.vo.Payment;

public interface PaymentService {

	List<Coupon> findCouponByMemberNo(int i);

	int save(Payment payment);

}
