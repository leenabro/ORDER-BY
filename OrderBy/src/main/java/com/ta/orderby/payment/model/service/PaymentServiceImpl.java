package com.ta.orderby.payment.model.service;

import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ta.orderby.common.util.PageInfo;
import com.ta.orderby.payment.model.mapper.PaymentMapper;
import com.ta.orderby.payment.model.vo.Coupon;
import com.ta.orderby.payment.model.vo.Payment;
import com.ta.orderby.payment.model.vo.Reservation;

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


	@Override
	public int insertReservation(Reservation reservation) {

		return mapper.insertReservation(reservation);
	}


	@Override
	public Reservation findReservationByUid(String uid) {

		return mapper.findReservationByUid(uid);
	}

	@Override
	public int getpaymentCount() {
		return mapper.selecPaymentCount();
	}




	@Override
	public List<Payment> getPaymentList(PageInfo pageInfo) {
		int limit = pageInfo.getListLimit();
	    int offset = (pageInfo.getCurrentPage() - 1) * limit;
	    RowBounds rowBounds = new RowBounds(offset, limit);
	    
		return mapper.selectAll(rowBounds);
	}

}
