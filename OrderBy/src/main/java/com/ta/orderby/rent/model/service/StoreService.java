package com.ta.orderby.rent.model.service;

import java.util.List;

import com.ta.orderby.rent.model.vo.Store;

public interface StoreService {

	List<Store> getStoreList();


	List<Store> finStoredByLocation(String location);

}
