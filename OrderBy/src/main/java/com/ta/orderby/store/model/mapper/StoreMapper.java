package com.ta.orderby.store.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ta.orderby.store.model.vo.Store;

@Mapper
public interface StoreMapper {


	List<Store> selectStoreAll();


	List<Store> selectStoreByLocation(String location);


	Store findStoreByNo(int storeNo);


	Store findStoreByName(String storeName);

}
