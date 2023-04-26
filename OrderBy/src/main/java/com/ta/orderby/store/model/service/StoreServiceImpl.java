package com.ta.orderby.store.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ta.orderby.store.model.mapper.StoreMapper;
import com.ta.orderby.store.model.vo.Store;

@Service
public class StoreServiceImpl implements StoreService{
	@Autowired
	private StoreMapper storemapper;

	@Override
	public List<Store> getStoreList() {
		return storemapper.selectStoreAll();
	}

	@Override
	public List<Store> finStoredByLocation(String location) {
		return storemapper.selectStoreByLocation(location);
	}

	@Override
	public Store findStoreByNo(int storeNo) {

		return storemapper.findStoreByNo(storeNo);
	}

	@Override
	public Store findStoreByName(String storeName) {

		return storemapper.findStoreByName(storeName);
	}

	
}
