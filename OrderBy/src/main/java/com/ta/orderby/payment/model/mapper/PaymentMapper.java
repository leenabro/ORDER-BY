package com.ta.orderby.payment.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;

import com.ta.orderby.payment.model.vo.Coupon;
import com.ta.orderby.payment.model.vo.Payment;
import com.ta.orderby.payment.model.vo.Reservation;

@Mapper
public interface PaymentMapper {
	
	List<Coupon> findCouponByMemberNo(int memberNo);

	int insertPayment(Payment payment);

	Payment selectPaymentByUid(String uid);

	int insertReservation(Reservation reservation);

	Reservation findReservationByUid(String uid);
	
	int selecPaymentCount();

	List<Payment> selectAll(RowBounds bounds);

	
}
