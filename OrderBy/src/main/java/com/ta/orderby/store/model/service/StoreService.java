package com.ta.orderby.store.model.service;

import java.util.List;

import com.ta.orderby.store.model.vo.Store;

public interface StoreService {

	List<Store> getStoreList();


	List<Store> finStoredByLocation(String location);

}
