package com.ta.orderby.payment.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ta.orderby.payment.model.mapper.PaymentMapper;
import com.ta.orderby.payment.model.vo.Coupon;
import com.ta.orderby.payment.model.vo.Payment;

@Service
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	private PaymentMapper mapper;
	
	
	@Override
	public List<Coupon> findCouponByMemberNo(int memberNo) {
		
		return mapper.findCouponByMemberNo(memberNo);
	}


	@Override
	public int save(Payment payment) {
		int result = 0;
		
		result = mapper.insertPayment(payment);
		
		return result;
	}


	@Override
	public Payment selectPaymentByUid(String uid) {

		return mapper.selectPaymentByUid(uid);
	}

}
