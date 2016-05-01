package com.justzqh.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.justzqh.mapper.ItemsMapperCustom;
import com.justzqh.po.ItemsCustom;
import com.justzqh.util.Page;

/**
 * 
* @Title: ItemServiceImp.java
* @author: zqh
* @date 2016-5-1 ����3:47:13
* @Description:��Ʒ��Ϣserviceʵ����
 */
public class ItemServiceImp implements ItemService{

	@Autowired
	private ItemsMapperCustom itemsMapperCustom;
	
	
	public long getAllItemsCount() {
		// TODO Auto-generated method stub
		long itemsCount = itemsMapperCustom.getAllItemsCount(); 
		return itemsCount;
	}


	public List<ItemsCustom> getItems(Page page) {
		// TODO Auto-generated method stub
		List<ItemsCustom> items = itemsMapperCustom.getItems(page);
		return items;
	}

}
