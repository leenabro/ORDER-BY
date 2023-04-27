package com.ta.orderby.payment.model.service;

import java.util.List;

import com.ta.orderby.common.util.PageInfo;
import com.ta.orderby.payment.model.vo.Coupon;
import com.ta.orderby.payment.model.vo.Payment;
import com.ta.orderby.payment.model.vo.Reservation;

public interface PaymentService {

	List<Coupon> findCouponByMemberNo(int i);

	int save(Payment payment);

	Payment selectPaymentByUid(String uid);

	int insertReservation(Reservation reservation);

	Reservation findReservationByUid(String uid);

	int getpaymentCount();

	List<Payment> getPaymentList(PageInfo pageInfo);
}
