package com.ta.orderby.rent.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.ta.orderby.rent.model.vo.Store;

@Mapper
public interface StoreMapper {


	List<Store> selectStoreAll();


	List<Store> selectStoreByLocation(String location);

}
