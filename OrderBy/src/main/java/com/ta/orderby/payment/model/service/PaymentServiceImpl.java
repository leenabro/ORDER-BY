package com.ta.orderby.payment.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ta.orderby.payment.model.mapper.PaymentMapper;
import com.ta.orderby.payment.model.vo.Coupon;

@Service
public class PaymentServiceImpl implements PaymentService {
	
	@Autowired
	private PaymentMapper mapper;
	
	
	@Override
	public List<Coupon> findCouponByMemberNo(int memberNo) {
		
		return mapper.findCouponByMemberNo(memberNo);
	}

}
